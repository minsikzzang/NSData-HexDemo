//
//  ViewController.m
//  NSData+HexDemo
//
//  Created by Min Kim on 10/3/13.
//  Copyright (c) 2013 iFactory Lab Limited. All rights reserved.
//

#import "ViewController.h"
#import "NSData+Hex.h"

@interface ViewController ()

@property (retain, nonatomic) IBOutlet UILabel *textView;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  NSString *a = @"1111222233334444555566667777888899990000aaaabbbbccccddddeeee";
  NSString *o = [[a dataUsingEncoding:NSUTF8StringEncoding] hexString];
  NSLog(@"%@", o);
  // self.textView.text = o;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
  [_textView release];
  [super dealloc];
}
@end
