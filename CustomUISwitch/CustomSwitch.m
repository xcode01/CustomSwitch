//
//  CustomSwitch.m
//  CustomUISwitch
//
//  Created by hiepnq on 9/16/15.
//  Copyright (c) 2015 hiepnq. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch
{
    UIButton *_switchON;
    UIButton *_switchOFF;
}
-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 138, 60)];
    _switchON = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 69, 60)];
    _switchOFF = [[UIButton alloc] initWithFrame:CGRectMake(69, 0, 69, 60)];
    [_switchON addTarget:self
                  action:@selector(pressON)
        forControlEvents:UIControlEventTouchUpInside];
    [_switchOFF addTarget:self
                   action:@selector(pressOFF)
         forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_switchON];
    [self addSubview:_switchOFF];
    self.value = false;
    return self;
}
-(void) pressON{
    self.value = false;
}
-(void) pressOFF{
    self.value = true;
}
- (BOOL) getValue {
    return _value;
}
-(void) setValue:(BOOL) value {
    _value = value;
    if (_value) {
        [_switchON setImage:[UIImage imageNamed:@"OnWhiteUp"] forState:UIControlStateNormal];
        [_switchOFF setImage:[UIImage imageNamed:@"OffWhiteDown"] forState:UIControlStateNormal];
    }else{
        [_switchON setImage:[UIImage imageNamed:@"OnWhiteDown"] forState:UIControlStateNormal];
        [_switchOFF setImage:[UIImage imageNamed:@"OffWhiteUp"] forState:UIControlStateNormal];
    }
}

@end
