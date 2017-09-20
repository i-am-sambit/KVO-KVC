//
//  ViewController.m
//  KeyValueObserver
//
//  Created by GLB-311-PC on 20/09/17.
//  Copyright © 2017 Globussoft. All rights reserved.
//

#import "ViewController.h"
#import "FirstClass.h"
#import "SecondClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FirstClass *firstClass = [[FirstClass alloc] init];
    
    SecondClass *secondClass = [[SecondClass alloc] init];
    
    [secondClass addObserver:firstClass forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    [secondClass setValue:@20 forKey:@"age"];
    secondClass.age = 40;
    
    [secondClass removeObserver:firstClass forKeyPath:@"age"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
