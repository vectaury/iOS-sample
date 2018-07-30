//
//  ViewController.m
//  CMP-Sample
//
//  Created by Pernic on 30/07/2018.
//  Copyright © 2018 Vectaury. All rights reserved.
//

#import "ViewController.h"
#import <VectauryCMP/VectauryCMP.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [VectauryCMP presentWithForce:NO withNotice:YES];
}

- (IBAction)editPreferences:(id)sender {
    [VectauryCMP presentWithForce:YES withNotice:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
