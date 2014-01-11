//
//  Demo.h
//  ObjC-Demos
//
//  Created by Mykhaylo Zaloznyy on 2/28/11.
//  Copyright 2011 CSN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hello.h"

@interface Demo : NSObject <HelloDelegate> {

}

-(void)sayHello;
@end
