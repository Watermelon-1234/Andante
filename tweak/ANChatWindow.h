#import <UIKit/UIKit.h>
#import "SBSecureWindow.h"
#import "ANChatViewController.h"

@class ANChatManager;

@interface ANChatWindow : SBSecureWindow

@property (nonatomic, retain) ANChatViewController *rootViewController;
@property (nonatomic, retain) ANChatManager *manager;

- (void)orientationDidChangeToOrientation:(UIInterfaceOrientation)orientation;

@end
