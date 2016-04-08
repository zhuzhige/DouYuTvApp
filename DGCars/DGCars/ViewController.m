//
//  ViewController.m
//  DGCars
//
//  Created by 米 on 16/4/7.
//  Copyright © 2016年 米. All rights reserved.
//

#import "ViewController.h"
#import "DanmuSock.h"
#import "BarrageModel.h"
#import "chatmsgModel.h"
#import <MJExtension.h>

@interface ViewController ()<DanmuSockDelegate>

@property(nonatomic, strong)DanmuSock *socket;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    BarrageModel * barr = [[BarrageModel alloc]init];
    barr.host = @"openbarrage.douyutv.com";
    barr.port = 8601;
    barr.roomID = @"56040";
    
    _socket = [[DanmuSock alloc]init];
    _socket.delegate = self;

    _socket.barrage = barr;
    [_socket dg_connectSocketHost];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <DanmuSockDelegate>

- (void)dg_SingetonError:(NSError *)error
{
    
}

- (void)dg_ReceivesMessage:(NSString *)message
{
        NSArray *array = [message componentsSeparatedByString:@"/"];
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        for (NSString *str in array) {
            if ([str rangeOfString:@"="].location !=NSNotFound) {
                NSString *temp = [[str stringByReplacingOccurrencesOfString:@"@A" withString:@"@"] stringByReplacingOccurrencesOfString:@"@S" withString:@"/"];
                NSArray * arr = [temp componentsSeparatedByString:@"@="];
                NSLog(@"%@",arr);
                if (arr.count == 2) {
                    NSString * key = arr[0];
                    NSString * value = arr[1];
                    dict[key] = value;
                }
            }
        }
        NSLog(@"%@",dict);
}




- (NSString *)regularMatchString:(NSString *)string WithPattern:(NSString *)pattern
{
    NSError * err = nil;
    
    NSRegularExpression * re = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&err];
    if (!re) {
                NSLog(@"%@",[err localizedDescription]);
        return @"";
    }
    //正则匹配
    NSArray *acttArray = [re matchesInString:string options:NSMatchingReportProgress range:NSMakeRange(0, string.length)];
    NSMutableString * retstring = [NSMutableString string];
    for (NSTextCheckingResult *match in acttArray) {
        //获取数组中的元素中得到的范围
        NSRange range = [match range];
        NSString *subStr = [string substringWithRange:range];
        //        NSLog(@"%@",subStr);
        [retstring appendString:subStr];
    }
    return retstring;
}

@end
