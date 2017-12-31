//
//  NTAPlayer.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/30.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAPlayer.h"

@implementation NTAPlayer

- (void)PrintRolerInfo
{
    [super PrintRolerInfo];
    NSLog(@"A Player");
}

- (void)changeName
{
    self.name = @"playerPlus";
}

- (instancetype)init
{
    self = [super init];
    
    if(self)
    {
        self.name = @"player";
    }
    
    return self;
}

@end
