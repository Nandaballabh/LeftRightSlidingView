//
//  LeftViewController.h
//  Left-RightSliderDemo
//
//  Created by Nanda Ballabh on 28/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LeftViewControllerDeligate <NSObject>
@required
-(void)animateToCentralViewControllerFromLeft:(NSIndexPath*)indexPath;

@end

@interface LeftViewController : UITableViewController

@property(assign) id<LeftViewControllerDeligate> leftdelegate;
@property(strong,nonatomic) NSArray *lIteam;

@end
