//
//  ViewControllerSecond.m
//  testViewControllerAni
//
//  Created by Shrutesh on 17/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewControllerSecond.h"

@implementation ViewControllerSecond

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];

    [[self view ] setBackgroundColor:[UIColor blueColor]];
    
    
    goBack = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [goBack setTitle:@"Back" forState:UIControlStateNormal];
    [goBack addTarget:self action:@selector(goBackM) forControlEvents:UIControlEventTouchUpInside];
    goBack.frame = CGRectMake(300, 512, 200, 50);
    [[self view] addSubview:goBack];


}


-(void)goBackM{


    ViewController *controller = [[ViewController alloc]init];
    
    
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

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
