//
//  ThirdViewController.m
//  rotateDemo
//
//  Created by 郭朝顺 on 2022/6/2.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"
#import "SecondViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"只想横屏";
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [AppDelegate interfaceOrientation:UIInterfaceOrientationLandscapeRight];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [AppDelegate interfaceOrientation:UIInterfaceOrientationLandscapeRight];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"SecondViewController"];;
    [self.navigationController pushViewController:vc animated:YES];
}




- (BOOL)shouldAutorotate {
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}


@end
