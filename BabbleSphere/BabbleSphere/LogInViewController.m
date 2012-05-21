//
//  LoginViewController.m
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import "LogInViewController.h"
#import "Common.h"
#import "SignUpViewController.h"

@implementation LogInViewController
@synthesize textFieldUsername;
@synthesize textFieldPassword;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTextFieldUsername:nil];
    [self setTextFieldPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [textFieldUsername release];
    [textFieldPassword release];
    [super dealloc];
}

#pragma mark - Text field delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Button click handlers

- (IBAction)onButtonLoginClicked:(id)sender {
    //
    if (StringIsEmpty(textFieldUsername.text)) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must enter the username first!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
        return;
    }
    if (StringIsEmpty(textFieldPassword.text)) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"You must enter the password first!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        [alert release];
        return;
    }
    
    NSString *username = textFieldUsername.text;
    NSString *password = textFieldPassword.text;
    NSLog(@"username: %@, password: %@", username, password);
}

- (IBAction)onButtonConnectUsingFacebookClicked:(id)sender {
}

- (IBAction)onButtonSignUpClicked:(id)sender {
    SignUpViewController *vcSignUp = [[SignUpViewController alloc] init];
    [self.navigationController pushViewController:vcSignUp animated:YES];
    [vcSignUp release];
}

@end
