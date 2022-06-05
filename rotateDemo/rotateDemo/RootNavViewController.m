//
//  RootNavViewController.m
//  rotateDemo
//
//  Created by 郭朝顺 on 2022/6/1.
//

#import "RootNavViewController.h"

@interface RootNavViewController ()

@end

@implementation RootNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark 转屏方法重写
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return [self.viewControllers.lastObject supportedInterfaceOrientations];
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.viewControllers.lastObject preferredInterfaceOrientationForPresentation];
}
-(BOOL)shouldAutorotate{
    return self.visibleViewController.shouldAutorotate;
}


@end
