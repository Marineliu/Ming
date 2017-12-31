//
//  NTAPlayerFactory.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/30.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAPlayerFactory.h"
#import "NTAPlayer.h"

@implementation NTAPlayerFactory

+ (id)createARoler
{
    NTAPlayer *player = [[NTAPlayer alloc]init];
    
    return player;
}

@end
