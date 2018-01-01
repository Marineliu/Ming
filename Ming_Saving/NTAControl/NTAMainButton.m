//
//  NTAMainButton.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/31.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAMainButton.h"

@implementation NTAMainButton

+ (NTAMainButton *)createMainBtn
{
    CGRect frame = CGRectMake(0, 0, 180, 36);
    NTAMainButton *btn = [[NTAMainButton alloc]initWithFrame:frame];
    btn.backgroundColor = [UIColor redColor];
    return btn;
    
}

@end
