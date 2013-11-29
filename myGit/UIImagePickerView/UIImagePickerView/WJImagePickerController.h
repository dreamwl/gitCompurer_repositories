//
//  WJImagePickerController.h
//  UIImagePickerView
//
//  Created by Wangjue on 13-11-28.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WJImagePickerController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *selectBtn;
- (IBAction)photoBtn:(UIButton *)sender;

@end
