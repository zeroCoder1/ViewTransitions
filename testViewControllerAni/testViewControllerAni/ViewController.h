//
//  ViewController.h
//  testViewControllerAni
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerSecond.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController{

    IBOutlet    UIButton * btn1;
    IBOutlet    UIButton * btn2;
    IBOutlet    UIButton * btn3;
    IBOutlet    UIButton * btn4;
    IBOutlet    UIButton * btn5;
    IBOutlet    UIButton * btn6;
    IBOutlet    UIButton * btn7;
    IBOutlet    UIButton * btn8;
    IBOutlet    UIButton * btn9;
    IBOutlet    UIButton * btn10;
}


-(IBAction)gotoSecondR;
-(IBAction)gotoSecondL;
-(IBAction)gotoSecondT;
-(IBAction)gotoSecondD;
-(IBAction)gotoSpecial1;
-(IBAction)gotoSpecial2;
-(IBAction)gotoSpecial3;
-(IBAction)gotoSpecial4;
-(IBAction)gotoSpecial5;
-(IBAction)gotoSpecial6;


@end
