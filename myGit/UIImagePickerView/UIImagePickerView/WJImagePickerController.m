//
//  WJImagePickerController.m
//  UIImagePickerView
//
//  Created by Wangjue on 13-11-28.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "WJImagePickerController.h"

@interface WJImagePickerController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@end

@implementation WJImagePickerController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    _imageView.userInteractionEnabled = YES;
//    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
//    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
//    [imagePicker setEditing:YES];
//    imagePicker.delegate = self;
//    _imagePicker = imagePicker;
}

- (IBAction)photoBtn:(UIButton *)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [imagePicker setAllowsEditing:YES];
    imagePicker.sourceType;
    imagePicker.delegate = self;
//    _imagePicker = imagePicker;
    [self presentViewController:imagePicker animated:YES completion:nil];
}



- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = info[@"UIImagePickerControllerEditedImage"];
    NSLog(@"%@",image);
    [_selectBtn setImage:image forState:UIControlStateNormal];
    [self dismissViewControllerAnimated:YES completion:nil];

}

@end
