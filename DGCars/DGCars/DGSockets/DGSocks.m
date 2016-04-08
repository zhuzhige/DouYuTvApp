//
//  DGSocks.m
//  DGCars
//
//  Created by 米 on 16/4/7.
//  Copyright © 2016年 米. All rights reserved.
//  

#import "DGSocks.h"
#import <GCDAsyncSocket.h>


@implementation DGSocks



- (void)dg_connectSocketHostWithIP:(NSString *)ip andPort:(UInt16)port
{
    self.ip = ip;
    self.port = port;
    self.socket = [[GCDAsyncSocket alloc]initWithDelegate:self delegateQueue:dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)];
    NSError *error = nil;
    [self.socket connectToHost:self.ip onPort:self.port withTimeout:30 error:&error];
    if (error) {
        [self dg_SingetonError:error];
    }
}

- (void)dg_cutOffSocket
{


}

- (NSData *)packToDataWith:(NSString *)string
{
    NSData * data = [string dataUsingEncoding:NSUTF8StringEncoding];
    dyPostPack.size = (int)string.length + 9;
    dyPostPack.size2 = dyPostPack.size;
    dyPostPack.postCode = dyPostCode;
    NSMutableData *postDate = [NSMutableData dataWithBytes:&dyPostPack length:sizeof(dyPostPack)];
    [postDate appendData:data];
    [postDate appendBytes:&dyEnd length:1];
    return postDate;
}

- (void)dg_SingetonError:(NSError *)error
{
    NSLog(@"%@",error.localizedDescription);

}

#pragma mark <GCDAsyncSocketDelegate>

//- (dispatch_queue_t)newSocketQueueForConnectionFromAddress:(NSData *)address onSocket:(GCDAsyncSocket *)sock;

//接受新的sock连接
//- (void)socket:(GCDAsyncSocket *)sock didAcceptNewSocket:(GCDAsyncSocket *)newSocket;
//
//  连接host
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port
{
    NSLog(@"%@连接%@服务器%d成功!",sock,host,port);
    /*
     游客登陆信息
     type@=loginreq/username@=visitor13227520/password@=1234567890123456/roomid@=213116/
     username:
     roomid:
     加入弹幕组
     type@=joingroup/rid@=213116/gid@=1/
     */
    NSString *loginDate = [NSString stringWithFormat:@"type@=loginreq/roomid@=17349/"];
    NSData *login = [self packToDataWith:loginDate];
    NSLog(@"%@",login);
    [self.socket writeData:login withTimeout:30 tag:1];
}
//
//  连接url
//- (void)socket:(GCDAsyncSocket *)sock didConnectToUrl:(NSURL *)url;
//
//  读取返回信息
//- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag;
//
//
//- (void)socket:(GCDAsyncSocket *)sock didReadPartialDataOfLength:(NSUInteger)partialLength tag:(long)tag;
//
//  发送数据完毕
//- (void)socket:(GCDAsyncSocket *)sock didWriteDataWithTag:(long)tag;
//
//
//- (void)socket:(GCDAsyncSocket *)sock didWritePartialDataOfLength:(NSUInteger)partialLength tag:(long)tag;
//
//
//- (NSTimeInterval)socket:(GCDAsyncSocket *)sock shouldTimeoutReadWithTag:(long)tag
//                 elapsed:(NSTimeInterval)elapsed
//               bytesDone:(NSUInteger)length;
//
//
//- (NSTimeInterval)socket:(GCDAsyncSocket *)sock shouldTimeoutWriteWithTag:(long)tag
//                 elapsed:(NSTimeInterval)elapsed
//               bytesDone:(NSUInteger)length;
//
//
//- (void)socketDidCloseReadStream:(GCDAsyncSocket *)sock;
//
//
//- (void)socketDidDisconnect:(GCDAsyncSocket *)sock withError:(NSError *)err;
//
//
//- (void)socketDidSecure:(GCDAsyncSocket *)sock;
//
//
//- (void)socket:(GCDAsyncSocket *)sock didReceiveTrust:(SecTrustRef)trust
//completionHandler:(void (^)(BOOL shouldTrustPeer))completionHandler;
//

@end
