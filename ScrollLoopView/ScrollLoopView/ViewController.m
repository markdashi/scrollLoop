//
//  ViewController.m
//  ScrollLoopView
//
//  Created by apple on 12/6/16.
//  Copyright © 2016年 mark. All rights reserved.
//

#import "ViewController.h"
#import "scrollLoopView.h"

@interface ViewController ()<scrollLoopViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    CGFloat SCREENWIDTH = [UIScreen mainScreen].bounds.size.width;
    
    //常规的
    scrollLoopView *loop = [[scrollLoopView alloc] initWithFrame:CGRectMake(0, 64, SCREENWIDTH, 200)];
    loop.delegate = self;
    loop.images =@[@"http://web.img.chuanke.com/fragment/9d595bc8fb5bf049ce3db527ede08abc.jpg",
                   @"http://web.img.chuanke.com/fragment/d662adfaebdc9aa3dac4b04299aa48e1.jpg",
                   @"http://web.img.chuanke.com/fragment/8003092be7e6cc3222c760c89e74a20d.jpg",
                  ];
    [self.view addSubview:loop];
    
    
//    可以自定义大小
    
    scrollLoopView *loop1 = [[scrollLoopView alloc] initWithFrame:CGRectMake((SCREENWIDTH - 200)/2, 64+ 300, 200, 200)];
//    loop1.delegate = self;
    loop1.images =@[@"http://web.img.chuanke.com/fragment/9d595bc8fb5bf049ce3db527ede08abc.jpg",
                   @"http://web.img.chuanke.com/fragment/d662adfaebdc9aa3dac4b04299aa48e1.jpg",
                   @"http://web.img.chuanke.com/fragment/8003092be7e6cc3222c760c89e74a20d.jpg",
                   ];
    [self.view addSubview:loop1];
    
    
    
    
}


- (void)scrollLoopView:(scrollLoopView *)scrollLoopView didSelectItemAtIndex:(int)index
{
    NSLog(@"点击了第 %d 个",index);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
