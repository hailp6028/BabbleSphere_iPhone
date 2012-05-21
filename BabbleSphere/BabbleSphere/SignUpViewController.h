//
//  SignUpViewController.h
//  BabbleSphere
//
//  Created by Tung Ngo on 5/21/12.
//  Copyright (c) 2012 SETA:CINQ Vietnam., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *textFieldFirstName;
@property (retain, nonatomic) IBOutlet UITextField *textFieldLastName;
@property (retain, nonatomic) IBOutlet UITextField *textFieldEmailAddress;
@property (retain, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (retain, nonatomic) IBOutlet UITextField *textFieldConfirmPassword;

- (IBAction)onButtonSignUpClicked:(id)sender;
- (IBAction)onButtonSignUpUsingFacebookClicked:(id)sender;
- (IBAction)onButtonTermsAndConditionsClicked:(id)sender;
- (IBAction)onButtonPrivacyPolicyClicked:(id)sender;

@end
