//
//  NTAGameObserver.h
//  Ming_Saving
//
//  Created by 柳宇男 on 17/12/31.
//  Copyright © 2017年 柳宇男. All rights reserved.
//

#import <Foundation/Foundation.h>
//游戏观察者类，提供一个游戏对象属性的监听器,不必知道具体的对象类型
@interface NTAGameObserver : NSObject

/*
 object:被监听的对象
 keypath:监听对象发生变化的的属性的key
 target:观察者
 selector:使得监测值发生变化的方法
 */
+ (instancetype)observerWithObject:(id)object
                           keyPath:(NSString*)keyPath
                            target:(id)target
                          selector:(SEL)selector;



@property (nonatomic, weak) id target;
@property (nonatomic) SEL selector;
@property (nonatomic, weak) id observedObject;
@property (nonatomic, copy) NSString* keyPath;


@end
