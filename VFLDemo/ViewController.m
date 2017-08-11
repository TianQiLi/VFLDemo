//
//  ViewController.m
//  VFLDemo
//
//  Created by TQ on 2017/8/11.
//  Copyright © 2017年 TQ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *password;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *passworkField;
@property (weak, nonatomic) IBOutlet UIButton *sumitBtn;
@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.name.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameField.translatesAutoresizingMaskIntoConstraints = NO;
    self.password.translatesAutoresizingMaskIntoConstraints = NO;
    self.passworkField.translatesAutoresizingMaskIntoConstraints = NO;
    self.sumitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    //通过宏映射成[NSDictionary dictionaryWithObjectsAndKeys:v1, @"v1", v2, @"v2", nil];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-50-[_name(50)]-10-[_nameField]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_name,_nameField)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[_name(==15)]-10-[_password]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_name,_password)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-150-[_nameField(==15)]-10-[_passworkField]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_nameField,_passworkField)]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-50-[_password(50)]-10-[_passworkField(>=20)]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_password,_passworkField)]];
 
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"[_sumitBtn(40)]" options:2 metrics:nil views:NSDictionaryOfVariableBindings(_sumitBtn)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_sumitBtn(20)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_sumitBtn)]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_sumitBtn attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_password]-30-[_sumitBtn]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_password,_sumitBtn)]];
    
    
//    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    [view setBackgroundColor:[UIColor redColor]];
//    view.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:view];
//    view = _testView;
//    _testView.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[view]-10-|" options:0 metrics:nil views: NSDictionaryOfVariableBindings(view)]];
//        [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[view]-10-|" options:0 metrics:nil views: NSDictionaryOfVariableBindings(view)]];
//
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view.backgroundColor = [UIColor brownColor];
//    view.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:view];
//    
//    //通过宏映射成[NSDictionary dictionaryWithObjectsAndKeys:v1, @"v1", v2, @"v2", nil];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(view);
//    //约束1 横向
//    [self.view addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[view]-20-|"
//                                             options:0
//                                             metrics:nil
//                                               views:viewsDictionary]];
//    //约束2 纵向
//    [self.view addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100-[view]-200-|"
//                                             options:0
//                                             metrics:nil
//                                               views:viewsDictionary]];
    
  
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
