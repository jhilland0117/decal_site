//
//  ViewController.m
//  PickerDemo
//
//  Created by Joseph Hilland on 10/1/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray *moods;

@end

@implementation ViewController

//----------------------- all of theses methods are called automatically -------------
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1; // since only one spinnig wheel
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    //number of items in each spinning wheel
    return [self.moods count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    // only one picker view so
    // this method is called automatically
    return self.moods[row];
    
}

// responding to a row selection
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    UIColor *moodcolor;
    
    switch (row) {
        case 0: case 2: case 4:
            moodcolor = [UIColor colorWithRed:1.0 green:0.5 blue:0 alpha:1];
            break;
        case 1: case 3: case 5:
            moodcolor = [UIColor colorWithRed:0.85 green:0.5 blue:0.5 alpha:1];
            break;
        case 6:
            moodcolor = [UIColor greenColor];
            break;
            
        default:
            moodcolor = [UIColor whiteColor];
            break;
    }
    
    [[self view] setBackgroundColor:moodcolor ];
    // or
    // self.view.backgroundColor = moodcolor;
}
//---------------------------------------------------------------------------------------


- (void)viewDidLoad {
    [super viewDidLoad];
    // moods (data) that we want to appear in spinning wheel
    self.moods = @[@"happy", @"sad", @"angry", @"depressed", @"excited", @"confused", @"cynical"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
