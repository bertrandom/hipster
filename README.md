# Introducing Hipster

Ever since I moved to Santiago, Chile in July, I've asked myself "What time is it in San Francisco?" multiple times a day. Sometimes it's for something practical (knowing whether or not I should be on a conference call) and sometimes it's for something stupid (figuring out whether or not it would be a good time to tweet because the majority of my followers won't even see it). Either way, I need to know.

I tried to find an application that runs in the OS X Menubar and displays the time for a different time zone and I did find a few programs that sort of did that:

[World Clock Deluxe ($19)](http://www.mabasoft.net/products/worldClockDeluxeX.html)

[iStat Menus 3 ($16)](http://bjango.com/mac/istatmenus/)

Unfortunately, they didn't do **just** that. I couldn't figure out how to prevent World Clock Deluxe from opening up a floating clock in addition to the menubar and iStat Menus wanted me to click the clock every time I wanted to see the alternate time.

Today I decided to just write it myself. Armed with a vague recollection of iOS development experience and the power of Google, I took the [shell of a menubar demo](http://cocoatutorial.grapewave.com/2010/01/creating-a-status-bar-application/) and extracted some code from [Menubar Countdown](http://capablehands.net/menubarcountdown) and tweaked it until it worked. Then I slapped an icon from [Glypish](http://glyphish.com/) onto it and called it a day.

Hipster looks like this in your menubar:

![screenshot](http://bertrandom.github.com/hipster/screenshot.png)

## Get it

You can download it [here](https://github.com/downloads/bertrandom/hipster/Hipster.zip).

## Installation

Unzip the file and drag **Hipster** into your Applications folder. Run it.

If you want it to run on startup, go to:

**System Preferences** -> **Users and Groups** -> **Login Items**

and hit the [**+**] and select **Hipster** from your Applications.

## Customization

You may notice that there is no Preferences option. In fact, the only option is **Quit Hipster**. I realize the ridiculousness in a menubar application that only displays the time for San Francisco and my only defense is that this is my first Cocoa Mac Application and I have no idea how to create a Preferences pane.

[Source code](https://github.com/bertrandom/hipster) is available on github - if you are able to create a basic Preferences pane that lets you specify a time zone, I will happily accept a pull request.

You can change the time zone by opening up `StatusBarAppAppDelegate.m` and looking at [line 41](https://github.com/bertrandom/hipster/commit/a9c0696ba69346231dd82301c30bd4290624b9b4#L12R41). Change `America/Los_Angeles` to whatever you need it to be and hit Build in Xcode.