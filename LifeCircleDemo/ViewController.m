//
//  ViewController.m
//  LifeCircleDemo
//
//  Created by Kevin on 2020/5/22.
//  Copyright © 2020 Kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"    %@  ",NSStringFromSelector(@selector(initWithNibName:bundle:)));
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"    %@  ",NSStringFromSelector(@selector(initWithCoder:)));
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"    %@  ",NSStringFromSelector(@selector(init)));
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(loadView)));
}

- (void)loadViewIfNeeded {
    NSLog(@"    %@  ",NSStringFromSelector(@selector(loadViewIfNeeded)));
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.button addTarget:self action:@selector(goForward) forControlEvents:UIControlEventTouchUpInside];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewDidLoad)));
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewWillAppear:)));

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewDidAppear:)));

}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewWillDisappear:)));

}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewDidDisappear:)));

}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewWillLayoutSubviews)));

}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"    %@  ",NSStringFromSelector(@selector(viewDidLayoutSubviews)));

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    NSLog(@"    %@  ",NSStringFromSelector(@selector(didReceiveMemoryWarning)));

}


#pragma mark - custom
- (void)goForward {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor redColor];
    
    [self.navigationController pushViewController:vc animated:YES];
//
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//
//    self.modalPresentationStyle = UIModalPresentationFullScreen;
//
////    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
}

@end
