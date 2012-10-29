//
//  MainViewController.h
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-14.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Score.h"
#import "ScoreBoard.h"

@interface MainViewController : UIViewController
{
@private
    ScoreBoard  *_leftMainBoard;
    ScoreBoard  *_leftSubBoard;
    
    ScoreBoard  *_rightMainBoard;
    ScoreBoard  *_rightSubBoard;
}


@property(nonatomic, strong) Score  *score;

@property(nonatomic, strong) IBOutlet ScoreBoard  *_leftMainBoard;
@property(nonatomic, strong) IBOutlet ScoreBoard  *_leftSubBoard;

@property(nonatomic, strong) IBOutlet ScoreBoard  *_rightMainBoard;
@property(nonatomic, strong) IBOutlet ScoreBoard  *_rightSubBoard;


- (IBAction)resetButtonPressed;

@end
