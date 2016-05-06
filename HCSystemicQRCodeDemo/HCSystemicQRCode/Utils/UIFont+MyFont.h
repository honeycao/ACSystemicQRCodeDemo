//
//  UIFont+MyFont.h
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (MyFont)

/**
 *设置字体方法；根据不同手机型号，改变字体大小
 *@param   size   当前机型下字体大小
 *@return  适配的字体大小
 */
+ (UIFont *)FontWithSize:(CGFloat)size;

@end
