#import "ANChatManager.h"

@implementation ANChatManager

+ (instancetype)sharedManager {
    static ANChatManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

- (void)hideWindow {
	self.window.hidden = YES;
}

- (void)showWindow {
	if (self.enabled) self.window.hidden = NO;
}

- (void)setWindow:(ANChatWindow *)window {
	_window = window;
	self.window.manager = self;
	[self.window orientationDidChangeToOrientation:window.windowScene.interfaceOrientation];
}

- (void)activeInterfaceOrientationWillChangeToOrientation:(UIInterfaceOrientation)orientation {}

- (void)activeInterfaceOrientationDidChangeToOrientation:(UIInterfaceOrientation)orientation willAnimateWithDuration:(NSTimeInterval)duration fromOrientation:(UIInterfaceOrientation)previousOrientation {
	[self.window orientationDidChangeToOrientation:orientation];
}

@end
