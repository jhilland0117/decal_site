//
//  main.m
//  Fractions
//
//  Created by Joseph Hilland on 6/9/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumberator : (int) n;
-(void) setDenominator : (int) d;
-(int) numerator;
-(int) denominator;

@end


@implementation Fraction {

    int numerator;
    int denominator;
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(void) setNumberator : (int) n
{
    numerator = n;
}

-(void) setDenominator : (int) d
{
    denominator = d;
}

-(void) print
{
    printf("%i/%i", numerator, denominator);
}
@end

// ------ Program Section -------- //

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction *myFraction;
        
        myFraction = [[Fraction alloc] init];
        //myFraction = [myFraction init];
        
        [myFraction setNumberator: 1];
        [myFraction setDenominator: 3];
        
        printf("The value of my fraction is\n");
        [myFraction print];
        
        [myFraction setNumberator:4];
        [myFraction setDenominator:5];
        
        printf("\nThe fraction is\n");
        [myFraction print];
        printf("\n");
        
        printf("The fraction this way is %i/%i\n", [myFraction numerator], [myFraction denominator]);
        
    }
    return 0;
}

