//
//  WJViewController.m
//  UIPickerViewDemo
//
//  Created by Wangjue on 13-11-25.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "WJViewController.h"

@interface WJViewController () <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *_currentSelected;

@end

@implementation WJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
    _pickerView.showsSelectionIndicator = NO;
    NSInteger num = _pickerView.numberOfComponents;
    NSLog( @"%d", num);
    NSInteger numInCp = [_pickerView numberOfRowsInComponent:0];
    NSLog(@"%d",numInCp);
    CGSize size = [_pickerView rowSizeForComponent:0];
    NSLog(@"%@", NSStringFromCGSize(size));
//    CGSize size2 = [_pickerView rowSizeForComponent:1];
//    NSLog(@"%@--%@", NSStringFromCGSize(size),NSStringFromCGSize(size2));
//    NSLog(@"%@",NSStringFromCGSize(self.view.bounds.size));
}
#pragma mark  - dataSource method
// 设置每组显示3行
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 3;
}
// 设置显示2组
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2; 
}

#pragma mark  - delegate method
// 设置每行显示的数据
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return @"showData";
}
@end
