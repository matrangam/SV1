#import "SVViewController.h"
#import "stdlib.h"
#import <AVFoundation/AVFoundation.h>

@interface SVViewController ()

@end

@implementation SVViewController {
    AVAudioPlayer* _audioPlayer;
}

+ (NSString*) randomFilePath
{
    NSDictionary* dict = @{
        @0 : @"ONE",
        @1 : @"TWO",
        @2 : @"THREE",
        @3 : @"FOUR",
        @4 : @"FIVE",
        @5 : @"SIX",
        @6 : @"SEVEN",
        @7 : @"EIGHT",
        @8 : @"NINE",
        @9 : @"TEN",
        @10 : @"ELEVEN",
        @11 : @"TWELVE",
    };
    
    NSArray* allKeys = [dict allKeys];
    NSInteger randomIteger = arc4random_uniform([allKeys count]);
    NSNumber* randNum = [NSNumber numberWithInteger:randomIteger];
    return [dict objectForKey:randNum];
}

+ (AVAudioPlayer*) audioPlayerWithURL:(NSURL*)URL
{
    NSError* error = nil;
    return [[AVAudioPlayer alloc] initWithContentsOfURL:URL error:&error];
}

- (void) viewDidUnload
{
    [self setVoiceButton:nil];
    [super viewDidUnload];
}

- (IBAction) voiceButtonPressed:(id)sender
{
    _audioPlayer = [SVViewController audioPlayerWithURL:[NSURL URLWithString:[SVViewController randomFilePath]]];
    NSLog(@"%@", [SVViewController randomFilePath]);
}
@end
