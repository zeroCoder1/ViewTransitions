//
//  ViewController.m
//  testViewControllerAni
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

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
    
//    btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn1 setTitle:@"Right" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(gotoSecondR) forControlEvents:UIControlEventTouchUpInside];
//    btn1.frame = CGRectMake(400, 500, 200, 50);
//    [[self view] addSubview:btn1];
//
//    btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn2 setTitle:@"Left" forState:UIControlStateNormal];
//    [btn2 addTarget:self action:@selector(gotoSecondL) forControlEvents:UIControlEventTouchUpInside];
//    btn2.frame = CGRectMake(400, 500, 200, 50);
//    [[self view] addSubview:btn2];
//   
//    btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn3 setTitle:@"Top" forState:UIControlStateNormal];
//    [btn3 addTarget:self action:@selector(gotoSecondT) forControlEvents:UIControlEventTouchUpInside];
//    btn3.frame = CGRectMake(400, 500, 200, 50);
//    [[self view] addSubview:btn3];
//   
//    btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn4 setTitle:@"Down" forState:UIControlStateNormal];
//    [btn4 addTarget:self action:@selector(gotoSecondD) forControlEvents:UIControlEventTouchUpInside];
//    btn4.frame = CGRectMake(400, 500, 200, 50);
//    [[self view] addSubview:btn4];
}



-(void)gotoSecondR{


    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromRight;
    
    UIView *containerView = self.view.window;
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];




}


-(void)gotoSecondL{

    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromLeft;
    
    UIView *containerView = self.view.window; // -------> important step
    
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];
    
    
    
    
}




-(void)gotoSecondT{
    
    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromTop;
    
    UIView *containerView = self.view.window;
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];
    
    
    
    
}


-(void)gotoSecondD{
    
    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromBottom;
    
    UIView *containerView = self.view.window;
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];
    
    
    
    
}


-(IBAction)gotoSpecial1{

    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];

    
    UIView *containerView = self.view.window;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:containerView cache:YES];
    
    
    [UIView commitAnimations];

    
    [self presentModalViewController:controller animated:NO];
    
    
   
}


-(IBAction)gotoSpecial2{
   
    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    UIView *containerView = self.view.window;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:containerView cache:YES];
    
    
    [UIView commitAnimations];
    
    
    [self presentModalViewController:controller animated:NO];
}


-(IBAction)gotoSpecial3{

    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    UIView *containerView = self.view.window;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:containerView cache:YES];
    
    
    [UIView commitAnimations];
    
    
    [self presentModalViewController:controller animated:NO];

}


-(IBAction)gotoSpecial4{

    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    UIView *containerView = self.view.window;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:containerView cache:YES];
    
    
    [UIView commitAnimations];
    
    
    [self presentModalViewController:controller animated:NO];

}


-(IBAction)gotoSpecial5{
 
    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromLeft;
    
    UIView *containerView = self.view.window;
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];


}


-(IBAction)gotoSpecial6{

    ViewControllerSecond *controller = [[ViewControllerSecond alloc]init];
    
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.50;
    transition.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    transition.type = kCATransition;
    transition.subtype = kCATransitionReveal;
    
    UIView *containerView = self.view.window;
    [containerView.layer addAnimation:transition forKey:nil];
    
    [self presentModalViewController:controller animated:NO];


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
    return YES;
}

@end
