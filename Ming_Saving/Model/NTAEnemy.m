//
//  NTAEnemy.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/30.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAEnemy.h"

@implementation NTAEnemy

- (void)PrintRolerInfo
{
    [super PrintRolerInfo];
    NSLog(@"A enemy");
}

- (void)changeName
{
    self.name = @"EnemyPlus";
}

- (instancetype)init
{
    self = [super init];
    
    if(self)
    {
        self.name = @"Enenmy";
    }
    
    return self;
}

@end
