//
//  ItemModel.h
//  MVCPattern
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ItemModel : NSObject

@property (nonatomic, strong) NSArray *itemTitle;
@property (nonatomic, strong) NSArray *itemInfo;
@property (nonatomic, strong) NSArray *itemCategory;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
