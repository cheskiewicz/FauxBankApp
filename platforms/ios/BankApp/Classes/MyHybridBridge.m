//
//  MyHybridBridge.m
//  MovenApp
//
//  Created by Charles Cheskiewicz on 11/28/14.
//
//

#import "MyHybridBridge.h"

@implementation MyHybridBridge

-(void)ACTION_SWITCH_APPS:(CDVInvokedUrlCommand*)command{
    // Opens the Receiver app if installed, otherwise displays an error
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSArray *dataArray = command.arguments;
    NSString *dataString = [dataArray objectAtIndex:0];
//    NSString *refreshCode = [dataArray objectAtIndex:1];
//    NSString *dataString = [accessCode stringByAppendingString:@"/"];
//    dataString = [dataString stringByAppendingString:refreshCode];
    NSString *URLEncodedText = [dataString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"goToMovenActual://" stringByAppendingString:URLEncodedText];
//    NSString *ourPath = [@"goToMoven://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    if ([ourApplication canOpenURL:ourURL]) {
        [ourApplication openURL:ourURL];
    }
    else {
        //Display error
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Receiver Not Found" message:@"The Receiver App is not installed. It must be installed to send text." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
}

@end
