//
//  DetailViewController.h
//  MVCPattern
//
//  Created by John Russel Usi on 10/19/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ItemModel;

@interface DetailViewController : UIViewController

@property (nonatomic, strong) ItemModel *item;

@end
