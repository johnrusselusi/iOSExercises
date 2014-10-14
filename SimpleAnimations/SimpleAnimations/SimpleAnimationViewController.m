//
//  SimpleAnimationViewController.m
//  SimpleAnimations
//
//  Created by John Russel Usi on 10/14/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "SimpleAnimationViewController.h"

@interface SimpleAnimationViewController ()

@property (nonatomic) BOOL isOpen;

@property (weak, nonatomic) IBOutlet UIImageView *topDoor;
@property (weak, nonatomic) IBOutlet UIImageView *bottomDoor;

@end

@implementation SimpleAnimationViewController

- (void)viewDidLoad{
  [super viewDidLoad];
  
  UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                   action:@selector(openBasket:)];
  
  [self.view addGestureRecognizer:singleFingerTap];
  
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
