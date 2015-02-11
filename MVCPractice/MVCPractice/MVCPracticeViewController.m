//
//  MVCPracticeViewController.m
//  MVCPractice
//
//  Created by Joseph Hilland on 9/15/14.
//  Copyright (c) 2014 Effect. All rights reserved.
//

#import "MVCPracticeViewController.h"

@interface MVCPracticeViewController ()

// these are for the first name
@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;

@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;


// these are for the last name
@property (weak, nonatomic) IBOutlet UITextField *simpleTextTwo;

@property (weak, nonatomic) IBOutlet UILabel *simpleLabelTwo;


@end



@implementation MVCPracticeViewController
// ---------------------Utilized for the actions (buttons)---------------------------
- (IBAction)changeLabel:(id)sender {
    
    NSString *contents = self.simpleTextField.text;
    NSString *message = [NSString stringWithFormat:@"Hello %@", contents];
    [self.simpleLabel setText:message];
    
    [self.simpleTextField resignFirstResponder];
}

- (IBAction)changeLastLabel:(id)sender {
    NSString *contents = self.simpleTextTwo.text;
    NSString *message = [NSString stringWithFormat:@"Last: %@", contents];
    [self.simpleLabelTwo setText:message];
    
    [self.simpleTextTwo resignFirstResponder];
}
// ----------------------------------------------------------------------------------


// ---------------- Utilized for making keyboard go away in differ ways ------------
// text field goes away when you click on return
- (void) textFieldShouldReturn:(UITextField *) textField {
    [self.simpleTextField resignFirstResponder];
    [self.simpleTextTwo resignFirstResponder];
}

// built in method to inject code for responding to multiple touching
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.simpleTextField resignFirstResponder];
    [self.simpleTextTwo resignFirstResponder];
    // the below forces all others to give up first responder
    // good for use with large applications
    //[self.view endEditing:YES];
}

// ----------------------------------------------------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // this is an example of an alert that can be generated for ios apps
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Immediate alert" message:@"here is you alert message" delegate:nil cancelButtonTitle:@"okay" otherButtonTitles:nil, nil];
    
    [myAlert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
