//
//  SQLitMainController.m
//  SQLit使用
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//



#import "SQLitMainController.h"
#import "StudentMgr.h"
#import "Student.h"
#import "SQLitController.h"
typedef enum {
    kAdd = 0,
    kUpdata,
    kDelete,
    kQuery
} kClick;

@interface SQLitMainController ()

@end

@implementation SQLitMainController


- (id)init
{
    if (self == [super init]) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}


- (IBAction)ClickBtn:(UIButton *)sender {
    switch (sender.tag) {
        case kAdd:
        {
            Student *s = [[Student alloc]init];
            s.ID = [_ID.text integerValue];
            s.name = [_StdName text];
            s.team = _StdTeam.text;
            [[StudentMgr sharedStudentMgr] addSutudent:s];
//            [self performSegueWithIdentifier:@"segueSQLit" sender:nil];
            [self.view endEditing:YES];
        }
            break;
        
        case kUpdata:
            
            break;
        case kDelete:
            
            break;
        case kQuery:
        {
//            SQLitController *next = [[SQLitController alloc]init];
//            UIStoryboardSegue *segue = [[UIStoryboardSegue alloc]initWithIdentifier:@"segueSQLit" source:self destination:next];
//            [self prepareForSegue:segue sender:nil];
            [self performSegueWithIdentifier:@"segueSQLit" sender:nil];
            NSLog(@"dfdsf");
        }
            break;
    }
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    [self presentViewController:segue.destinationViewController animated:YES completion:nil];
//}
@end
