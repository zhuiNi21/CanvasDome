//
//  ViewController.m
//  CanvasShi
//
//  Created by hao on 16/1/12.
//  Copyright © 2016年 周豪. All rights reserved.
//

#import "ViewController.h"
#import "Canvas.h"
@interface ViewController ()
@property(nonatomic,strong) UIButton *btn;
@property(nonatomic,strong) UIButton *btn1;
@property(nonatomic,strong) UIButton *btn2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(15, 100, 50, 50)];
    self.btn = btn;
    self.btn.tag = 1;
    btn.backgroundColor = [UIColor greenColor];
    btn.clipsToBounds = YES;
    btn.layer.cornerRadius = 50 *0.5;
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    self.btn.hidden = YES;
    [self.view addSubview:btn];
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(15, 210, 50, 50)];
    self.btn1 =btn1;
    self.btn1.tag = 2;
    btn1.backgroundColor = [UIColor greenColor];
    btn1.clipsToBounds = YES;
    btn1.layer.cornerRadius = 50 *0.5;
    [btn1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    self.btn1.hidden = YES;
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(15, 320, 50, 50)];
    self.btn2 = btn2;
    self.btn2.tag = 3;
    btn2.backgroundColor = [UIColor greenColor];
    btn2.clipsToBounds = YES;
    btn2.layer.cornerRadius = 50 *0.5;
    [btn2 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    self.btn2.hidden = YES;
    [self.view addSubview:btn2];
    
//    UIView *blurV = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
//    blurV.backgroundColor = [UIColor redColor];
//    [CSBlurView setBlur:UIBarStyleBlackTranslucent view:blurV];
//    [self.view addSubview:blurV];
    
}
-(void)click:(UIButton *)sender
{
    /*
    从屏幕以外直接进入到原位置(带反弹效果)
    CSAnimationTypeBounceLeft   = @"bounceLeft";
    CSAnimationTypeBounceRight  = @"bounceRight";
    CSAnimationTypeBounceDown   = @"bounceDown";
    CSAnimationTypeBounceUp     = @"bounceUp";
     
    从屏幕以外直接进入到原位置(不带效果)
    CSAnimationTypeSlideLeft    = @"slideLeft";
    CSAnimationTypeSlideRight   = @"slideRight";
    CSAnimationTypeSlideDown    = @"slideDown";
    CSAnimationTypeSlideUp      = @"slideUp";
     
    在屏幕原位置渐变
    CSAnimationTypeFadeIn       = @"fadeIn";
    CSAnimationTypeFadeOut      = @"fadeOut";
     
    从屏幕以外渐变进入到原位置
    CSAnimationTypeFadeInLeft   = @"fadeInLeft";
    CSAnimationTypeFadeInRight  = @"fadeInRight";
    CSAnimationTypeFadeInDown   = @"fadeInDown";
    CSAnimationTypeFadeInUp     = @"fadeInUp";
     
    几种动态效果
    CSAnimationTypePop          = @"pop";
    CSAnimationTypeMorph        = @"morph";
    CSAnimationTypeFlash        = @"flash";
    CSAnimationTypeShake        = @"shake";
     
    CSAnimationTypeZoomIn       = @"zoomIn";
    CSAnimationTypeZoomOut      = @"zoomOut";
     
    CSAnimationTypeSlideDownReverse  = @"slideDownReverse";
    CSAnimationTypeFadeInSemi        = @"fadeInSemi";
    CSAnimationTypeFadeOutSemi       = @"fadeOutSemi";
    CSAnimationTypeFadeOutRight      = @"fadeOutRight";
    CSAnimationTypeFadeOutLeft       = @"fadeOutLeft";
    CSAnimationTypePopDown           = @"popDown";
    CSAnimationTypePopAlpha          = @"popAlpha";
    CSAnimationTypePopAlphaUp        = @"popAlphaUp";
    CSAnimationTypePopAlphaOut       = @"popAlphaOut";
     */
    
    NSLog(@"---%ld",(long)sender.tag);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.btn.hidden = NO;
    self.btn1.hidden = NO;
    self.btn2.hidden = NO;
    
    Class <CSAnimation> class = [CSAnimation classForAnimationType:CSAnimationTypeSlideDownReverse];
    
    [class performAnimationOnView:self.btn duration:2 delay:0];
    [class performAnimationOnView:self.btn1 duration:2 delay:0.5];
    [class performAnimationOnView:self.btn2 duration:2 delay:1.0];
    

}
@end
