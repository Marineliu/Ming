//
//  NTAEnemyFactory.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/30.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAEnemyFactory.h"
#import "NTAEnemy.h"

@implementation NTAEnemyFactory

+ (id)createARoler
{
    NTAEnemy *enemy = [[NTAEnemy alloc]init];
    
    return enemy;
}

@end
