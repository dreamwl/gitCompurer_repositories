//
//  MyPaletteViewController.m
//  MyPalette
//
//  Created by xiaozhu on 11-6-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyPaletteViewController.h"
@implementation MyPaletteViewController
@synthesize Segment;
@synthesize labelLoanshift;
@synthesize labelColor;
@synthesize pale;
@synthesize toolbar;

static MyPaletteViewController *myPalette;

+(MyPaletteViewController *)initSingleController
{
    if (myPalette==nil) {
        myPalette = [[[MyPaletteViewController alloc] initWithNibName:@"MyPaletteViewController" bundle:nil] autorelease];
    }
    return myPalette;
}

//-(IBAction)back
//{
////    ViewController *father=[ViewController SingleInit];
//    //ZhuJieMian * zjmVC = [[ZhuJieMian alloc]initWithNibName:@"ZhuJieMian" bundle:nil];
//    //[father.view insertSubview:zjmVC.view atIndex:1];
//    CATransition *animation = [CATransition animation];
//    animation.duration = 0.5f;
//    animation.delegate = self;
//    //    animation.timingFunction = UIViewAnimationCurveEaseInOut;
//    animation.type = kCATransitionReveal;
//    animation.subtype = kCATransitionFromLeft;
////    [father.view.layer addAnimation:animation forKey:@"animation"];
//    [self.view removeFromSuperview];
//    
//}
-(IBAction)myPalttealllineclear
{
	[(Palette*)self.view myalllineclear];
}
//
-(IBAction)LineFinallyRemove
{
	[(Palette*)self.view myLineFinallyRemove];
}
//颜色
-(IBAction)myAllColor
{
	[self segmentColor];
}
//宽度
-(IBAction)myAllWidth
{
	[self segmentWidth];
}
//橡皮
-(IBAction)myRubberSeraser
{
	
	Segment=10;
}

