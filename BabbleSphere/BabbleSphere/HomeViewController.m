//
//  HomeViewController.m
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import "HomeViewController.h"
#import "SettingsViewController.h"

@implementation HomeViewController

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

#pragma mark - Button click handlers

- (IBAction)onButtonLogOutClicked:(id)sender {
}

- (IBAction)onButtonCreateABabbleClicked:(id)sender {
}

- (IBAction)onButtonMyBabblesClicked:(id)sender {
}

- (IBAction)onButtonSettingsClicked:(id)sender {
    SettingsViewController *vcSettings = [[SettingsViewController alloc] init];
    [self.navigationController pushViewController:vcSettings animated:YES];
    [vcSettings release];
}

@end
