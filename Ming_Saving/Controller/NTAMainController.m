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
    [self getNewRoler];
    [self setBackImageViewWithImageName:@"fish.png"];
    [self addBtn];
}

- (void)setBackImageViewWithImageName:(NSString *)imageString
{
    self.backImageView.image = [UIImage imageNamed:imageString];
    
    [self.view addSubview:self.backImageView];
}

- (void)getNewRoler
{
    _roler = [NTAEnemyFactory createARoler];
    [self KVOWithRoler:_roler];
    [_roler PrintRolerInfo];
}


- (void)KVOWithRoler:(NTARoler *)roler
{
    
    [roler addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:@"null"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"name"])
    {
        NSLog(@"名字发生了改变");
    }
}

- (void)addBtn
{
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(30, 30, 200, 200)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(changeNameForRoler) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
}

- (void)changeNameForRoler
{
    NSInteger randomNum = arc4random() % 101;
    NSString *string = [NSString stringWithFormat:@"%ld",(long)randomNum];
    _roler.name = string;
    
    NSLog(@"%@",_roler.name);
}

@end

