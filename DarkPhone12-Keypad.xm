#import <substrate.h>
#import "DarkPhone12.h"

//set the main view to grey
%hook PHHandsetDialerView
    - (void) setBackgroundColor:(UIColor *)arg1
    {
        %orig(PHONE_GREY);
    }
%end

//keypad buttons
%hook PHHandsetDialerNumberPadButton
    + (double) unhighlightedCircleViewAlpha
    {
        return 0.25;
    }
    + (double) highlightedCircleViewAlpha
    {
        return 1.0;
    }
    - (UIColor *) buttonColor
    {
        return UIColorMake(200, 200, 200, 1);
    }
%end

//fix the delete button
%hook PHHandsetDialerDeleteButton
    - (void) setTintColor:(UIColor *)arg1 
    {
        %orig([UIColor whiteColor]);
    }
%end