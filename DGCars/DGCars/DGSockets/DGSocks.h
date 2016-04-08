//
//  DGSocks.h
//  DGCars
//
//  Created by 米 on 16/4/7.
//  Copyright © 2016年 米. All rights reserved.
//  弹幕服务器的socks操作

/*
 斗鱼后台协议头
 1.消息长度,
 --(4字节小端整数,表示整条消息(包括自身)长度(字节数))
 2.消息长度
 --消息长度出现两遍,二者相同
 3.消息类型,
 --(2字节小端整数表示消息类型,取值如下)
 --客户端发送给服务器为
 ----689,
 ----0xb1,0x02,(小端,前后颠倒)
 --斗鱼返回的代码为
 ----690
 ----0xb2,0x02,
 4.数据部分,
 --使用独创格式,
 key @= value
 数组采用'/'
 字符'/'使用 '@S'转意
 字符'@'使用 '@A'转意
 
 (结尾必须为'\0');
 */

#import <Foundation/Foundation.h>
#import <GCDAsyncSocket.h>

struct dyPostPack {
    unsigned int size;
    unsigned int size2;
    unsigned int postCode;
}dyPostPack;

static const int kReadTimeOut = -1;
static const unsigned int kMaxBufferSize = 1024;
static const unsigned int dyPostCode = 0x2b1;
static const unsigned int dyEnd = 0;


@interface DGSocks : NSObject<GCDAsyncSocketDelegate>

@property(nonatomic, strong)GCDAsyncSocket *socket;
@property(nonatomic, copy)NSString *ip;
@property(nonatomic, assign)UInt16 port;

/**
 *  连接远程服务器
 */
- (void)dg_connectSocketHostWithIP:(NSString *)ip andPort:(UInt16)port;
/**
 *  断开服务器连接
 */
- (void)dg_cutOffSocket;


@end
