//
//  ViewController.m
//  TableDemoTwo
//
//  Created by Joseph Hilland on 10/1/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSDictionary *courseDetails;
    NSArray *justCourseNames;
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // return number of courses
    return courseDetails.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // create cell
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    // fill cell
    // fills with what is located in the array we created
    cell.textLabel.text = justCourseNames[indexPath.row];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // grab the resources of courses from the plist file
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"courses" withExtension:@"plist"];
    
    // load plist into dictionary
    courseDetails = [NSDictionary dictionaryWithContentsOfURL:url];
    
    // create an array with just the keys
    justCourseNames = courseDetails.allKeys;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
