//
//  UIView+Frame.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

/**
 设置新的Origin.x
 @param   x  新设置的值
 @return  nil
 */
- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

/**
 @param   contents   返回一个Origin.x
 */
- (CGFloat)x
{
    return self.frame.origin.x;
}

/**
 @param   contents   设置新的Origin.Y
 */
- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

/**
 @param   contents   返回一个Origin.y
 */
- (CGFloat)y
{
    return self.frame.origin.y;
}

/**
 @param   contents   设置新的Origin
 */
- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

/**
 @param   contents   返回一个Origin
 */
- (CGPoint)origin
{
    return self.frame.origin;
}

/**
 @param   contents   设置新的Size.Width
 */
- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

/**
 @param   contents   返回一个Size.Width
 */
- (CGFloat)width
{
    return self.frame.size.width;
}

/**
 @param   contents   设置新的Size.Height
 */
- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

/**
 @param   contents   返回一个Size.Height
 */
- (CGFloat)height
{
    return self.frame.size.height;
}

/**
 @param   contents   设置新的Size
 */
- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

/**
 @param   contents   返回一个Size
 */
- (CGSize)size
{
    return self.frame.size;
}

@end
