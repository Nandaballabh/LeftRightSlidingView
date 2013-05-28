//
// MainViewController.h
//  Left-RightSliderDemo
//
//  Created by Nanda Ballabh on 28/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftViewController.h"
#import "RightViewController.h"
#import "CentralViewController.h"

@interface MainViewController : UIViewController<CentralViewControllerDeligate,RightViewControllerDeligate,LeftViewControllerDeligate>

@property (strong,nonatomic)  UIView *leftView;
@property (strong,nonatomic)  UIView *rightView;
@property (strong,nonatomic)  UIView *centralView;
@property (strong,nonatomic)  CentralViewController *centralController;
@property (strong,nonatomic)  LeftViewController *leftController;
@property (strong,nonatomic)  RightViewController *rightController;
@property (nonatomic) BOOL isLeftViewVisible;
@property (nonatomic) BOOL isRightViewVisible;

-(id)initWithLeftView:(UIViewController*)leftViewController AndRightViewController:(UIViewController*)rightViewController AndCentralViewController:(UIViewController*)centralViewController;
@end
