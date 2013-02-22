//
//  ANViewController.h
//  Animation
//
//  Created by Mary Jenn on 2/21/13.
//  Copyright (c) 2013 Mary Jenn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *ANButton;

- (IBAction)movePressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *lilyImageView;


@property (weak, nonatomic) IBOutlet UIView *ANView;

@end
