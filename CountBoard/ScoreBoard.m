//
//  ScoreBoard.m
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-7.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "ScoreBoard.h"

@interface ScoreBoard()

- (void)_createTwoGestureRecognizer;
- (void)_turnPage;
- (void)_refreshState;


@end


@implementation ScoreBoard

@synthesize score;

#pragma mark - private

- (void)_turnPage
{
//    [self]
}

- (void)_createTwoGestureRecognizer
{
    UISwipeGestureRecognizer *upRgn = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp)];
    upRgn.direction = UISwipeGestureRecognizerDirectionUp;
    
    UISwipeGestureRecognizer *downRgn = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown)];
    downRgn.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self addGestureRecognizer:upRgn];
    [self addGestureRecognizer:downRgn];
}

- (void)_refreshState
{
    self.text = [NSString stringWithFormat:@"%d",self.score];
}

#pragma mark - init

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        score = 0;
        [self _createTwoGestureRecognizer];
    }
    return self;
}

- (void)awakeFromNib
{
    [self _refreshState];
}

#pragma mark - IBAction

- (void)swipeUp
{
    self.score++;
    [self _refreshState];
}

- (void)swipeDown
{
    self.score--;
    [self _refreshState];
}

@end
