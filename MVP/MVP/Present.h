//
//  Present.h
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//


#ifndef Present_h
#define Present_h

@protocol PresentDelegate <NSObject>

-(void)refreshVcWithData:(NSString*)resultString;

@end

@interface Present : NSObject

@property (nonatomic, weak) id<PresentDelegate> delegate;
-(void)doSomeThing;

@end

#endif /* Present_h */
