

#import <UIKit/UIKit.h>
#import "Config.h"




@class CustomSegment;
@protocol CustomSegmentDelegate <NSObject>

@optional
- (void)segment:(CustomSegment *)segment didSelectAtIndex:(NSInteger)index;

@end

@interface CustomSegment : UIView

/**
 *  当前索引
 */
@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, weak) id<CustomSegmentDelegate> delegate;
@property (nonatomic, strong) NSArray *items; // item of NSString

@end
