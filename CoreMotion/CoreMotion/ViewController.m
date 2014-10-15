//
//  ViewController.m
//  CoreMotion
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad{
  
  [super viewDidLoad];
  
  currentMaxAccelX = 0;
  currentMaxAccelY = 0;
  currentMaxAccelZ = 0;
  
  currentMaxRotX = 0;
  currentMaxRotY = 0;
  currentMaxRotZ = 0;
  
  self.motionManager = [[CMMotionManager alloc]init];
  self.motionManager.accelerometerUpdateInterval = 0.2;
  self.motionManager.gyroUpdateInterval = 0.2;
  
  [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
                                           withHandler:^(CMAccelerometerData *accelerometerData, NSError *error){
                                             [self outputAccelertionData:accelerometerData.acceleration];
                                             if (error) {
                                               
                                               NSLog(@"%@", error);
                                             }
                                           }];
  
  [self.motionManager startGyroUpdatesToQueue:[NSOperationQueue currentQueue]
                                  withHandler:^(CMGyroData *gyroData, NSError *error){
                                    [self outputRotationData:gyroData.rotationRate];
                                  }];
}

-(void)outputAccelertionData:(CMAcceleration)acceleration
{
  self.accX.text = [NSString stringWithFormat:@" %.2fg",acceleration.x];
  if(fabs(acceleration.x) > fabs(currentMaxAccelX))
  {
    currentMaxAccelX = acceleration.x;
  }
  self.accY.text = [NSString stringWithFormat:@" %.2fg",acceleration.y];
  if(fabs(acceleration.y) > fabs(currentMaxAccelY))
  {
    currentMaxAccelY = acceleration.y;
  }
  self.accZ.text = [NSString stringWithFormat:@" %.2fg",acceleration.z];
  if(fabs(acceleration.z) > fabs(currentMaxAccelZ))
  {
    currentMaxAccelZ = acceleration.z;
  }
  
  self.maxAccX.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelX];
  self.maxAccY.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelY];
  self.maxAccZ.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelZ];
  
  UIInterpolatingMotionEffect *motionEffect;
  motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                                 type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
  motionEffect.minimumRelativeValue = @-25;
  motionEffect.maximumRelativeValue = @25;
  [self.resetMaxValues addMotionEffect:motionEffect];
  motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                                 type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
  motionEffect.minimumRelativeValue = @-25;
  motionEffect.maximumRelativeValue = @25;
  [self.resetMaxValues addMotionEffect:motionEffect];
}
-(void)outputRotationData:(CMRotationRate)rotation
{
  
  self.rotX.text = [NSString stringWithFormat:@" %.2fr/s",rotation.x];
  if(fabs(rotation.x) > fabs(currentMaxRotX))
  {
    currentMaxRotX = rotation.x;
  }
  self.rotY.text = [NSString stringWithFormat:@" %.2fr/s",rotation.y];
  if(fabs(rotation.y) > fabs(currentMaxRotY))
  {
    currentMaxRotY = rotation.y;
  }
  self.rotZ.text = [NSString stringWithFormat:@" %.2fr/s",rotation.z];
  if(fabs(rotation.z) > fabs(currentMaxRotZ))
  {
    currentMaxRotZ = rotation.z;
  }
  
  self.maxRotX.text = [NSString stringWithFormat:@" %.2f",currentMaxRotX];
  self.maxRotY.text = [NSString stringWithFormat:@" %.2f",currentMaxRotY];
  self.maxRotZ.text = [NSString stringWithFormat:@" %.2f",currentMaxRotZ];
}

- (IBAction)resetMaxValues:(id)sender {
  
  currentMaxAccelX = 0;
  currentMaxAccelY = 0;
  currentMaxAccelZ = 0;
  
  currentMaxRotX = 0;
  currentMaxRotY = 0;
  currentMaxRotZ = 0;
}

@end
