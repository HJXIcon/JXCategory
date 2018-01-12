//
//  ViewController.m
//  TextFeildDemo
//
//  Created by yituiyun on 2018/1/9.
//  Copyright © 2018年 yituiyun. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+JXExtension.h"
#import "UIAlertController+JXExtension.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textFiled.jx_maxLength = 5;
    
    [self.textFiled addTarget:self action:@selector(jx_shake) forControlEvents:UIControlEventEditingChanged];
}

- (void)jx_shake{
    [self.textFiled jx_shake];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [UIAlertController jx_alertWithCallBackBlock:nil title:@"提示" message:@"确定提示" preferredStyle:UIAlertControllerStyleAlert action:[UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }] otherActions:[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }],
     [UIAlertAction actionWithTitle:@"cancel2" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }],
     [UIAlertAction actionWithTitle:@"cancel3" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }], nil];
    
}

@end
