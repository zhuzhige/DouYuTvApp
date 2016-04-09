//
//  DanmuSock.m
//  DGCars
//
//  Created by 米 on 16/4/8.
//  Copyright © 2016年 米. All rights reserved.
//

#import "DanmuSock.h"
#import "BarrageModel.h"

@implementation DanmuSock

- (void)dg_connectSocketHost
{
    self.socket = [[GCDAsyncSocket alloc]initWithDelegate:self delegateQueue:dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)];
    NSError *err = nil;
    [self.socket connectToHost:_barrage.host onPort:_barrage.port error:&err];
    if ([_delegate respondsToSelector:@selector(dg_SingetonError:)]) {
        [_delegate dg_SingetonError:err];
    }
}

- (void)dg_cutOffSocket
{
    [_socketTimer invalidate];
    [_socket disconnect];
}

#pragma mark <GCDAsyncSocketDelegate>

//successconnect
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port
{
    NSLog(@"SUCCESS ------ > ConnectTo%@:%d",host,port);
    NSData *data = [self pack_String:[NSString stringWithFormat:@"type@=loginreq/roomid@=%@/",_barrage.roomID]];
    [_socket writeData:data withTimeout:30 tag:0];
    [_socket readDataWithTimeout:30 tag:0];
}

- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
    NSString * string = [self unpack_String:data];
//    NSLog(@"%ld\r\n%@",tag,string);
    if (tag == 0) {
        //第一次登入
        //入组/心跳
        NSData *join_data = [self pack_String:[NSString stringWithFormat:@"type@=joingroup/rid@=%@/gid@=-9999",_barrage.roomID]];
        [_socket writeData:join_data withTimeout:30 tag:1];
        dispatch_sync(dispatch_get_main_queue(), ^{
            _socketTimer = [NSTimer scheduledTimerWithTimeInterval:30.0 target:self selector:@selector(heartbeat) userInfo:nil repeats:YES];
            [_socketTimer fire];
        });
    }else if (tag == 2) {
        NSLog(@"2 心跳返回消息");
    }
    //通知代理
    if ([_delegate respondsToSelector:@selector(dg_ReceivesMessage:)]) {
        [_delegate dg_ReceivesMessage:string];
    }
    
    [_socket readDataWithTimeout:-1 tag:3];
    
}

//断开连接
- (void)socketDidDisconnect:(GCDAsyncSocket *)sock withError:(NSError *)err
{
    NSLog(@"断开连接");
}

- (void)heartbeat
{
    NSLog(@"心跳");
    NSString *keepLive =[NSString stringWithFormat: @"type@=keeplive/tick@=%@/",[NSString stringWithFormat:@"%.0f",[[NSDate date] timeIntervalSince1970]]];
    NSData *postKLData = [self pack_String:keepLive];
    [_socket writeData:postKLData withTimeout:30 tag:2];
    [_socket readDataWithTimeout:30 tag:2];

}

//Unpack
- (NSString *)unpack_String:(NSData *)data
{   //网络数据不能保证完整性,做try处理
    NSString *retstr = [[NSString alloc]init];
    @try {
        pack_H pack;
        [data getBytes:&pack length:sizeof(pack)];
        retstr = [[NSString alloc]initWithData:[data subdataWithRange:NSMakeRange(sizeof(pack), pack.data_len - 9)] encoding:NSUTF8StringEncoding];
    }
    @catch (NSException *exception) {
        NSLog(@"misspack");
    }
    @finally {
    }
            return retstr;
}

//打包
- (NSData *)pack_String:(NSString *)string
{
    char end = '\0';          //结束
    pack_H Pack;
    Pack.data_len = (int)string.length + 9;
    Pack.data_len2 = Pack.data_len;
    Pack.msg_type = 689;
    Pack.encrypt = 0;
    Pack.reserve = 0;
    
    NSMutableData *postData = [[NSMutableData alloc]initWithBytes:&Pack length:sizeof(Pack)];
    [postData appendData:[string dataUsingEncoding:NSUTF8StringEncoding]];
    [postData appendBytes:&end length:sizeof(end)];
    return postData;
}



@end
