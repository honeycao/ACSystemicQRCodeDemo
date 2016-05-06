//
//  SystemFunctions.h
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//  系统功能

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SystemFunctions : NSObject

/**
 *是否开启系统照明灯
 *@param   opened   是否打开
 *@return  void
 */
+ (void)openLight:(BOOL)opened;

/**
 *是否开启系统震动和声音
 *@param   shaked   是否开启震动
 *@param   sounding   是否开启声音
 *@return  void
 */
+ (void)openShake:(BOOL)shaked Sound:(BOOL)sounding;

/**
 *调用系统浏览器打开扫描信息
 *@param   message   扫码信息
 *@param   success   成功用浏览器打开后返回的参数
 *@param   failure   用浏览器打开失败后返回的error参数
 *@return  void
 */
+ (void)showInSafariWithURLMessage:(NSString *)message Success:(void (^)(NSString *token))success Failure:(void (^)(NSError *error))failure;

@end
