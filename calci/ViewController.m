//
//  ViewController.m
//  calci
//
//  Created by Saikat Maitra on 18/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController


@synthesize button1 = _button1;
@synthesize button2 = _button2;
@synthesize button3 = _button3;
@synthesize button4 = _button4;
@synthesize button5 = _button5;
@synthesize button6 = _button6;
@synthesize button7 = _button7;
@synthesize button8 = _button8;
@synthesize button9 = _button9;
@synthesize button0 = _button0;
@synthesize buttonAdd = _buttonAdd;
@synthesize buttonSub = _buttonSub;
@synthesize buttonEql = _buttonEql;
@synthesize buttonMul = _buttonMul;
@synthesize buttonDiv = _buttonDiv;
@synthesize buttonDot = _buttonDot;
@synthesize buttonClear = _buttonClear;
@synthesize uiText = _uiText;
@synthesize firstval = _firstval;
@synthesize action = _action;

- (IBAction)setVal:(id)sender{
    
    //NSString *val = [[NSString alloc] initWithFormat:@"1", "1"];
    //self.uiText.text = val;
    UIButton *pressedButton = (UIButton *)sender;
    NSLog(@"tag = %d",pressedButton.tag);
    NSString *val = self.uiText.text;
    NSString *buttonval = [NSString stringWithFormat:@"%d",pressedButton.tag];
    NSString *uival = [NSString stringWithFormat:@"%@%@", val, buttonval];
    self.uiText.text = uival;
    
    
}

-(IBAction)clear:(id)sender{

    self.uiText.text = [NSString stringWithFormat:@"%@",@""];    

}

-(IBAction)add:(id)sender{

    _firstval = self.uiText.text;
    NSLog(@"_firstval = %@",_firstval);
    _action = [NSString stringWithFormat:@"%@",@"add"];
    self.uiText.text = [NSString stringWithFormat:@"%@",@""];    
}

-(IBAction)sub:(id)sender{
    _firstval = self.uiText.text;
    NSLog(@"_firstval = %@",_firstval);
    _action = [NSString stringWithFormat:@"%@",@"sub"];
    self.uiText.text = [NSString stringWithFormat:@"%@",@""];   


}

-(IBAction)mul:(id)sender{
    _firstval = self.uiText.text;
    NSLog(@"_firstval = %@",_firstval);
    _action = [NSString stringWithFormat:@"%@",@"mul"];
    self.uiText.text = [NSString stringWithFormat:@"%@",@""];   
    
    
}

-(IBAction)div:(id)sender{
    _firstval = self.uiText.text;
    NSLog(@"_firstval = %@",_firstval);
    _action = [NSString stringWithFormat:@"%@",@"div"];
    self.uiText.text = [NSString stringWithFormat:@"%@",@""];   
    
    
}

-(IBAction)eql:(id)sender{
    int result;
    NSString *secondval = self.uiText.text;
    
    NSLog(@"_firstval = %@",_firstval);
    NSLog(@"secondval = %@",secondval);
    
    if ([_action isEqualToString:@"add"]){
        NSLog(@"action = %@",_action);    
        result = [_firstval intValue]+[secondval intValue];
    }
    
    if ([_action isEqualToString:@"sub"]){
        NSLog(@"action = %@",_action);    
        result = [_firstval intValue]-[secondval intValue];
    }
    
    if ([_action isEqualToString:@"mul"]){
        NSLog(@"action = %@",_action);    
        result = [_firstval intValue]*[secondval intValue];
    }
    
    if ([_action isEqualToString:@"div"]){
        NSLog(@"action = %@",_action);    
        result = [_firstval intValue]/[secondval intValue];
    }
    
    NSLog(@"result = %d",result);
    
    self.uiText.text = [NSString stringWithFormat:@"%d",result];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.uiText) {
        [textField resignFirstResponder];
    }
    return YES;
}


@end
