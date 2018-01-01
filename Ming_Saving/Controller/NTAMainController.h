//
//  NTAMainController.h
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/24.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import <UIKit/UIKit.h>
#define VIEW_BOUNDS self.view.frame

@protocol NTAMainVCProtocol <NSObject>

- (void)addBackImageView;
- (void)setBackImageViewWithImageName:(NSString *)imageString;
- (void)drawMainView;

@end

@interface NTAMainController : UIViewController<NTAMainVCProtocol>

@property (nonatomic,retain)UIImageView *backImageView;

@end
