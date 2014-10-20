//
//  ImageViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ImageViewController.h"

static int const IMAGE_X_AXIS = 0;
static int const IMAGE_Y_AXIS = 0;
static int const FULL_IMAGE_WIDTH = 320;
static int const FULL_IMAGE_HEIGHT = 480;
static int const THUMBNAIL_WIDTH = 120;
static int const THUMBNAIL_HEIGHT = 120;

@interface ImageViewController ()

@property (nonatomic, strong) UIImage *originalImage;
@property (strong, nonatomic) UIImage *thumbnail;

@end

@implementation ImageViewController

- (void)viewDidLoad{

    [super viewDidLoad];
  
    self.originalImage = [UIImage imageNamed:@"1"];
    CGSize thumbnailSize = CGSizeMake(THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT);
  
    UIGraphicsBeginImageContext(thumbnailSize);
    [self.originalImage drawInRect:CGRectMake(IMAGE_X_AXIS, IMAGE_Y_AXIS, THUMBNAIL_WIDTH, THUMBNAIL_HEIGHT)];
    UIImageView *imageView = [[UIImageView alloc]
                            initWithFrame:CGRectMake(0, 80, THUMBNAIL_WIDTH,
                                                     THUMBNAIL_HEIGHT)];
    [imageView setImage:UIGraphicsGetImageFromCurrentImageContext()];
    UIGraphicsEndImageContext();
  
    [self.view addSubview:imageView];
  
    [imageView setUserInteractionEnabled:YES];
  
    UIGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                              action:@selector(viewFullImageSize:)];
    [imageView addGestureRecognizer:tapRecognizer];
}

- (void)viewFullImageSize:(UIGestureRecognizer *)gr{

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(IMAGE_X_AXIS,
                                                                          IMAGE_Y_AXIS,
                                                                          FULL_IMAGE_WIDTH,
                                                                          FULL_IMAGE_HEIGHT)];
    [imageView setImage:self.originalImage];
    [self.view addSubview:imageView];
}

@end
