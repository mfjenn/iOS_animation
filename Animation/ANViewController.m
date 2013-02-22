//
//  ANViewController.m
//  Animation
//
//  Created by Mary Jenn on 2/21/13.
//  Copyright (c) 2013 Mary Jenn. All rights reserved.
//

#import "ANViewController.h"

@interface ANViewController ()

@end

@implementation ANViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)movePressed:(id)sender {
   
    __block CGRect viewFrame = self.ANView.frame;
    
    if (viewFrame.origin.y == 0) {
        
        viewFrame.origin.x = 50;
        viewFrame.origin.y = 200;
        
        CGRect lilyImageViewFrame = self.lilyImageView.frame;
        
        lilyImageViewFrame.origin.x = CGRectGetMaxX(viewFrame) +15;
        lilyImageViewFrame.origin.y = viewFrame.origin.y;
        
      
        [UIView animateWithDuration:1 animations:^{
            self.ANView.frame = viewFrame;
            self.lilyImageView.frame = lilyImageViewFrame;
        }];
        return;
    }
    
    viewFrame.origin.y = 0;
    
    [UIView animateWithDuration:0.3
                     animations:^{ self.ANView.frame = viewFrame; }
                     completion:^(BOOL finished) {
                         NSLog(@"Hey I'm done!");
                         
                         viewFrame.origin.x += 150;
                         
                         CGRect lilyImageViewFrame = self.lilyImageView.frame;
                         
                         lilyImageViewFrame.origin.x = viewFrame.origin.x - lilyImageViewFrame.size.width -10;
                         lilyImageViewFrame.origin.y = viewFrame.origin.y;
                         lilyImageViewFrame.size.width = 50;
                         
                         
                         [UIView animateWithDuration:0.5
                                          animations:^{
                                              self.ANView.frame = viewFrame;
                                              self.lilyImageView.frame = lilyImageViewFrame;
                                          }
                                          completion:^(BOOL finished) {
                                              viewFrame.origin.x -= 300;
                                              
                                              [UIView animateWithDuration:0.5 animations:^{
                                                  self.ANView.frame = viewFrame;
                                                  
                                              }];
                                              
                                          }];
                     }];
    
    NSLog(@"Hey I'm here!");

}
@end
