//
//  AppDelegate.m
//  UXKitTest
//
//  Created by Xiaoxuan Tang on 16/4/29.
//  Copyright © 2016年 GiftTalk. All rights reserved.
//
#import <UXKit.h>

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) UXWindowController* windowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    UXViewController* viewController = [ViewController new];
    self.windowController = [[UXWindowController alloc] initWithRootViewController: [[UXNavigationController alloc] initWithRootViewController:viewController]];
    
    NSWindow* window = self.windowController.window;
    [window setContentSize:CGSizeMake(500, 500)];
    [window setLevel:NSNormalWindowLevel];
    [window setCanHide:true];
    
    CGFloat xPos = NSWidth([[window screen] frame])/2 - NSWidth([window frame])/2;
    CGFloat yPos = NSHeight([[window screen] frame])/2 - NSHeight([window frame])/2;
    [window setFrame:NSMakeRect(xPos, yPos, NSWidth([window frame]), NSHeight([window frame])) display:YES];
    
    [self.windowController showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
