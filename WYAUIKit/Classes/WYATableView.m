//
//  WYATableView.m
//  WYAUIKit_Example
//
//  Created by 李世航 on 2018/11/7.
//  Copyright © 2018 1228506851@qq.com. All rights reserved.
//

#import "WYATableView.h"

@interface WYATableView ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation WYATableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        
    }
    return self;
}

-(void)tableWithFrame:(CGRect)frame
      BackGroundColor:(UIColor *)backGroundColor
   CellSeparatorStyle:(UITableViewCellSeparatorStyle)cellStyle
{
    self.frame = frame;
    self.backgroundColor = backGroundColor;
    self.separatorStyle = cellStyle;
    self.delegate = self;
    self.dataSource = self;
}

/**
 设置tableView有多少个区

 @param tableView tableView
 @return 区的个数
 */
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//
//}

/**
 设置tableview每个区有多少行

 @param tableView tableview
 @param section 区
 @return 行的个数
 */
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//
//}

/**
 设置tableview对应区、行的cell

 @param tableView tableView
 @param indexPath 索引
 @return cell
 */
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}

//- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section

/**
 设置tableView是否可以编辑对应的行

 @param tableView tableView
 @param indexPath 索引
 @return 是否可以编辑
 */
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}

/**
 设置tableview是否可以移动对应的行

 @param tableView tableview
 @param indexPath 索引
 @return 是否可以移动
 */
//- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}

/**
 设置tableview每个区对应的索引

 @param tableView tableView
 @return like This : [@"A",@"B",@"C"]
 */
//- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
//
//}

/**
 设置tableView区对应的索引

 @param tableView tableView
 @param title title
 @param index index
 @return 索引值
 */
//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
//
//}

/**
 设置tableviewcell点击删除或其他操作

 @param tableView tableview
 @param editingStyle 编辑样式
 @param indexPath 索引
 */
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}

/**
 设置tableview移动cell的操作

 @param tableView tableview
 @param sourceIndexPath 数据源索引
 @param destinationIndexPath <#destinationIndexPath description#>
 */
//- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
//    
//}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
