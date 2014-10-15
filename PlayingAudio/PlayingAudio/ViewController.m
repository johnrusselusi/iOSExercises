//
//  ViewController.m
//  PlayingAudio
//
//  Created by John Russel Usi on 10/15/14.
//  Copyright (c) 2014 Klab Cyscorpions Training Center. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{

  [super viewDidLoad];
  NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                       pathForResource:@"minion_laugh"
                                       ofType:@"aifc"]];
  
  NSError *error;
  _audioPlayer = [[AVAudioPlayer alloc]
                  initWithContentsOfURL:url
                  error:&error];
  if (error)
  {
    NSLog(@"Error in audioPlayer: %@",
          [error localizedDescription]);
  } else {
    _audioPlayer.delegate = self;
    [_audioPlayer prepareToPlay];
  }
}


- (IBAction)playAudio:(id)sender{

  [_audioPlayer play];
}

- (IBAction)stopAudio:(id)sender{

  [_audioPlayer stop];
}

- (IBAction)adjustVolume:(id)sender {
  if (_audioPlayer != nil)
  {
    _audioPlayer.volume = _volumeControl.value;
  }
}


@end
