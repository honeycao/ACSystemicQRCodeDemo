//
//  HCScanQRViewController.h
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef void(^successBlock)(NSString *QRCodeInfo);
@interface HCScanQRViewController : UIViewController

@property (strong, nonatomic) successBlock block;

/**
 *是否需要将扫码得到的信息进行回传并展示
 *@param   默认值   Default is NO
 */
@property (assign, nonatomic) BOOL showQRCodeInfo;


/**
 *将扫码成功后获得的 二维码/条形码 信息进行回传
 */
- (void)successfulGetQRCodeInfo:(successBlock)success;

@end