//方法名
//方法作用
//方法
//===========================================================
-(void)segmentColor
{
	NSArray* segmentArray=[[NSArray alloc] initWithObjects:
						   [NSString stringWithString:@"黑"],
						   [NSString stringWithString:@"红"],
						   [NSString stringWithString:@"蓝"],
						   [NSString stringWithString:@"绿"],
						   [NSString stringWithString:@"黄"],
						   [NSString stringWithString:@"橙"],
						   [NSString stringWithString:@"灰"],
						   [NSString stringWithString:@"紫"],
						   [NSString stringWithString:@"棕"],
						   [NSString stringWithString:@"粉红"],nil];
//    NSArray * segmentArray=[[NSArray alloc]initWithObjects:@"黑",@"红",@"蓝","绿","黄","橙","灰","紫","棕","粉红", nil];
	ColorButton=[[UISegmentedControl alloc] initWithItems:segmentArray];
	CGRect ButtonRect=CGRectMake(0, 0, 320, 40);
	[ColorButton setFrame:ButtonRect];
	[ColorButton setMomentary:YES];
	[ColorButton addTarget:self action:@selector(segmentColorButton:) 
		  forControlEvents:UIControlEventValueChanged];
	
	[ColorButton setSegmentedControlStyle:UISegmentedControlStyleBar];
	
	[ColorButton setTintColor:[UIColor darkGrayColor]];
	
	[self.view addSubview:ColorButton];
}
-(void)segmentColorButton:(id)sender
{
	Segment = [sender selectedSegmentIndex] ;
	switch (Segment)
	{
		case 0:
			labelColor.text=@"颜色:黑色";
			labelColor.textColor=[UIColor blackColor];
			break;
		case 1:
			labelColor.text=@"颜色:红色";
			labelColor.textColor=[UIColor redColor];
			break;
		case 2:
			labelColor.text=@"颜色:蓝色";
			labelColor.textColor=[UIColor blueColor];
			break;
		case 3:
			labelColor.text=@"颜色:绿色";
			labelColor.textColor=[UIColor greenColor];
			break;
		case 4:
			labelColor.text=@"颜色:黄色";
			labelColor.textColor=[UIColor yellowColor];
			break;
		case 5:
			labelColor.text=@"颜色:橙色";
			labelColor.textColor=[UIColor orangeColor];
			break;
		case 6:
			labelColor.text=@"颜色:灰色";
			labelColor.textColor=[UIColor grayColor];
			break;
		case 7:
			labelColor.text=@"颜色:紫色";
			labelColor.textColor=[UIColor purpleColor];
			break;
		case 8:
			labelColor.text=@"颜色:棕色";
			labelColor.textColor=[UIColor brownColor];
			break;
		case 9:
			labelColor.text=@"颜色:粉红色";
			labelColor.textColor=[UIColor magentaColor];
			break;
		default:
			break;
	}
}
//====================================================================
-(void)segmentWidth
{
	NSArray* segmentArray=[[NSArray alloc] initWithObjects:
						   [NSString stringWithString:@"1.0"],
						   [NSString stringWithString:@"3.0"],
						   [NSString stringWithString:@"5.0"],
						   [NSString stringWithString:@"7.0"],
						   [NSString stringWithString:@"9.0"],
						   [NSString stringWithString:@"11.0"],
						   [NSString stringWithString:@"13.0"],
						   [NSString stringWithString:@"15.0"],
						   [NSString stringWithString:@"17.0"],
						   [NSString stringWithString:@"19.0"],nil];
	WidthButton=[[UISegmentedControl alloc] initWithItems:segmentArray];
	CGRect ButtonRect=CGRectMake(0, 0, 320, 40);
	[WidthButton setFrame:ButtonRect];
	[WidthButton setMomentary:YES];
	[WidthButton addTarget:self action:@selector(segmentWidthButton:) 
		  forControlEvents:UIControlEventValueChanged];
	
	[WidthButton setSegmentedControlStyle:UISegmentedControlStyleBar];
	[WidthButton setTintColor:[UIColor darkGrayColor]];
	
	[self.view addSubview:WidthButton];
}
-(void)segmentWidthButton:(id)sender
{
	SegmentWidth =[sender selectedSegmentIndex];
	switch (SegmentWidth)
	{
		case 0:
			labelLoanshift.text=@"字号:1.0";
//			labelColor.textColor=[UIColor blackColor];
			break;
		case 1:
			labelLoanshift.text=@"字号:3.0";
//			labelColor.textColor=[UIColor redColor];
			break;
		case 2:
			labelLoanshift.text=@"字号:5.0";
//			labelColor.textColor=[UIColor blueColor];
			break;
		case 3:
			labelLoanshift.text=@"字号:7.0";
//			labelColor.textColor=[UIColor greenColor];
			break;
		case 4:
			labelLoanshift.text=@"字号:9.0";
//			labelColor.textColor=[UIColor yellowColor];
			break;
		case 5:
			labelLoanshift.text=@"字号:11.0";
//			labelColor.textColor=[UIColor orangeColor];
			break;
		case 6:
			labelLoanshift.text=@"字号:13.0";
//			labelColor.textColor=[UIColor grayColor];
			break;
		case 7:
			labelLoanshift.text=@"字号:15.0";
//			labelColor.textColor=[UIColor purpleColor];
			break;
		case 8:
			labelLoanshift.text=@"字号:17.0";
//			labelColor.textColor=[UIColor brownColor];
			break;
		case 9:
			labelLoanshift.text=@"字号:19.0";
//			labelColor.textColor=[UIColor magentaColor];
			break;
		default:
			break;
	}

	
}
//******************************************************************************************
-(IBAction)captureScreen
{
	//保存瞬间把view上的所有按钮的Alpha值改为０
	[[self.view subviews] makeObjectsPerformSelector:@selector (setAlpha:)];
	
	UIGraphicsBeginImageContext(self.view.bounds.size);
	
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	
	UIImage* image=UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	UIImageWriteToSavedPhotosAlbum(image, self, nil, nil);
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:nil message:@"保存成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    
    NSLog(@"save image %@",image);
	//遍历view全部按钮在把他们改为１
	for (UIView* temp in [self.view subviews]) 
	{
		[temp setAlpha:1.0];
	}
	
	
}

