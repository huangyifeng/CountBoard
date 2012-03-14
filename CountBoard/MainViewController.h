//
//  MainViewController.h
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-14.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Score.h"


@interface MainViewController : UIViewController

@property(nonatomic, strong) Score  *score;

- (IBAction)resetButtonPressed;

@end
