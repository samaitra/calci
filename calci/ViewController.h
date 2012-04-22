//
//  ViewController.h
//  calci
//
//  Created by Saikat Maitra on 18/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,weak)IBOutlet UIButton *button1;
@property (nonatomic,strong)IBOutlet UIButton *button2;
@property (nonatomic,strong)IBOutlet UIButton *button3;
@property (nonatomic,strong)IBOutlet UIButton *button4;
@property (nonatomic,strong)IBOutlet UIButton *button5;
@property (nonatomic,strong)IBOutlet UIButton *button6;
@property (nonatomic,strong)IBOutlet UIButton *button7;
@property (nonatomic,strong)IBOutlet UIButton *button8;
@property (nonatomic,strong)IBOutlet UIButton *button9;
@property (nonatomic,strong)IBOutlet UIButton *button0;
@property (nonatomic,strong)IBOutlet UIButton *buttonAdd;
@property (nonatomic,strong)IBOutlet UIButton *buttonSub;
@property (nonatomic,weak)IBOutlet UITextField *uiText; 
//@property (nonatomic,strong)IBOutlet UIButton *buttonMul;
//@property (nonatomic,strong)IBOutlet UIButton *buttonDiv;
@property (nonatomic,strong)IBOutlet UIButton *buttonEql;
//@property (nonatomic,strong)IBOutlet UIButton *buttonDot;
//@property (nonatomic,strong)IBOutlet UIButton *buttonClear;
@property (copy, nonatomic) NSString *val;


- (IBAction)setVal:(id)sender;



@end