-(IBAction)callCame
{
	//指定图片来源
	UIImagePickerControllerSourceType sourceType=UIImagePickerControllerSourceTypeCamera;
	//判断如果摄像机不能用图片来源与图片库
//	if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
//	{
		sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
//	}
	UIImagePickerController *picker=[[UIImagePickerController alloc] init];
	picker.delegate=self;
	//前后摄像机
	//picker.cameraDevice=UIImagePickerControllerCameraDeviceFront;
	picker.allowsEditing=YES;
	picker.sourceType=sourceType;
	//[self presentModalViewController:picker animated:YES];
    [self presentViewController:picker animated:YES completion:nil];
	[picker release];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	//返回原来界面
	//[picker dismissModalViewControllerAnimated:YES];
    [picker dismissViewControllerAnimated:YES completion:nil];
	//
	UIImage* image=[[info objectForKey:UIImagePickerControllerOriginalImage]retain];
	//延时
	[self performSelector:@selector(saveImage:) withObject:image afterDelay:0.5];
	
}
//按取消键时
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
	//[picker dismissModalViewControllerAnimated:YES];
    [picker dismissViewControllerAnimated:YES completion:nil];
}
//保存图片
-(void)saveImage:(id)sender
{
	
	if (pickImage!=nil)
	{
		[pickImage removeFromSuperview];
		[pickImage initWithImage:sender];
		//pickImage.frame=CGRectMake(40, 40, 200, 200);
         [self myPalttealllineclear];
        self.view.backgroundColor=[[UIColor alloc]initWithPatternImage:sender];

		//[self.view insertSubview:pickImage atIndex:2];
		//[self.view sendSubviewToBack:pickImage];//添加到最后一层
		//self.view.backgroundColor=[UIColor clearColor];
		//self.view.alpha=0;
		//[self.view addSubview:pickImage];
	
		
		
	}
	else 
	{
		pickImage=[[UIImageView alloc] initWithImage:sender];
		//pickImage.frame=CGRectMake(40, 40, 200, 200);
	
		//[self.view insertSubview:pickImage atIndex:2];
		//[self.view sendSubviewToBack:pickImage];//添加到最后一层
		//self.view.backgroundColor=[UIColor clearColor];
		//self.view.alpha=0;
		///[self.view addSubview:pickImage];
        [self myPalttealllineclear];
        self.view.backgroundColor=[[UIColor alloc]initWithPatternImage:sender];
	}
}
//******************************************************************************************
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
	
    [super viewDidLoad];
    toolbar=[[[UIToolbar alloc]initWithFrame:CGRectMake(0, 425, 320, 35)]autorelease];
    [toolbar setBarStyle:UIBarStyleBlackTranslucent];
    
    UIBarButtonItem *btn1=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"eraser.png"]style:UIBarButtonItemStyleDone target:self action:@selector(myRubberSeraser)];
    //选色板
    UIBarButtonItem *btn2=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"color.png"] style:UIBarButtonItemStyleDone target:self action:@selector(myAllColor)];
    //画笔粗细
    UIBarButtonItem *btn3=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"ruler.png"] style:UIBarButtonItemStyleDone target:self action:@selector(myAllWidth)];
    //撤销
    UIBarButtonItem *btn4=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"undo.png"] style:UIBarButtonItemStyleDone target:self action:@selector(LineFinallyRemove)];
    //清空
    UIBarButtonItem *btn6=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"trash.png"] style:UIBarButtonItemStyleDone target:self action:@selector(myPalttealllineclear)];
    //保存
    UIBarButtonItem *btn7=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"save.png"] style:UIBarButtonItemStyleDone target:self action:@selector(captureScreen)];

    UIBarButtonItem * btn8=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(callCame)];
//    UIBarButtonItem * btn9=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonSystemItemCancel target:self action:@selector(back)];

//    NSArray *toolBarItem=[NSArray arrayWithObjects:btn1,btn2,btn3,btn4,btn6,btn7 ,btn8,btn9,nil];
    NSArray *toolBarItem=[NSArray arrayWithObjects:btn1,btn2,btn3,btn4,btn6,btn7 ,btn8,nil];
    
    [toolbar setItems:toolBarItem];
    [self.view addSubview:toolbar];

    
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc 
{
    [super dealloc];
}
#pragma mark -
//手指开始触屏开始
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

	[ColorButton removeAllSegments];
	[WidthButton removeAllSegments];
	UITouch* touch=[touches anyObject];
	MyBeganpoint=[touch locationInView:self.view ];
	
	[(Palette*)self.view Introductionpoint4:Segment];
	[(Palette*)self.view Introductionpoint5:SegmentWidth];
	[(Palette*)self.view Introductionpoint1];
	[(Palette*)self.view Introductionpoint3:MyBeganpoint];
	
	NSLog(@"======================================");
	NSLog(@"MyPalette Segment=%i",Segment);
}
//手指移动时候发出
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	NSArray* MovePointArray=[touches allObjects];
	MyMovepoint=[[MovePointArray objectAtIndex:0] locationInView:self.view];
	[(Palette*)self.view Introductionpoint3:MyMovepoint];
	[self.view setNeedsDisplay];
}
//当手指离开屏幕时候
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
	[(Palette*)self.view Introductionpoint2];
	[self.view setNeedsDisplay];
}
//电话呼入等事件取消时候发出
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	//NSLog(@"touches Canelled");
}
@end
