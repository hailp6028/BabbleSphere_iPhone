//
//  SignUpViewController.m
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import "SignUpViewController.h"
#import "TermsAndConditionsViewController.h"
#import "PrivacyPolicyViewController.h"

@implementation SignUpViewController
@synthesize textFieldFirstName;
@synthesize textFieldLastName;
@synthesize textFieldEmailAddress;
@synthesize textFieldPassword;
@synthesize textFieldConfirmPassword;

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
    [self setTextFieldFirstName:nil];
    [self setTextFieldLastName:nil];
    [self setTextFieldEmailAddress:nil];
    [self setTextFieldPassword:nil];
    [self setTextFieldConfirmPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [textFieldFirstName release];
    [textFieldLastName release];
    [textFieldEmailAddress release];
    [textFieldPassword release];
    [textFieldConfirmPassword release];
    [super dealloc];
}

#pragma mark - Text field delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Button click handlers

- (IBAction)onButtonSignUpClicked:(id)sender {
}

- (IBAction)onButtonSignUpUsingFacebookClicked:(id)sender {
}

- (IBAction)onButtonTermsAndConditionsClicked:(id)sender {
    NSLog(@"terms & conditions");
    TermsAndConditionsViewController *vcTermsAndConditions = [[TermsAndConditionsViewController alloc] init];
    [self.navigationController pushViewController:vcTermsAndConditions animated:YES];
    [vcTermsAndConditions release];
}

- (IBAction)onButtonPrivacyPolicyClicked:(id)sender {
    NSLog(@"privacy policy");
    PrivacyPolicyViewController *vcPrivacyPolicy = [[PrivacyPolicyViewController alloc] init];
    [self.navigationController pushViewController:vcPrivacyPolicy animated:YES];
    [vcPrivacyPolicy release];
}

@end
