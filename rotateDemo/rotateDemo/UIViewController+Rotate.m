//
//  UIViewController+Rotate.m
//  rotateDemo
//
//  Created by 郭朝顺 on 2022/6/1.
//

#import "UIViewController+Rotate.h"
#import <objc/runtime.h>

@implementation UIViewController (Rotate)




// 类别中的3个方法根本无效,子类即时没有实现对应的方法,下断点也无法进入到方法体中
// 猜测原因是系统的方式也是在类别中, 而且系统的类别加载比我们的晚, 所以优先调到了系统的类别中
- (BOOL)shouldAutorotate {
    NSLog(@"%s",__func__);
    return YES;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    NSLog(@"%s",__func__);
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    NSLog(@"%s",__func__);
    return UIInterfaceOrientationPortrait;
}


@end
