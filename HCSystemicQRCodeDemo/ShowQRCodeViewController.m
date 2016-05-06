//
//  ShowQRCodeViewController.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/5.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "ShowQRCodeViewController.h"
#import "HCCreateQRCode.h"

@interface ShowQRCodeViewController ()

@end
@implementation ShowQRCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _QRImg.layer.borderColor = [[UIColor yellowColor] CGColor];
    _QRImg.layer.borderWidth = 1.0;
}

- (IBAction)StartBtnClicked:(id)sender {
    [_input resignFirstResponder];
    _QRImg.image = [HCCreateQRCode createQRCodeWithString:_input.text ViewController:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_input resignFirstResponder];
}
@end
