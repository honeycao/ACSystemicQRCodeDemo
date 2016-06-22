//
//  SystemFunctions.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "SystemFunctions.h"
#import "HCHeader.h"

@implementation SystemFunctions

+ (void)openLight:(BOOL)opened {
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType: AVMediaTypeVideo];
    if (![device hasTorch]) {
    } else {
        if (opened) {
            // 开启闪光灯
            if(device.torchMode != AVCaptureTorchModeOn ||
               device.flashMode != AVCaptureFlashModeOn){
                [device lockForConfiguration:nil];
                [device setTorchMode:AVCaptureTorchModeOn];
                [device setFlashMode:AVCaptureFlashModeOn];
                [device unlockForConfiguration];
            }
        } else {
            // 关闭闪光灯
            if(device.torchMode != AVCaptureTorchModeOff ||
               device.flashMode != AVCaptureFlashModeOff){
                [device lockForConfiguration:nil];
                [device setTorchMode:AVCaptureTorchModeOff];
                [device setFlashMode:AVCaptureFlashModeOff];
                [device unlockForConfiguration];
            }
        }
    }
}

+ (void)openShake:(BOOL)shaked Sound:(BOOL)sounding {
    if (shaked) {
        //开启系统震动
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    }
    if (sounding) {
        //设置自定义声音
        SystemSoundID soundID;
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:ringPath ofType:ringType]], &soundID);
        AudioServicesPlaySystemSound(soundID);
    }
}

+ (void)showInSafariWithURLMessage:(NSString *)message Success:(void (^)(NSString *token))success Failure:(void (^)(NSError *error))failure{
    NSString *newURl = [[self new] judgeSpecialURL:message];
    NSURL *url = [NSURL URLWithString:newURl];
    //由于对于qq、weixin、weibo等用下面方法判断是否能打开，总是返回NO，所以就分开写了
    if ([newURl isEqualToString:message]) {
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            success(@"成功跳转");
            [[UIApplication sharedApplication] openURL:url];
        }else{
            NSError *error;
            failure(error);
        }
    }else{
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (NSString *)judgeSpecialURL:(NSString *)urlString {
    NSString *newURL = nil;
    if ([urlString hasPrefix:@"http://qm.qq.com"]) {
        newURL = @"mqq://";
    }else if ([urlString hasPrefix:@"http://weixin.qq.com"]){
        newURL = @"weixin://";
    }else if ([urlString hasPrefix:@"http://weibo.cn"]){
        newURL = @"sinaweibo://";
    }else if ([urlString hasPrefix:@"https://qr.alipay.com"]){
        newURL = @"alipay://";
    }else{
        newURL = urlString;
    }
    return newURL;
}

@end
