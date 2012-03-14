//
//  ScoreBoard.h
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-7.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScoreBoard : UILabel <UIGestureRecognizerDelegate>

@property(nonatomic, assign) NSUInteger score;

- (void)swipeUp;
- (void)swipeDown;

@end
