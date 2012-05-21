//
//  LoginViewController.h
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldUsername;
@property (retain, nonatomic) IBOutlet UITextField *textFieldPassword;

- (IBAction)onButtonLoginClicked:(id)sender;
- (IBAction)onButtonConnectUsingFacebookClicked:(id)sender;
- (IBAction)onButtonSignUpClicked:(id)sender;

@end
