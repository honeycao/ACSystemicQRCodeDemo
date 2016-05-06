//
//  HCCreateQRCode.h
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/5.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HCCreateQRCode : NSObject

/**
 *根据传入的字符串来生成相应的二维码
 *@param   string     传入的字符串
 *@param   vc         调用方法时当前的Viewcontroller
 *@return  UIImage(二维码)
 */
+ (UIImage *)createQRCodeWithString:(NSString *)string ViewController:(UIViewController *)vc;

@end
