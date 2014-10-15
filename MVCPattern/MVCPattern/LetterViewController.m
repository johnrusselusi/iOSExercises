//
//  LetterViewController.m
//  MVCPattern
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "LetterViewController.h"
#import "DetailsViewController.h"
#import "LetterViewCell.h"
#import "Letter.h"

@interface LetterViewController ()

@property (nonatomic, strong)NSArray *thumbnails;

@end

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
  
  self.thumbnails = [NSArray arrayWithObjects:@"A.png", @"B.png", @"C.png", nil];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
  
  return [_letters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  LetterViewCell *cell = (LetterViewCell *)[tableView dequeueReusableCellWithIdentifier:@"LetterViewCell"];
  if (cell == nil) {
    
    NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"LetterViewCell"
                                                owner:self
                                              options:nil];
    cell = [nib objectAtIndex:0];
  }
  
  Letter *letter = _letters[indexPath.row];
  
  cell.itemName.text = letter.character;
  cell.itemInformation.text = letter.information;
  cell.itemType.text = [Letter description];
  
  cell.thumbnail.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

  DetailsViewController *dvc = [[DetailsViewController alloc]init];
  
  Letter *selectedLetter = _letters[indexPath.row];
  dvc.letter = selectedLetter;
  
  [self.navigationController pushViewController:dvc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 78;
}
@end
