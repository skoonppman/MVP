//
//  Present.m
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Present.h"
#import "Modual.h"

@interface Present()<ModualDelegate>

@property (nonatomic, strong)Modual* modual;

@end

@implementation Present

-(void)doSomeThing
{
    _modual = [[Modual alloc] init];
    _modual.delegate = self;
    [_modual updateData];
    //todo
    
}

-(void)dataUpdated
{
    NSString* result = [NSString stringWithFormat:@"%@%@%@",_modual.a,_modual.b,_modual.c];

    if([self.delegate respondsToSelector:@selector(refreshVcWithData:)])
    {
        [self.delegate refreshVcWithData:result];
    }
}

@end
