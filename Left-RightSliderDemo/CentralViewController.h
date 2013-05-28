//
//  CentralViewController.h
//  Left-RightSliderDemo
//
//  Created by Nanda Ballabh on 28/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CentralViewControllerDeligate <NSObject>
@required
-(void)leftListButtonClicked;
-(void)rightListButtonClicled;
@end

@interface CentralViewController : UITableViewController

@property(assign) id<CentralViewControllerDeligate> centralDelegate;

@end
