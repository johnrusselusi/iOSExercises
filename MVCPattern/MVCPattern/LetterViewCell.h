//
//  LetterViewCell.h
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LetterViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnail;
@property (weak, nonatomic) IBOutlet UILabel *itemName;
@property (weak, nonatomic) IBOutlet UILabel *itemInformation;
@property (weak, nonatomic) IBOutlet UILabel *itemType;


@end
