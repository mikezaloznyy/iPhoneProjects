//
//  main.m
//  ObjC-Demos
//
//  Created by Mykhaylo Zaloznyy on 2/27/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Hello.h"
#import "Demo.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// Display message on Xcode Console
	printf("Hello C-String\n");
	
	// Sample usage of NSLog() from the Foundation Framework
	NSLog(@"Hello NSString");
	
	// Declare a pointer to an instance of a Hello class
	Hello *ptr;
	
	// Allocate an instance of a Hello class
	ptr = [Hello alloc];
	
	// Initialize the instance of the Hello class
	ptr = [ptr init];
	
	// Display info about the instance of the class.
	// Four ways of saying the same thing
	NSLog( @"%@", ptr );
	NSLog( @"%@", [ptr description] );
	NSLog( @"%p", ptr );
	printf( "%p\n", ptr );
	
	// Send Hello a class method
	[Hello demoClassMethod];
	
	// Send ptr an instance method
	[ptr demoInstanceMethod];
	
	// Send class methods with parameters
	[Hello demoOneParam:456];
	int sum = [Hello demoTwoParams:10 paramTwo:20];
	NSLog( @"sum: %d", sum);
	
	// Test debugMode
	NSLog( @"debugMode: %d", [ptr debugMode]);
	[ptr setDebugMode:YES];
	NSLog( @"debugMode: %d", [ptr debugMode]);
	
	// Access count using Objective-C 2.0
	NSLog( @"ptr.count: %d", ptr.count);
	ptr.count = 123;
	NSLog( @"ptr.count: %d", ptr.count);

	// Access count using Objective-C 1.0
	NSLog( @"[ptr count]: %d", [ptr count]);
	[ptr setCount:456];
	NSLog( @"[ptr count]: %d", [ptr count]);

	// Demo Hello with HelloDelegate
	// Create instance of Hello Object
	Hello *hello = [[Hello alloc] init];
	
	// Create instance of Demo object
	Demo *demo = [[Demo alloc] init];
	
	// Set Hello object delegate to demo
	hello.delegate = demo;
	
	// Hello object calls the delegate 
	[hello.delegate sayHello];
	
	// All done
	[demo release];
	[hello release];
	
	// Release the object's memory
	[ptr release];
	
	// Allocate an object
	ptr = [[Hello alloc] init];
	
	// Show retain count
	NSLog( @"[ptr retainCount]: %d", [ptr retainCount] );
	
	// Increment the retain count
	[ptr retain];
	NSLog( @"[ptr retainCount]: %d", [ptr retainCount] );
	
	// Decrement the retain count
	[ptr release];
	NSLog( @"[ptr retainCount]: %d", [ptr retainCount] );
	
	// All done with this object
	[ptr release];
	
	// Allocate an object
	ptr = [[Hello alloc] init];
	NSLog( @"After alloc/init: %@", [ptr description]);
	
	// Send it autorelease.
	// This says to release the object soon but not now
	[ptr autorelease];
	NSLog( @"After autorelease: %@", [ptr description]);
	
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
