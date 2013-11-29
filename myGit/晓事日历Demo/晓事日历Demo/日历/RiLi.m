//
//  RiLi.m
//  YunBiJi
//
//  Created by ldci on 12-11-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RiLi.h"
//#import "DiatyDao.h"
//#import "ViewController.h"
@interface RiLi ()

-(NSMutableArray *)diatyHaveAny:(NSString *)data;
-(NSMutableArray *)getAllDiaty;

@end

@implementation RiLi

@synthesize dtime;
@synthesize btnHaveAny;
@synthesize xiaoshiNew;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

//-(NSMutableArray *)diatyHaveAny:(NSString *)data
//{
//    DiatyDao *diaDao=[[DiatyDao alloc] init];
//    [diaDao initDataBase];
//    NSMutableArray *arr=[diaDao selectDiatyByDate:data];
//    [diaDao closeDataBase];
//    [diaDao release];
//    return arr;
//}

//-(NSMutableArray *)getAllDiaty
//{
//    DiatyDao *diaDao=[[DiatyDao alloc] init];
//    [diaDao initDataBase];
//    NSMutableArray *arr=[diaDao selectdiatyByTitle:@""];
//    [diaDao closeDataBase];
//    [diaDao release];
//    return arr;
//    
//}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    VRGCalendarView *calendar = [[VRGCalendarView alloc] init];
    calendar.delegate=self;
    [self.view addSubview:calendar];
    self.btnHaveAny.hidden=YES;
    self.xiaoshiNew.hidden=YES;
}

-(void)calendarView:(VRGCalendarView *)calendarView switchedToMonth:(int)month targetHeight:(float)targetHeight animated:(BOOL)animated {
    if (month==[[NSDate date] month]) {
        NSArray *dates = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:5], nil];
        [calendarView markDates:dates];
    }
}

-(void)calendarView:(VRGCalendarView *)calendarView dateSelected:(NSDate *)date {
    date= [NSDate dateWithTimeInterval:86400 sinceDate:date];
    //NSLog(@"Selected date = %@",date);
    self.dtime=[NSMutableString stringWithCapacity:20];
    self.dtime =[NSMutableString stringWithFormat:@"%@",date];
    [dtime deleteCharactersInRange:NSMakeRange(10, 15)];
    NSLog(@"%@",dtime);
    int count=[self diatyHaveAny:dtime].count;
    NSLog(@"%i",count);
    self.btnHaveAny.hidden=NO;
    self.btnHaveAny.text=[NSString stringWithFormat:@"今日有%i件晓事",count];
    self.xiaoshiNew.hidden=NO;
}

-(NSMutableArray *)diatyHaveAny:(NSString *)data
{
    NSMutableArray *arrayM = [NSMutableArray array];
    [arrayM addObject:data];
    return arrayM;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//- (IBAction)goBack:(id)sender {
//    ZhuJieMian *zhujiemian = [[ZhuJieMian alloc]initWithNibName:@"ZhuJieMian" bundle:nil];
//    ViewController *father = [ViewController SingleInit];
//    CATransition *animation = [CATransition animation];
//    animation.duration = 0.4f;
//    animation.delegate = self;
//    //    animation.timingFunction = UIViewAnimationCurveEaseInOut;
//    animation.type = kCATransitionPush;
//    animation.subtype = kCATransitionFromLeft;
//    [father.view.layer addAnimation:animation forKey:@"animation"];
//    [father.view insertSubview:zhujiemian.view atIndex:1];
//    [self.view removeFromSuperview];
//    [zhujiemian release];
//}

//- (IBAction)goRiJiQuanBuLieBiao:(id)sender {
//    
//    NSMutableArray *array=[self getAllDiaty];
//    NSLog(@"%i",array.count);
//    
//    RiJiQuanBuLieBiao *rijiquanbuliebiao = [[RiJiQuanBuLieBiao alloc]initWithNibName:@"RiJiQuanBuLieBiao" bundle:nil];
//    rijiquanbuliebiao.diatyArray=array;
//    ViewController *father = [ViewController SingleInit];
//    CATransition *animation = [CATransition animation];
//    animation.duration = 0.5f;
//    animation.delegate = self;
//    animation.timingFunction = UIViewAnimationCurveEaseInOut;
//    animation.type = kCATransitionPush;
//    animation.subtype = kCATransitionFromRight;
//    [father.view.layer addAnimation:animation forKey:@"animation"];
//    [father.view insertSubview:rijiquanbuliebiao.view atIndex:1];
//    [self.view removeFromSuperview];
//}
//
//- (IBAction)goRiJiXie:(id)sender {
//    RiJiXie *rijixie = [[RiJiXie alloc]initWithNibName:@"RiJiXie" bundle:nil];
//    rijixie.dtime=self.dtime;
//    rijixie.title=self.dtime;
////    ViewController *father = [ViewController SingleInit];    
////    [father.view insertSubview:rijixie.view atIndex:1];
////    [self.view removeFromSuperview];
//    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:rijixie];
//    //nav.title = rijixie.dtime;
//
//    [self presentModalViewController:nav animated:YES];
//}
@end
