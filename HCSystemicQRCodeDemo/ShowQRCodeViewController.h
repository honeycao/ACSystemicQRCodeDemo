//
//  ShowQRCodeViewController.h
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/5.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowQRCodeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *input;
@property (strong, nonatomic) IBOutlet UIImageView *QRImg;
- (IBAction)StartBtnClicked:(id)sender;
@end
