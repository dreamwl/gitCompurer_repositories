//
//  SQLitViewController.m
//  UISlideABC
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "SQLitViewController.h"

@interface SQLitViewController ()

@end

@implementation SQLitViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"we");
    _slider.minimumValue = 10.0;
    _slider.maximumValue = 100.0;
//    _slider.value = 45.0;
//    _slider.minimumTrackTintColor = [UIColor redColor];
//    _slider.maximumTrackTintColor = [UIColor greenColor];
//    _slider.thumbTintColor = [UIColor yellowColor];
//    [_slider setContinuous:NO]; // 在滑块滑动结束时才获取滑块的值
//    [_slider setUserInteractionEnabled:NO];
//    _slider.minimumValueImage = [UIImage imageNamed:@"003.png"];
//    _slider.maximumValueImage = [UIImage imageNamed:@"002.png"];
    
    
    
//    self segueForUnwindingToViewController:<#(UIViewController *)#> fromViewController:<#(UIViewController *)#> identifier:<#(NSString *)#>
//    self performSegueWithIdentifier:<#(NSString *)#> sender:<#(id)#>
//    self prepareForSegue:<#(UIStoryboardSegue *)#> sender:<#(id)#>
//    UIStoryboardSegue;
    
}


- (IBAction)valueChange:(UISlider *)sender {
    NSLog(@"%f",sender.value);
}

@end
