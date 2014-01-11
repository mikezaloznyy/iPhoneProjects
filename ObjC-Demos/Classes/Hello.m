//
//  Hello.m
//  ObjC-Demos
//
//  Created by Mykhaylo Zaloznyy on 2/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import "Hello.h"

@implementation Hello
@synthesize count;
@synthesize delegate;

+(void)demoClassMethod {
	NSLog( @"%s", __FUNCTION__ );
}

-(void)demoInstanceMethod {
	NSLog( @"%s", __FUNCTION__ );
}

+(void)demoOneParam:(int)theParam {
	NSLog( @"%s theParam: %d", __FUNCTION__, theParam );
}

+(int)demoTwoParams:(int)numOne paramTwo:(int)numTwo {
	NSLog( @"%s numOne: %d, numTwo: %d", __FUNCTION__, numOne, numTwo );
	return numOne + numTwo;
}

-(BOOL)debugMode {
	return debugMode;
}

-(void)setDebugMode:(BOOL)value {
	debugMode = value;
}

@end
