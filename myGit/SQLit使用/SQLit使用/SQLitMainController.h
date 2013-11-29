//
//  SQLitMainController.h
//  SQLit使用
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQLitMainController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *ID;
@property (weak, nonatomic) IBOutlet UITextField *StdName;
@property (weak, nonatomic) IBOutlet UITextField *StdTeam;

- (IBAction)ClickBtn:(UIButton *)sender;

@end
