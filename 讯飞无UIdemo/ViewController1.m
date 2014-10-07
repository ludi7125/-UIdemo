



//
//  ViewController1.m
//  讯飞无UIdemo
//
//  Created by ZhangCheng on 13-12-27.
//  Copyright (c) 2013年 ZhangCheng. All rights reserved.
//

#import "ViewController1.h"
#import "ZCNoneiFLYTEK.h"
@interface ViewController1 ()

@end

@implementation ViewController1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIButton*button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame=CGRectMake(0, 100, 100, 100);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(aa) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"播放语音" forState:UIControlStateNormal];
    
    
    
    UIButton*button1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame=CGRectMake(100, 100, 100, 100);
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(bb) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"识别语音" forState:UIControlStateNormal];
    
	// Do any additional setup after loading the view.
}
-(void)aa{
    ZCNoneiFLYTEK*manager=[ZCNoneiFLYTEK shareManager];
    [manager playVoice:@"我家兔兔最美丽"];
    

}
//代理方法必须实现



-(void)bb{

    ZCNoneiFLYTEK*manager=[ZCNoneiFLYTEK shareManager];
    [manager discernBlock:^(NSString *str) {
        NSLog(@"~~~~%@",str);
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
