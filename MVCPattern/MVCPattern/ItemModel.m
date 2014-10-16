//
//  ItemModel.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/16/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ItemModel.h"

@implementation ItemModel

- (instancetype)initWithDictionary:(NSDictionary *)dict{

  self = [super init];
  
  if (self) {
    
    self.itemTitle = [dict objectForKey:@"itemTitle"];
    self.itemInfo = [dict objectForKey:@"itemInfo"];
    self.itemCategory = [dict objectForKey:@"itemCategory"];
  }
  return self;
}

@end
