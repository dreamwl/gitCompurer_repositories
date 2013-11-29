//
//  SQLitViewController.m
//  UIImageView
//
//  Created by Wangjue on 13-11-25.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "SQLitViewController.h"

@interface SQLitViewController ()

@end

@implementation SQLitViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    _imageView.image = [UIImage imageNamed:@"me.png"];
    
//    _imageView.highlightedImage = [UIImage imageNamed:@"other.png"];
//    [_imageView setHighlighted:YES];
    [_imageView setUserInteractionEnabled:YES];
    
    
    
//    1.Image 设置显示的图片
//    2.highlightedImage 设置高亮状态下的图片
//    3.animationImages 设置序列帧动画的图片数组
    [_imageView setAnimationImages:[NSArray array]];
//    4.highlightedAnimationImages 设置高亮状态下序列帧动画的图片数组
    [_imageView setHighlightedAnimationImages:[NSArray array]];
//    5.animationDuration 设置序列帧动画播放的时常
    [_imageView setAnimationDuration:0.3f];
//    6.animationRepeatCount 设置序列帧动画播放的次数
    [_imageView setAnimationRepeatCount:2];
//    7.userInteractionEnabled 设置是否允许用户交互
//    8.highlighted 设置是否为高亮状态
//    注意的是在highlighted状态下设置的图片与序列帧动画要显示，必须同时设置UIImageView的状态为highlighted
    
}

@end
