//
//  DanmuSock.h
//  DGCars
//
//  Created by 米 on 16/4/8.
//  Copyright © 2016年 米. All rights reserved.
//



#import <Foundation/Foundation.h>
#import <GCDAsyncSocket.h>
@class BarrageModel;

//pack头结构体
typedef struct {
    int data_len;   //size
    int data_len2;  //size_two
    short msg_type; //msg
    char encrypt;   //enc
    char reserve;   //res
}pack_H;

@protocol DanmuSockDelegate<NSObject>
@optional
- (void) dg_SingetonError:(NSError *)error;
- (void) dg_ReceivesMessage:(NSString *)message;

@end


@interface DanmuSock : NSObject<GCDAsyncSocketDelegate>
@property(nonatomic, strong)GCDAsyncSocket *socket;
@property(nonatomic, strong)NSTimer *socketTimer;
@property(nonatomic, strong)BarrageModel *barrage;
@property(nonatomic,weak)id<DanmuSockDelegate> delegate;

/**
 *  连接弹幕服务器
 */
- (void)dg_connectSocketHost;
/**
 *  断开弹幕服务器
 */
- (void)dg_cutOffSocket;


@end
