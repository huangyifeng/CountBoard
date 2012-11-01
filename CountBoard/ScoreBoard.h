//
//  ScoreBoard.h
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-7.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScoreBoard;
@protocol ScoreBoardDelegate <NSObject>

- (void)scoreBoardSwipeUp:(ScoreBoard *)board;
- (void)scoreBoardSwipeDown:(ScoreBoard *)board;

@end

@interface ScoreBoard : UILabel <UIGestureRecognizerDelegate>
{
@private
    
}

@property(nonatomic, assign) NSUInteger score;

- (void)swipeUp:(UIGestureRecognizer *)sender;
- (void)swipeDown:(UIGestureRecognizer *)sender;

@end
