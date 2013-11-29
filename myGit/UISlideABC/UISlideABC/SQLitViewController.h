//
//  SQLitViewController.h
//  UISlideABC
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQLitViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)valueChange:(UISlider *)sender;

@end
