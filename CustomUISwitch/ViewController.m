//
//  ViewController.m
//  CustomUISwitch
//
//  Created by hiepnq on 9/16/15.
//  Copyright (c) 2015 hiepnq. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonON;
@property (weak, nonatomic) IBOutlet UIButton *buttonOFF;

@end

@implementation ViewController
{
    CustomSwitch *mySwitch;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [_buttonON setImage:[UIImage imageNamed:@"OnWhiteDown"] forState:normal];
    [_buttonOFF setImage:[UIImage imageNamed:@"OffWhiteUp"] forState:normal];
    _buttonON.showsTouchWhenHighlighted = YES;
    _buttonOFF.showsTouchWhenHighlighted= YES;
    
    mySwitch = [[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 69, 60)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width * 0.5, 120);
    [self.view addSubview:mySwitch];
}

- (IBAction)buttonOnWhite:(id)sender {
    if([_buttonON.currentImage isEqual:[UIImage imageNamed:@"OnWhiteUp"]]){
        [_buttonON setImage:[UIImage imageNamed:@"OnWhiteDown"] forState:normal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffWhiteUp"] forState:normal];
    }

    
}
- (IBAction)buttonOffWhite:(id)sender {
    if([_buttonOFF.currentImage isEqual:[UIImage imageNamed:@"OffWhiteUp"]]){
        [_buttonON setImage:[UIImage imageNamed:@"OnWhiteUp"] forState:normal];
        [_buttonOFF setImage:[UIImage imageNamed:@"OffWhiteDown"] forState:normal];
    }
}

@end
