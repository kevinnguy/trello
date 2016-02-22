//
//  AppDelegate.m
//  Trello
//
//  Created by Hector Vergara on 7/19/12.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSURL *url = [NSURL URLWithString:@"https://www.trello.com/login"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webview.mainFrame loadRequest:urlRequest];
    [self.webview.mainFrame.frameView.documentView.superview scaleUnitSquareToSize:NSMakeSize(0.8, 0.8)];
}


- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag
{
    if (flag) {
        [self.window orderFront:self];
    }
    else {
        [self.window makeKeyAndOrderFront:self];
    }
    
    return YES;
}


@end