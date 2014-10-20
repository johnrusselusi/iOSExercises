//
//  SimpleAnimationViewController.m
//  SimpleAnimations
//
//  Created by John Russel Usi on 10/14/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "SimpleAnimationViewController.h"
#define animationFrameXAxis 60
#define animationFrameYAxis 95
#define animationFrameWidth 86
#define animationFrameHeight 193
#define animationTime 0.5

@interface SimpleAnimationViewController ()

@property (nonatomic) BOOL isOpen;

@property (weak, nonatomic) IBOutlet UIImageView *topDoor;
@property (weak, nonatomic) IBOutlet UIImageView *bottomDoor;
@property (weak, nonatomic) IBOutlet UIImageView *animatedImage;

@end

@implementation SimpleAnimationViewController

- (void)viewDidLoad{
  [super viewDidLoad];
  
  NSString *image1Name = @"1.png";
  NSString *image2Name = @"2.png";
  
  UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                   action:@selector(openBasket:)];
  
  [self.view addGestureRecognizer:singleFingerTap];
  
  NSArray *imageNames = @[image1Name, image2Name];
  
  NSMutableArray *images = [[NSMutableArray alloc] init];
  for (int i = 0; i < imageNames.count; i++) {
    [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
  }
  
  //UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 95, 86, 193)];
  _animatedImage.frame = CGRectMake(animationFrameXAxis,
                                    animationFrameYAxis,
                                    animationFrameWidth,
                                    animationFrameHeight);
  
  _animatedImage.animationImages = images;
  _animatedImage.animationDuration = animationTime;
  
  [_animatedImage startAnimating];
  
}

- (void)openBasket:(UITapGestureRecognizer *)recognizer {
  
  if (!_isOpen) {
    
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                       
                       self.topDoor.frame = CGRectMake(self.topDoor.frame.origin.x, self.topDoor.frame.origin.y - 400, self.topDoor.frame.size.width, self.topDoor.frame.size.height);
                       self.bottomDoor.frame = CGRectMake(self.bottomDoor.frame.origin.x, self.bottomDoor.frame.origin.y + 400, self.bottomDoor.frame.size.width, self.bottomDoor.frame.size.height);
                       
                     }
                     completion:NULL];
    self.isOpen = TRUE;
    
  } else {
    
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                       
                       self.topDoor.frame = CGRectMake(self.topDoor.frame.origin.x, self.topDoor.frame.origin.y + 400, self.topDoor.frame.size.width, self.topDoor.frame.size.height);
                       self.bottomDoor.frame = CGRectMake(self.bottomDoor.frame.origin.x, self.bottomDoor.frame.origin.y - 400, self.bottomDoor.frame.size.width, self.bottomDoor.frame.size.height);
                     }
                     completion:NULL];
    self.isOpen = FALSE;
  }
}
@end
