//
//  ViewController.m
//  AVAudioPlayer
//
//  Created by mac on 16/4/21.
//  Copyright © 2016年 sunsmart. All rights reserved.
//

#import "ViewController.h"
#import "CLAudioTool.h"
@interface ViewController ()

@property (nonatomic, strong) NSArray *songs;
@property (nonatomic, assign) int currentIndex;
@end

@implementation ViewController
-(NSArray *)songs{
    if (!_songs) {
        self.songs = @[@"Freedom.mp3", @"天外有天.mp3", @"235319.mp3"];
    }
    return _songs;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark 初始化UI
-(void)configUI{
    
  
    

}
#pragma mark -
#pragma mark 加载数据

#pragma mark -
#pragma mark 事件
- (IBAction)playBtn:(id)sender {
//    [CLAudioTool playMusic:self.songs[self.currentIndex]];
    [CLAudioTool playSound:@"buyao.wav"];
}
- (IBAction)pausBtn:(id)sender {
    [CLAudioTool pauseMusic:self.songs[self.currentIndex]];
}
- (IBAction)stopBtn:(id)sender {
    [CLAudioTool stopMusic:self.songs[self.currentIndex]];
}
- (IBAction)nextBtn:(id)sender {
    [CLAudioTool stopMusic:self.songs[self.currentIndex]];
    self.currentIndex++;
    if (self.currentIndex >= self.songs.count) {
        self.currentIndex = 0;
    }
    [CLAudioTool playMusic:self.songs[self.currentIndex]];
}

#pragma mark -
#pragma mark 数据请求

#pragma mark -
#pragma mark 代理

#pragma mark -
#pragma mark 业务逻辑

#pragma mark -
#pragma mark 通知注册和销毁

@end
