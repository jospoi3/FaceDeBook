#import "Sound.h"

@implementation Sound

+ (void) soundEffect:(int)soundNumber {
    NSString *effect;
    NSString *type;
    if (soundNumber == 0) {
        effect = @"intro";
        type = @"wav";
    }
    else if (soundNumber == 1) {
        effect = @"click";
        type = @"aif";
    }
    else if (soundNumber == 2) {
        effect = @"error";
        type = @"aif";
    }
    
    NSString *value = [[NSUserDefaults standardUserDefaults] stringForKey:@"sound"];
    if ([value compare:@"ON"] == NSOrderedSame) {
        
        SystemSoundID soundID;
        
        NSString *path = [[NSBundle mainBundle] pathForResource:effect ofType:type];
        NSURL *url = [NSURL fileURLWithPath:path];
        
        AudioServicesCreateSystemSoundID ((CFURLRef)url, &soundID);
        
        AudioServicesPlaySystemSound(soundID);
        
    }
}

- (void)dealloc {
    [super dealloc];
}

@end