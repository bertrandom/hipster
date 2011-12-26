//
//  StatusBarAppAppDelegate.m
//  StatusBarApp
//
//  Created by Aravindkumar Rajendiran on 10-04-17.
//  Copyright 2010 Grapewave. All rights reserved.
//

#import "StatusBarAppAppDelegate.h"

@implementation StatusBarAppAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self waitForNextSecond];
    
}

-(void)awakeFromNib{
    
    
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    [statusItem setMenu:statusMenu];
    [self updateStatusItemTitle];
    
    
    NSImage *bike = [NSImage imageNamed:@"bike-menubar.png"];
    
    [statusItem setImage:bike];
    [statusItem setHighlightMode:YES];
    
    
}

- (void)updateStatusItemTitle {

    NSDateFormatter* df_local = [[[NSDateFormatter alloc] init] autorelease];
    [df_local setTimeZone:[NSTimeZone timeZoneWithName:@"America/Los_Angeles"]];
    [df_local setDateFormat:@"h:mm a"];
    
    NSString* ts_local_string = [df_local stringFromDate:[NSDate date]];    
        
    [statusItem setTitle:ts_local_string];

}

- (void)waitForNextSecond {
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(nextSecondTimerDidFire:)
                                   userInfo:nil
                                    repeats:NO];
}


- (void)nextSecondTimerDidFire:(NSTimer*)timer {
    [self updateStatusItemTitle];
    [self waitForNextSecond];
}

@end
