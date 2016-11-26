//
//  HCScanQRViewController.h
//
//  Created by Caoyq on 16/5/4.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^successBlock)(NSString *QRCodeInfo);

@interface HCScanQRViewController : UIViewController{
    
    successBlock block;
}

/**
 * navtgationItem.title (option)
 */
@property (nonatomic, strong) NSString *navigationTitle;

/**
 * hide album of rightBar ? default is No.
 */
@property (nonatomic, assign) BOOL hideAlbum;

/**
 *将扫码成功后获得的 二维码/条形码 信息进行回传
 */
- (void)successfulGetQRCodeInfo:(successBlock)success;

/**
 * 初始化方法，并返回扫码信息
 */
- (instancetype)initWithSuccessBlock: (void(^)(NSString *QRCodeInfo))success;
@end
