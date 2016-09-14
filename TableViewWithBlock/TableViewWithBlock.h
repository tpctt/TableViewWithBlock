//
//  TableViewWithBlock.h
//  ComboBox
//
//  Created by Eric Che on 7/17/13.
//  Copyright (c) 2013 Eric Che. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableView+DataSourceBlocks.h"
#import "UITableView+DelegateBlocks.h"

@interface TableViewWithBlock : UITableView<UITableViewDataSource,UITableViewDelegate>




@property(nonatomic,copy)UITableViewCellForRowAtIndexPathBlock cellForRowAtIndexPath;
@property(nonatomic,copy)UITableViewWillDisplayCellBlock tableViewWillDisplayCellBlock;
@property(nonatomic,copy)UITableViewNumberOfRowsInSectionBlock numberOfRowsInSectionBlock;
@property(nonatomic,copy)UITableViewDidDeselectRowAtIndexPathBlock didDeselectRowAtIndexPathBlock;
-(void)initTableViewDataSourceAndDelegate:(UITableViewNumberOfRowsInSectionBlock)numOfRowsBlock
                 setCellForIndexPathBlock:(UITableViewCellForRowAtIndexPathBlock)cellForIndexPathBlock
           setTableViewWillDisplayCellBlock:(UITableViewWillDisplayCellBlock)tableViewWillDisplayCellBlock
                     setDidSelectRowBlock:(UITableViewDidSelectRowAtIndexPathBlock)didSelectRowBlock;

///不带setTableViewWillDisplayCellBlock
-(void)initTableViewDataSourceAndDelegate:(UITableViewNumberOfRowsInSectionBlock)numOfRowsBlock
                 setCellForIndexPathBlock:(UITableViewCellForRowAtIndexPathBlock)cellForIndexPathBlock
                     setDidSelectRowBlock:(UITableViewDidSelectRowAtIndexPathBlock)didSelectRowBlock;

@end
