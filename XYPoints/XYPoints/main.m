//
//  main.m
//  XYPoints
//
//  Created by Joseph Hilland on 6/16/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoints : NSObject

-(void) XPoint: (int) x;
-(void) YPoint: (int) y;
-(void) print;

@end

@implementation XYPoints {
    int setX;
    int setY;
}

-(void) print {
    printf("the coordinates are (%i, %i)\n", setX, setY);
}

-(void) XPoint:(int)x {
    setX = x;
}

-(void) YPoint:(int)y {
    setY = y;
}


@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        XYPoints *thePoints = [[XYPoints alloc] init];
        [thePoints XPoint: 4];
        [thePoints YPoint: 5];
        [thePoints print];
        
    }
    return 0;
}

