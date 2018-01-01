//
//  NTAMainController.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/24.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTAMainController.h"
#import "NTARoler.h"
#import "NTARolerFactory.h"
#import "NTAPlayerFactory.h"
#import "NTAEnemyFactory.h"

@interface NTAMainController ()

@property (nonatomic)NTARoler *roler;

@end

@implementation NTAMainController

- (UIImageView *)backImageView
{
    if(!_backImageView)
    {
        _backImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    }
    return _backImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)setBackImageViewWithImageName:(NSString *)imageString
{
    /* set needed image soucce */
}

- (void)addBackImageView
{
    /* add if needed */
}

- (void)drawMainView
{
    /* main view method */
}

@end

