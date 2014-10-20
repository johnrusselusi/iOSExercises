//
//  ImageViewController.m
//  UIElements
//
//  Created by John Russel Usi on 10/17/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ImageViewController.h"
#define xAxis 0
#define yAxis 0
#define thumbanailWidth 120
#define thumbnailHeight 120

@interface ImageViewController ()

@property (nonatomic, strong) UIImage *originalImage;
@property (strong, nonatomic) UIImage *thumbnail;

@end

@implementation ImageViewController

- (void)viewDidLoad{

    [super viewDidLoad];
  
    self.originalImage = [UIImage imageNamed:@"1"];
    CGSize thumbnailSize = CGSizeMake(thumbanailWidth, thumbnailHeight);
  
    UIGraphicsBeginImageContext(thumbnailSize);
    [self.originalImage drawInRect:CGRectMake(xAxis, yAxis, thumbnailSize.width, thumbnailSize.height)];
    UIImageView *imageView = [[UIImageView alloc]
                            initWithFrame:CGRectMake(0, 80, thumbnailSize.width,
                                                     thumbnailSize.height)];
    [imageView setImage:UIGraphicsGetImageFromCurrentImageContext()];
    UIGraphicsEndImageContext();
  
    [self.view addSubview:imageView];
  
    [imageView setUserInteractionEnabled:YES];
  
    UIGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                              action:@selector(viewFullImageSize:)];
    [imageView addGestureRecognizer:tapRecognizer];
}

- (void)viewFullImageSize:(UIGestureRecognizer *)gr{

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 80, 320, 400)];
    [imageView setImage:self.originalImage];
    [self.view addSubview:imageView];
}

@end
