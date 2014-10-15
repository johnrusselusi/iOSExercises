//
//  LetterViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "LetterViewController.h"
#import "DetailsViewController.h"
#import "Letter.h"

@implementation LetterViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  
  _letters = [[NSMutableArray alloc]init];
  
  for (int i = 0; i < 3; i++) {
    
    Letter *letter = [[Letter alloc]init];
    
    if (i == 0) {
      
      letter.character = @"A";
      letter.information = @"1st letter of the alphabet";
    } else if (i == 1) {
      
      letter.character = @"B";
      letter.information = @"2nd letter of the alphabet";
    } else if (i == 2) {
      
      letter.character = @"C";
      letter.information = @"3rd letter of the alphabet";
    }
    
    [_letters addObject:letter];
  }

}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
  
  return [_letters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  UITableViewCell *cell =
  [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                        reuseIdentifier:@"UITableViewCell"];
  
  Letter *letter = _letters[indexPath.row];
  
  cell.textLabel.text = [letter description];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  DetailsViewController *dvc = [[DetailsViewController alloc]init];
  
  Letter *selectedLetter = _letters[indexPath.row];
  dvc.letter = selectedLetter;
  
  [self.navigationController pushViewController:dvc animated:YES];
}
@end
