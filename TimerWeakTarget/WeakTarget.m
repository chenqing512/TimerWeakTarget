//
//  WeakTarget.m
//  TimerWeakTarget
//
//  Created by ChenQing on 17/9/25.
//  Copyright © 2017年 ChenQing. All rights reserved.
//

#import "WeakTarget.h"

@interface WeakTarget ()

@property (nonatomic,weak) id target;

@end

@implementation WeakTarget

-(instancetype)initWithTarget:(id)target{
    _target=target;
    return self;
}

+(instancetype)weakTarget:(id)target{
    return [[WeakTarget alloc]initWithTarget:target];
}

/**
 消息转发

 @param aSelector <#aSelector description#>
 @return <#return value description#>
 */
-(id)forwardingTargetForSelector:(SEL)aSelector{
    return _target;
}



@end
