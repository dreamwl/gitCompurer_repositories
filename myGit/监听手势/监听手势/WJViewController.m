//
//  WJViewController.m
//  监听手势
//
//  Created by Wangjue on 13-11-25.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "WJViewController.h"

@interface WJViewController ()

@end

@implementation WJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    UISwipeGestureRecognizer *up = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hideDock:)];
    [up setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.view addGestureRecognizer:up];
    
    UISwipeGestureRecognizer *down = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(hideDock:)];
    [down setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:down];

    
}

- (void)hideDock:(UISwipeGestureRecognizer *)swipe
{
    NSLog(@"adasd");
    if (swipe.direction == UISwipeGestureRecognizerDirectionDown) {
        [UIView animateWithDuration:0.3f animations:^{
            [_DOCK setFrame:CGRectMake(49, self.view.bounds.size.height, self.DOCK.bounds.size.width, self.DOCK.bounds.size.height)];
            NSLog(@"frame----%@",NSStringFromCGRect(_DOCK.frame));
        }];
    }else if (swipe.direction == UISwipeGestureRecognizerDirectionUp)
    {
        [UIView animateWithDuration:0.3f animations:^{
            CGFloat y = self.view.bounds.size.height - self.DOCK.bounds.size.height;
            [_DOCK setFrame:CGRectMake(49, y, self.DOCK.bounds.size.width, self.DOCK.bounds.size.height)];
            NSLog(@"ddddd");
        }];

    }
    
}
@end
