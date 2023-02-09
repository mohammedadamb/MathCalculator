/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
@end

@implementation MathCalculator


- (void)add:(CDVInvokedUrlCommand*)command
{
    NSLog(@"%@", command.callbackId);

    CDVPluginResult* pluginResult = nil;
//    NSNumber*  param1 = nil ;
//    NSInteger*  param2 = nil;
       
    NSInteger param1 = [[[command.arguments objectAtIndex:0] valueForKey:@"param1"] integerValue];
    NSInteger param2 = [[[command.arguments objectAtIndex:0] valueForKey:@"param2"]integerValue];
//    int param2 = [[command.arguments objectAtIndex:1] valueForKey:@"param2"];

//    if(param1 == nil || param2 == nil) {
//        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//    } else {
    NSLog(@"%ld", param1);
    NSLog(@"%ld", param2);

        NSString* result = [NSString stringWithFormat: @"%ld", param1+param2];
//        NSString* result = param1 + param2 ;
    NSLog(@"%@", result);
    NSLog(@"%@", command.callbackId);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
        [pluginResult setKeepCallbackAsBool:YES];


//    }
    [pluginResult setKeepCallbackAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

// - (void)coolMethod:(CDVInvokedUrlCommand*)command
// {
//     CDVPluginResult* pluginResult = nil;
//     NSString* echo = [command.arguments objectAtIndex:0];

//     if (echo != nil && [echo length] > 0) {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
//     } else {
//         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
//     }

//     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
// }

@end
