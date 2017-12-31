//
//  NTARoler.h
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/30.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NTARoler_protocol <NSObject>

- (void)PrintRolerInfo;
- (void)changeName;

@end

@interface NTARoler : NSObject<NTARoler_protocol>

@property (nonatomic)NSString *name;
@property (nonatomic)NSString *race;

@end
