//
//  FirstViewController.m
//  HCSystemicQRCodeDemo
//
//  Created by Caoyq on 16/5/5.
//  Copyright © 2016年 honeycao. All rights reserved.
//

#import "FirstViewController.h"
#import "HCScanQRViewController.h"
#import "ShowQRCodeViewController.h"

@interface FirstViewController ()
@property (strong, nonatomic) NSArray *ary;
@end

@implementation FirstViewController

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:UITableViewStyleGrouped];
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"二维码";
    _ary = @[@"扫二维码/条形码",@"生成二维码"];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _ary.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    cell.backgroundColor = [UIColor yellowColor];
    cell.textLabel.text = _ary[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
//            HCScanQRViewController *scan = [[HCScanQRViewController alloc]init];
//            //调用此方法来获取二维码信息
//            [scan successfulGetQRCodeInfo:^(NSString *QRCodeInfo) {
//                NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//                UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
//                cell.detailTextLabel.text = QRCodeInfo;
//            }];
            //或下面方法
            HCScanQRViewController *scan = [[HCScanQRViewController alloc] initWithSuccessBlock:^(NSString *QRCodeInfo) {
                NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
                UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
                cell.detailTextLabel.text = QRCodeInfo;
            }];
            [self.navigationController pushViewController:scan animated:YES];
        }
            break;
        case 1:
        {
            UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            ShowQRCodeViewController *show = [story instantiateViewControllerWithIdentifier:@"Show"];
            [self.navigationController pushViewController:show animated:YES];
        }
            break;
        default:
            break;
    }
}

@end
