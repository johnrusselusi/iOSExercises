//
//  DetailsViewController.h
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Letter;
@class Number;
@class Color;

@interface DetailsViewController : UIViewController

@property (nonatomic, strong) Letter *letter;
@property (nonatomic, strong) Number *number;
@property (nonatomic, strong) Color *color;

@end
