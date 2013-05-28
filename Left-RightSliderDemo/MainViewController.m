//
//  MainViewController.m
//  Left-RightSliderDemo
//
//  Created by Nanda Ballabh on 28/05/13.
//  Copyright (c) 2013 Nanda Ballabh. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(id)initWithLeftView:(UIViewController*)leftViewController AndRightViewController:(UIViewController*)rightViewController AndCentralViewController:(UIViewController*)centralViewController
{
    self = [super init];
    if (self)
    {
        CentralViewController *centralController = (CentralViewController*)centralViewController;
        LeftViewController *leftController = (LeftViewController*)leftViewController;
        RightViewController *rightController = (RightViewController*)rightViewController;
        
        self.leftView = [[UIView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:self.leftView];
        [leftController.view setBackgroundColor:[UIColor redColor]];
        leftController.leftdelegate = self;
        [self.leftView addSubview:leftController.view];
        
        self.rightView = [[UIView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:self.rightView];
        [rightController.view setBackgroundColor:[UIColor greenColor]];
        rightController.rightdelegate = self;
        [self.rightView addSubview:rightController.view];
        
        self.centralView = [[UIView alloc]initWithFrame:self.view.frame];
        [self.view addSubview:self.centralView];
        [centralController.view setBackgroundColor:[UIColor blueColor]];
        centralController.centralDelegate = self;
        UINavigationController *centralNav = [[UINavigationController alloc]initWithRootViewController:centralController];
        [centralNav addChildViewController:centralController];
        [self.centralView addSubview:centralNav.view];
    }
    return self;
}

-(void)slideToCentralViewFromLeft
{
    if (!self.isRightViewVisible)
        [self.rightView setHidden:YES];        
    [UIView animateWithDuration:.35f animations:^
    {
        if(self.isLeftViewVisible)
        {
            CGRect frame = self.centralView.frame;
            frame.origin.x = 0;
            self.centralView.frame = frame;
        }
        else
        {
            CGRect frame = self.centralView.frame;
            frame.origin.x = 280;
            self.centralView.frame = frame;
        }
    } completion:^(BOOL finished)
     {
         if(self.isLeftViewVisible)
         {
             self.isLeftViewVisible = NO;
         }
         else
         {
             self.isLeftViewVisible = YES;
         }

     }];
}

-(void)slideToCentralViewFromRight
{
    if (!self.isLeftViewVisible)
        [self.rightView setHidden:NO];
    [UIView animateWithDuration:.35f animations:^
     {
         if(self.isRightViewVisible)
         {
             CGRect cframe = self.centralView.frame;
             cframe.origin.x = 0;
             self.centralView.frame = cframe;
             CGRect rframe = self.rightView.frame;
             rframe.origin.x = 0;
             self.rightView.frame = rframe;
         }
         else
         {
             CGRect cframe = self.centralView.frame;
             cframe.origin.x = -280;
             self.centralView.frame = cframe;
             CGRect rframe = self.rightView.frame;
             rframe.origin.x = 40;
             self.rightView.frame = rframe;
         }
     }completion:^(BOOL finished)
     {
         if(self.isRightViewVisible)
         {
             self.isRightViewVisible = NO;
         }
         else
         {
             self.isRightViewVisible = YES;
         }
         
     }];

}



-(void)animateToCentralViewControllerFromLeft:(NSIndexPath *)indexPath
{
    [self slideToCentralViewFromLeft];
}

-(void)animateToCentralViewControllerFromRight:(NSIndexPath *)indexPath
{
    [self slideToCentralViewFromRight];
 
}

-(void)leftListButtonClicked
{
    [self slideToCentralViewFromLeft];
}

-(void)rightListButtonClicled
{
    [self slideToCentralViewFromRight];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
