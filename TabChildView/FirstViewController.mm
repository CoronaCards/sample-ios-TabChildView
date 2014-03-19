//
//  FirstViewController.m
//  TabChildView
//
//  Copyright (c) 2014 Corona Labs Inc. All rights reserved.
//

#import "FirstViewController.h"

#import "CoronaKit/CoronaKit.h"

@interface FirstViewController ()

@property (nonatomic, strong) CoronaViewController *coronaController;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	_coronaController = [[[CoronaViewController alloc] init] autorelease];
	[self addChildViewController:_coronaController];

	CoronaView *coronaView = (CoronaView *)_coronaController.view;

	// Same size as parent view
	
	CGRect fullViewFrame = self.view.frame;

	coronaView.frame = fullViewFrame;
	
//To make the CoronaView fill a smaller subregion
//	float width =fullViewFrame.size.width;
//	float height =fullViewFrame.size.height;
//	
//	float newWidth = width * .5f;
//	float newHeight = height * .5f;
//	
//	float startX = newWidth - ( newWidth / 2.0f );
//	float startY = newHeight - ( newHeight / 2.0f );
//	
//	CGRect rect = CGRectMake( startX, startY, newWidth,  newHeight );
//	coronaView.frame = rect;


	[self.view addSubview:coronaView];

	// Transparent background
	coronaView.backgroundColor = [UIColor clearColor];
	coronaView.opaque = NO;

	[coronaView run];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
