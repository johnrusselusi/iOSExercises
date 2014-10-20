//
//  ViewController.h
//  CoreMotion
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

double currentMaxAccelX;
double currentMaxAccelY;
double currentMaxAccelZ;
double currentMaxRotX;
double currentMaxRotY;
double currentMaxRotZ;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *accX;
@property (weak, nonatomic) IBOutlet UILabel *accY;
@property (weak, nonatomic) IBOutlet UILabel *accZ;
@property (weak, nonatomic) IBOutlet UILabel *rotX;
@property (weak, nonatomic) IBOutlet UILabel *rotY;
@property (weak, nonatomic) IBOutlet UILabel *rotZ;
@property (weak, nonatomic) IBOutlet UILabel *maxAccX;
@property (weak, nonatomic) IBOutlet UILabel *maxAccY;
@property (weak, nonatomic) IBOutlet UILabel *maxAccZ;
@property (weak, nonatomic) IBOutlet UILabel *maxRotX;
@property (weak, nonatomic) IBOutlet UILabel *maxRotY;
@property (weak, nonatomic) IBOutlet UILabel *maxRotZ;

@property (strong, nonatomic) CMMotionManager *motionManager;

@property (weak, nonatomic) IBOutlet UIButton *resetMaxValues;

@end
