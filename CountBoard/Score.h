//
//  Score.h
//  CountBoard
//
//  Created by Huang YiFeng on 12-3-6.
//  Copyright (c) 2012年 All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Score : NSObject

@property(nonatomic, strong) NSString   *leftName;
@property(nonatomic, assign) NSUInteger  leftScore;

@property(nonatomic, strong) NSString   *rightName;
@property(nonatomic, assign) NSUInteger  rightScore;

@end
