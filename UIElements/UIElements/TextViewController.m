//
//  TextViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController () <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UILabel *textLabel;
@property (retain, nonatomic) IBOutlet UITextField *textField;
@property (retain, nonatomic) IBOutlet UITextView *textView;

@end

@implementation TextViewController

- (void)viewDidLoad{

    [super viewDidLoad];
  
    self.textField.placeholder = @"Enter a text here.";
    self.textField.returnKeyType = UIReturnKeyDone;
    self.textField.delegate = self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
  
    NSString *textViewCurrentText = self.textView.text;
  
    self.textView.text = textField.text;
    [textField resignFirstResponder];
    [self.textView setText:[NSString stringWithFormat:@"%@ %@", textViewCurrentText, textField.text]];
    return YES;
}

- (void)dealloc{

    [_textLabel release];
    _textLabel = nil;
    
    [_textField release];
    _textField = nil;
    
    [_textView release];
    _textView = nil;
    
    [super dealloc];
}

@end
