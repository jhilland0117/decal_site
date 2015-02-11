//
//  main.m
//  GettingReady
//
//  Created by Joseph Hilland on 6/16/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GettingReady : NSObject

-(void) brushTeeth;
-(void) putOnClothes;
-(void) takeShower;

@end


@implementation GettingReady {
    
}

-(void) brushTeeth {
    printf("you brushed your teeth");
}

-(void) putOnClothes {
    printf("you put on your clothes");
}

-(void) takeShower {
    printf("you took a shower");
}


@end

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        GettingReady *myClass = [[GettingReady alloc] init ];
        
        [myClass brushTeeth];
        [myClass putOnClothes];
        
    }
    return 0;
}

