//
//  RiLi.h
//  YunBiJi
//
//  Created by ldci on 12-11-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//
// 宋思鹏制作
#import <UIKit/UIKit.h>
#import "VRGCalendarView.h"
//#import "RiJiXie.h"
//#import "ZhuJieMian.h"
//#import "RiJiQuanBuLieBiao.h"

@interface RiLi : UIViewController<VRGCalendarViewDelegate>{

}

@property (strong,nonatomic) NSMutableString *dtime;
@property (strong,nonatomic) IBOutlet UILabel *btnHaveAny;
@property (strong,nonatomic) IBOutlet UIButton *xiaoshiNew;

- (IBAction)goBack:(id)sender;
- (IBAction)goRiJiQuanBuLieBiao:(id)sender;
- (IBAction)goRiJiXie:(id)sender;

@end
