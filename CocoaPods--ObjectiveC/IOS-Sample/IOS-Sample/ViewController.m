//
//  ViewController.m
//  IOS-Sample
//
//  Created by Pernic on 20/11/2017.
//  Copyright © 2017 Pernic. All rights reserved.
//

#import "ViewController.h"
#import <Vectaury/Vectaury.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Vectaury requestAuthorization];
    [Vectaury startLocation];
    [Vectaury setlanguage:@"fr"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
