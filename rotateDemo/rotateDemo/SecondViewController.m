//
//  SecondViewController.m
//  rotateDemo
//
//  Created by 郭朝顺 on 2022/6/1.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"只支持竖屏";

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 在viewWillAppear调用会有问题, 第一次可以正常旋转, 但是后续切换后再触发旋转只能转部分
//    [AppDelegate interfaceOrientation:UIInterfaceOrientationPortrait];

}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    // 在viewDidAppear中旋转,多次点击测试后,现象正确
    [AppDelegate interfaceOrientation:UIInterfaceOrientationPortrait];
}

#pragma mark 转屏方法 不允许转屏
// 如果前一个页面是横屏, 切换到此页面, 还是会保持横屏, 所以其他app的做法都是采用在横屏页面恢复竖屏, 在push到新页面
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait ;
}
- (BOOL)shouldAutorotate
{
    return YES;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}


@end
