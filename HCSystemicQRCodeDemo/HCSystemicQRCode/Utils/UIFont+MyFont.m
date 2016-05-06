//
//  UIFont+MyFont.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "UIFont+MyFont.h"
#import "UIView+Frame.h"

@implementation UIFont (MyFont)

+ (UIFont *)FontWithSize:(CGFloat)size {
    CGFloat realSize = size * ratio;
    return [UIFont systemFontOfSize:realSize];
}

@end
