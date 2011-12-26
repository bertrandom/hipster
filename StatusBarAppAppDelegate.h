//
//  StatusBarAppAppDelegate.h
//  StatusBarApp
//
//  Created by Aravindkumar Rajendiran on 10-04-17.
//  Copyright 2010 Grapewave. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StatusBarAppAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    IBOutlet NSMenu *statusMenu;
    NSStatusItem * statusItem;
}

- (void)waitForNextSecond;
- (void)updateStatusItemTitle;

@property (assign) IBOutlet NSWindow *window;

@end
