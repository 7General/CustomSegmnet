//
//  MainViewController.m
//  CustomSegment
//
//  Created by 王会洲 on 16/4/11.
//  Copyright © 2016年 王会洲. All rights reserved.
//

#import "MainViewController.h"
#import "CustomSegment.h"

@interface MainViewController ()<CustomSegmentDelegate>

@property (nonatomic, strong) CustomSegment                     *topSegment;
@end

@implementation MainViewController

-(CustomSegment *)topSegment
{
    if (!_topSegment)
    {
        _topSegment = [[CustomSegment alloc] initWithFrame:CGRectMake(0, 100, 320 ,  35 )];
        _topSegment.items = [NSArray arrayWithObjects:@"历史", @"搜索", @"搜索", @"搜索1", @"搜索1", @"搜索1", @"搜索1", @"搜索1", @"搜索13", nil];
        _topSegment.delegate = self;
    }
    return _topSegment;
}
-(void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.topSegment];
}

/**
 *  点击事件
 *
 *  @param segment <#segment description#>
 *  @param index   <#index description#>
 */
-(void)segment:(CustomSegment *)segment didSelectAtIndex:(NSInteger)index {
    NSLog(@"--------");

}

@end
