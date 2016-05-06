//
//  HCCreateQRCode.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/5.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "HCCreateQRCode.h"

@implementation HCCreateQRCode

+ (UIImage *)createQRCodeWithString:(NSString *)string ViewController:(UIViewController *)vc{
    if ([string isEqualToString:@""]) {
        UIAlertController *alertCtrl = [UIAlertController alertControllerWithTitle:@"提示" message:@"二维码生成信息不能为空" preferredStyle:UIAlertControllerStyleAlert];
        [alertCtrl addAction:[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleCancel handler:nil]];
        [vc presentViewController:alertCtrl animated:YES completion:nil];
        return nil;
    }
    
    //二维码滤镜
    CIFilter *filter=[CIFilter filterWithName:@"CIQRCodeGenerator"];
    //恢复滤镜的默认属性
    [filter setDefaults];
    //将字符串转换成NSData
    NSData *data=[string dataUsingEncoding:NSUTF8StringEncoding];
    //通过KVO设置滤镜inputmessage数据
    [filter setValue:data forKey:@"inputMessage"];
    //获得滤镜输出的图像
    CIImage *outputImage = [filter outputImage];
    //将CIImage转换成UIImage,并放大显示
    UIImage *image = [UIImage new];
    HCCreateQRCode *hcCode = [HCCreateQRCode new];
    image = [hcCode createNonInterpolatedUIImageFormCIImage:outputImage withSize:200];
    return image;
}

//改变二维码大小
- (UIImage *)createNonInterpolatedUIImageFormCIImage:(CIImage *)image withSize:(CGFloat) size {
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    // 创建bitmap;
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    // 保存bitmap到图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    return [UIImage imageWithCGImage:scaledImage];
}

@end
