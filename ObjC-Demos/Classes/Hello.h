//
//  Hello.h
//  ObjC-Demos
//
//  Created by Mykhaylo Zaloznyy on 2/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HelloDelegate
-(void)sayHello;
@end

@interface Hello : NSObject {
	BOOL debugMode;
	NSInteger count;
	id delegate;
}

@property (nonatomic, assign) id delegate;
@property (nonatomic) NSInteger count;

+(void)demoClassMethod;
-(void)demoInstanceMethod;
+(void)demoOneParam:(int)theParam;
+(int)demoTwoParams:(int)numOne paramTwo:(int)numTwo;
-(BOOL)debugMode;
-(void)setDebugMode:(BOOL)value;

@end
