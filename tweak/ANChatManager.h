#import <UIKit/UIKit.h>
#import "SBUIActiveOrientationObserver.h"
#import "ANChatWindow.h"

@interface ANChatManager : NSObject <SBUIActiveOrientationObserver>

@property (nonatomic, retain) ANChatWindow *window;
@property (nonatomic, assign) BOOL enabled;

+ (instancetype)sharedManager;
- (void)showWindow;
- (void)hideWindow;

@end
