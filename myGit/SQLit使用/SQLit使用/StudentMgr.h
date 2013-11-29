//
//  StudentMgr.h
//  SQLit使用
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
@class Student;
@interface StudentMgr : NSObject
single_interface(StudentMgr)
//
//- (void)addPerson:(Person *)person;
//- (void)updatePerson:(Person *)person;
//- (void)deletePersonWithId:(int)ID;
//- (Person *)queryPeronWithName:(NSString *)name;
//
//- (NSArray *)queryPersons;
//
//- (NSArray *)queryPersonsWithCondition:(NSString *)condition;
#pragma mark 添加一条信息
- (void)addSutudent:(Student *)student;
#pragma mark 更新一条数据
- (void)updateStudent:(Student *)student;
#pragma mark 根据id删除一条数据
- (void)deleteStudentWithId:(int)ID;

#pragma mark 通过sql语句搜索
- (NSArray *)queryStudentWithSql:(NSString *)sql;
#pragma mark 查询单条数据
- (NSArray *)queryStudends;
#pragma mark 通过姓名查询
- (NSArray *)queryStudentWithCondition:(NSString *)condition;
@end
