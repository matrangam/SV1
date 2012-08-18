//
//  SVViewController.m
//  SquazzVoice
//
//  Created by Michael Matranga on 8/18/12.
//  Copyright (c) 2012 Michael Matranga. All rights reserved.
//

#import "SVViewController.h"

@interface SVViewController ()

@end

@implementation SVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
