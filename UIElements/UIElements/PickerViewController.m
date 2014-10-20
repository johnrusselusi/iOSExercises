//
//  PickerViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (retain, nonatomic) NSArray *pickerData;
@property (retain, nonatomic) IBOutlet UILabel *textLabel;
@property (retain, nonatomic) IBOutlet UIPickerView *picker;

@end

@implementation PickerViewController

- (void)viewDidLoad{

    [super viewDidLoad];
  
    self.pickerData = [NSArray arrayWithObjects:@"Item 1", @"Item 2", @"Item 3", @"Item 4", @"Item 5", nil];
  
    self.picker.dataSource = self;
    self.picker.delegate = self;
  
}

- (int)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{

    return [self.pickerData count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{

    return self.pickerData[row];
}

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{

    self.textLabel.text = self.pickerData[row];
}

- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView{

    return 1;
}

- (void)dealloc{

    [_pickerData release];
    _pickerData = nil;
    
    [_textLabel release];
    _textLabel = nil;
    
    [_picker release];
    _picker = nil;
    
    [super dealloc];
}

@end
