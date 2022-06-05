//
//  ViewController.m
//  rotateDemo
//
//  Created by 郭朝顺 on 2022/6/1.
//

#import "ViewController.h"
#import "FourViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"支持所有方向,期望竖屏";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    FourViewController *four = [[FourViewController alloc] init];
    [self.navigationController pushViewController:four animated:YES];
}


- (BOOL)shouldAutorotate {
    return YES;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}


- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    NSLog(@"动画播放完之后处理");
}

@end
