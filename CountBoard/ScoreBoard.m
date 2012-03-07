//
//  ScoreBoard.m
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-7.
//  Copyright (c) 2012年 Cybozu, Inc. All rights reserved.
//

#import "ScoreBoard.h"

@implementation ScoreBoard

@synthesize score;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        score = 0;
    }
    return self;
}

- (void)awakeFromNib
{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
