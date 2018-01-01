//
//  NTALoginViewController.m
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/31.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import "NTALoginViewController.h"
#import "NTAMainButton.h"

@interface NTALoginViewController ()

@end

@implementation NTALoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackImageViewWithImageName:@"background"];
    [self addBackImageView];
    [self drawMainView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addBackImageView
{
    [self.view addSubview:self.backImageView];
}

- (void)setBackImageViewWithImageName:(NSString *)imageString
{
    self.backImageView.image = [UIImage imageNamed:imageString];
}

- (void)drawMainView
{
    [self drawBtn];
    [self versionDisplay];
}

- (void)drawBtn
{
    [self loadBtnList];
}

- (void)loadBtnList
{
    NSArray *btnPressList = [NSArray arrayWithObjects:
                             @"startBtnPS",
                             @"loadBtnSl",
                             @"displayBtnSl",
                             nil];
    
    NSArray *btnNromalList = [NSArray arrayWithObjects:
                              @"startBtnNR",
                              @"loadBtnNR",
                              @"displayBtnNR",
                              nil];
    
    [self setBtnWithPressList:btnPressList NormalList:btnNromalList];
}

- (void)setBtnWithPressList:(NSArray *)pressList NormalList:(NSArray *)normalList
{
    NSArray *nameList = [NSArray arrayWithObjects:
                         @"新的征途",
                         @"拾旧山河",
                         @"浩瀚书海",
                         nil];
    
    for (int i=0; i<3; i++)
    {
        UIButton *btn = [NTAMainButton createMainBtn];
        NSInteger width = btn.frame .size.width;
        NSInteger height = btn.frame.size.height;
        CGRect frame = CGRectMake(CGRectGetMidX(VIEW_BOUNDS) - width / 2.0,
                                  CGRectGetMidY(VIEW_BOUNDS) - height / 2.0 + height * i * 1.5,
                                  width,
                                  height);
        btn.frame = frame;
        [btn setImage:[UIImage imageNamed:pressList[i]] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:normalList[i]] forState:UIControlStateSelected];
        [btn setTitle:nameList[i] forState:UIControlStateNormal];
        
        [self.view addSubview:btn];
    }
}

- (void)versionDisplay
{
    CGRect frame = CGRectMake(CGRectGetMaxX(VIEW_BOUNDS) - 120, CGRectGetMaxY(VIEW_BOUNDS) - 40, 0, 0);
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    [label setText:@"Version 1.00"];
    [label setTextColor:[UIColor whiteColor]];
    [label sizeToFit];
    [self.view addSubview:label];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
