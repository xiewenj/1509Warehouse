//
//  ViewController.m
//  BaseProject
//
//  Created by jiyingxin on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (nonatomic,strong) UIButton *playBnt;

@property (nonatomic,strong) AVAudioPlayer *player;

@end

@implementation ViewController

- (UIButton *)playBnt{
    if (_playBnt == nil) {
        _playBnt = [UIButton buttonWithType:0];
        _playBnt.backgroundColor = [UIColor redColor];
        [_playBnt setTitle:@"播放音乐" forState:0];
        _playBnt.titleLabel.font = [UIFont systemFontOfSize:24];
        [self.view addSubview:_playBnt];
        [_playBnt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(0);
        }];
        [_playBnt bk_addEventHandler:^(id sender) {
            NSURL *mp3URL = [[NSBundle mainBundle] URLForResource:@"AllOfMe" withExtension:@"mp3"];
            self.player = [[AVAudioPlayer alloc]initWithContentsOfURL:mp3URL error:nil];
            [self.player play];
        } forControlEvents:UIControlEventTouchUpInside];
       
    }
    return _playBnt;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playBnt.hidden = NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
