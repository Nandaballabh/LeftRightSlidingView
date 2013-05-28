//
//  RightViewController.h
//  Left-RightSliderDemo
//
//  Created by Nanda Ballabh on 28/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RightViewControllerDeligate <NSObject>
@required
-(void)animateToCentralViewControllerFromRight:(NSIndexPath*)indexPath;
@end

@interface RightViewController : UITableViewController

@property(assign) id<RightViewControllerDeligate> rightdelegate;
@property(strong,nonatomic) NSArray *rIteam;
@end
