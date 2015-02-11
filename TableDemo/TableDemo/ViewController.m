//
//  ViewController.m
//  TableDemo
//
//  Created by Joseph Hilland on 10/1/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // hard coded to have 5 rows in table
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // see above we need to create a UITableViewCell object
    // the "cellForRowAtIndexPath gets called for every tab you have created
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    // object created above, now we put some text in  it and then return it
    cell.textLabel.text = @"This is a cell";
    return cell;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
