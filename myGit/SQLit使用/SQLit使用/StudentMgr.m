//
//  StudentMgr.m
//  SQLit使用
//
//  Created by Wangjue on 13-11-23.
//  Copyright (c) 2013年 Wangjue. All rights reserved.
//

#import "StudentMgr.h"
#import "Student.h"
#import <sqlite3.h>
@interface StudentMgr ()
{
    sqlite3 *_db; // 数据库
    UIImageView;
}

@end
@implementation StudentMgr
single_implementation(StudentMgr)
- (id)init
{
    if (self == [super init]) {
        [self creatdb];
        [self creatTable];
    
    }
    return self;
}
#pragma mark 创建数据库
- (void)creatdb
{
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@"student.sqlite"];
    int result = sqlite3_open(filePath.UTF8String, &_db);
    if (result == SQLITE_OK) {
        NSLog(@"打开数据库");
    }else
    {
        NSLog(@"失败");
    }
}
#pragma mark 创建数据表
- (void)creatTable
{
    NSString *sql = @"create table if not exists t_student(id integer primary key autoincrement, name text, team text);";
    [self execute:sql action:@"创建"];
}
#pragma mark 执行操作语句
- (void)execute:(NSString *)sql action:(NSString *)action
{
    const char *sqlStr = sql.UTF8String;
    char *error = NULL;
    int result = sqlite3_exec(_db, sqlStr, NULL, NULL, &error);
    if (result == SQLITE_OK) {
        NSLog(@"%@成功",action);
    }else
    {
        NSLog(@"%@失败",action);
    }
}
#pragma mark 添加一条信息
- (void)addSutudent:(Student *)student
{
    NSString *sql =  [NSString stringWithFormat:@"insert into t_student(name, team) values('%@', %@);", student.name, student.team];
    [self execute:sql action:@"插入新数据"];
}
#pragma mark 更新一条数据
- (void)updateStudent:(Student *)student
{
    NSString *sql = [NSString stringWithFormat:@"update t_student set name = '%@', tema = %@ where id = %d;", student.name, student.team, student.ID];
    
    [self execute:sql action:@"更新数据"];
}
#pragma mark 根据id删除一条数据
- (void)deleteStudentWithId:(int)ID
{
    NSString *sql = [NSString stringWithFormat:@"delete from t_student where id = %d;", ID];
    
    [self execute:sql action:@"删除数据"];
}
#pragma mark 通过sql语句搜索
- (NSArray *)queryStudentWithSql:(NSString *)sql
{
    const char *sqlStr = sql.UTF8String;
    sqlite3_stmt *stmt = NULL; // 用来获得所有的记录
    NSMutableArray *students = nil;
    int result = sqlite3_prepare_v2(_db, sqlStr, -1, &stmt, NULL); //
    if (result == SQLITE_OK) {
        students = [NSMutableArray array];
        while (sqlite3_step(stmt) == SQLITE_ROW) { // 有数据行
            int ID = sqlite3_column_int(stmt, 0);
            const unsigned char *name = sqlite3_column_text(stmt, 1);
            const unsigned char *team = sqlite3_column_text(stmt, 2);
            Student *s = [[Student alloc]init];
            s.ID = ID;
            s.name = [NSString stringWithUTF8String:(const char*)name];
            s.team = [NSString stringWithUTF8String:(const char*)team];
            NSLog(@"id=%d,name=%@,team=%@",ID,s.name,s.team);
            [students addObject:s];
        }
    }else
    {
        NSLog(@"查询语句语法有问题");
    }
    return students;
    
//    NSMutableArray *arrayM = [NSMutableArray array];
//    for (int i = 0; i < 10; i++) { // 创建10个student对象塞到数组中
//        Student *s = [[Student alloc]init];
//        [arrayM addObject:s];
//    }
    
}

- (NSArray *)queryStudends
{
    NSString *sql = @"select id,name,team from t_student;";
    return [self queryStudentWithSql:sql];
}
#pragma mark 通过姓名查询
- (NSArray *)queryStudentWithCondition:(NSString *)condition
{
    //NSString *sql = [NSString stringWithFormat:@"select id,name,age from t_person where name = '%@';", condition];
    NSString *sql = [NSString stringWithFormat:@"select id,name,team from t_student where name like '%%%@%%';", condition];
    NSLog(@"%@", sql);
    
    return [self queryStudentWithSql:sql];
}

@end