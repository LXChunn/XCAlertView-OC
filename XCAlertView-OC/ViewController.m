//
//  ViewController.m
//  XCAlertView-OC
//
//  Created by 刘小椿 on 16/6/6.
//  Copyright © 2016年 刘小椿. All rights reserved.
//

#import "ViewController.h"
#import "XCAlert.h"

@interface ViewController ()<XPAlertControllerDelegate>

@property (nonatomic,strong)XPAlertController* alert;

@end

@implementation ViewController
- (IBAction)alertView:(id)sender {
    self.alert = [[XPAlertController alloc]initWithActivity:@[@"liu",@"xiao",@"chun"] title:@"哈哈"];
    self.alert.delegate = self;
    self.alert.backgroundColor = [UIColor greenColor];
    [self.alert show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
}

#pragma mark - delegate
- (void)alertControllerDidCanceled:(XPAlertController *)alertController
{
    NSLog(@"取消");
}

- (void)alertController:(XPAlertController *)alertController didSelectRow:(NSInteger)row
{
    NSLog(@"%lu",(long)row);
}

- (UIColor *)alertController:(XPAlertController *)alertController colorWithRow:(NSInteger)row
{
    return [UIColor blueColor];
}
@end
