//
//  NNViewController.m
//  NNLayerBackedLabel
//
//  Created by Koichi Yamamoto on 10/13/2015.
//  Copyright (c) 2015 Koichi Yamamoto. All rights reserved.
//

#import "NNViewController.h"
#import "NNLayerBackedLabel.h"

@implementation NNViewController{
	__weak IBOutlet NNLayerBackedLabel* _label;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_label.text = @"hoge";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
