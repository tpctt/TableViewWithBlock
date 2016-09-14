//
//  TableViewWithBlock.m
//  ComboBox
//
//  Created by Eric Che on 7/17/13.
//  Copyright (c) 2013 Eric Che. All rights reserved.
//

#import "TableViewWithBlock.h"
#import "UITableView+DataSourceBlocks.h"
#import "UITableView+DelegateBlocks.h"

@implementation TableViewWithBlock

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)initTableViewDataSourceAndDelegate:(UITableViewNumberOfRowsInSectionBlock)numOfRowsBlock setCellForIndexPathBlock:(UITableViewCellForRowAtIndexPathBlock)cellForIndexPathBlock setDidSelectRowBlock:(UITableViewDidSelectRowAtIndexPathBlock)didSelectRowBlock{
   
    self.numberOfRowsInSectionBlock=numOfRowsBlock;
    self.cellForRowAtIndexPath=cellForIndexPathBlock;
    self.didDeselectRowAtIndexPathBlock=didSelectRowBlock;
    self.dataSource=self;
    self.delegate=self;
    
}
-(void)initTableViewDataSourceAndDelegate:(UITableViewNumberOfRowsInSectionBlock)numOfRowsBlock
                 setCellForIndexPathBlock:(UITableViewCellForRowAtIndexPathBlock)cellForIndexPathBlock
         setTableViewWillDisplayCellBlock:(UITableViewWillDisplayCellBlock)tableViewWillDisplayCellBlock
                     setDidSelectRowBlock:(UITableViewDidSelectRowAtIndexPathBlock)didSelectRowBlock
{
    self.numberOfRowsInSectionBlock=numOfRowsBlock;
    self.cellForRowAtIndexPath=cellForIndexPathBlock;
    self.tableViewWillDisplayCellBlock = tableViewWillDisplayCellBlock;
    self.didDeselectRowAtIndexPathBlock=didSelectRowBlock;
    self.dataSource=self;
    self.delegate=self;
}

 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.cellForRowAtIndexPath(tableView,indexPath);
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.numberOfRowsInSectionBlock(tableView,section);
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.didDeselectRowAtIndexPathBlock(tableView,indexPath);
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[self tableView:tableView cellForRowAtIndexPath:indexPath];
    if (cell) {
        return cell.frame.size.height;
    }
    return 0;
}

/////iOS8 设置TableView Separatorinset 分割线从边框顶端开始
//-(void)viewDidLayoutSubviews
//{
//    if ([self  respondsToSelector:@selector(setSeparatorInset:)]) {
//        [self  setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
//    }
//    
//#ifdef  __IPHONE_8_0
//    if ([self  respondsToSelector:@selector(setLayoutMargins:)]) {
//        [self  setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
//    }
//#else
//#endif
//    
//}
///iOS8 设置TableView Separatorinset 分割线从边框顶端开始
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.tableViewWillDisplayCellBlock) {
        return self.tableViewWillDisplayCellBlock(tableView,cell, indexPath );

    }
    

    
//    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
//        [cell setSeparatorInset:UIEdgeInsetsMake(0,0,0,0) ];
//    }
//#ifdef  __IPHONE_8_0
//    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
//        [cell setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
//    }
//#else
//#endif
    
}
@end
