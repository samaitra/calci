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
@synthesize uiText = _uiText;
@synthesize val = _val;

- (IBAction)setVal:(id)sender{
    
    NSString *val = [[NSString alloc] initWithFormat:@"1", "1"];
    self.uiText.text = val;
    
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

@end
