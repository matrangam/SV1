#import "SVViewController.h"
#import "stdlib.h"
#import <AVFoundation/AVFoundation.h>


@interface SVViewController () <AVAudioPlayerDelegate>
@property (nonatomic, strong) AVAudioPlayer* audioPlayer;
@end

@implementation SVViewController

+ (NSString*) randomFilePath
{
    NSDictionary* dict = @{
        @0 : @"AwMan",
        @1 : @"BreakUp",
        @2 : @"IDontKnowWhatItMeans",
        @3 : @"Oh",
        @4 : @"Penis",
        @5 : @"PuppyDogs",
        @6 : @"RuiningMyNight",
        @7 : @"UgliestFacesEver",
        @8 : @"VodkaTonic",
        @9 : @"YouCanComeAndNotDrink",
    };
    
    NSArray* allKeys = [dict allKeys];
    NSInteger randomInteger = arc4random_uniform([allKeys count]);
    NSNumber* randNum = [NSNumber numberWithInteger:randomInteger];
    return [dict objectForKey:randNum];
}

+ (AVAudioPlayer*) audioPlayerWithURL:(NSURL*)URL error:(NSError*)error
{
    return [[AVAudioPlayer alloc] initWithContentsOfURL:URL error:&error];
}

- (void) viewDidUnload
{
    [self setVoiceButton:nil];
    [super viewDidUnload];
}

- (IBAction) voiceButtonPressed:(id)sender
{
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/%@.m4a", [[NSBundle mainBundle] resourcePath], [SVViewController randomFilePath]]];
    NSError* error = nil;
    _audioPlayer = [SVViewController audioPlayerWithURL:url error:error];
    [_audioPlayer setDelegate:self];
    if (!error) {
        [_voiceButton setEnabled:NO];
        [_audioPlayer play];
    }
}

- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer*)player successfully:(BOOL)flag
{
    [_voiceButton setEnabled:YES];
}


@end
