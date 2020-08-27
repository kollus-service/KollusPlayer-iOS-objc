//
//  ViewController.m
//  KollusPlayer-Objc
//
//  Created by 양현덕 on 19/09/2019.
//  Copyright © 2019 양현덕. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
KollusStorage* storage;
KollusPlayerView * player;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy/MM/dd"];
    NSDate *expireDate = [dateFormat dateFromString:@"2025/12/31"];
    storage = [[KollusStorage alloc] init];
    storage.applicationBundleID = @"com.se.kollus";
    storage.applicationKey = @"29f1a4958aa77264c6218e5b6e8fd39ffb93122c";
    storage.applicationExpireDate = expireDate;
    NSError* error = nil;
    
    if([storage startStorage: &error]){
        if(error != nil){
            NSLog(@"%@", error);
            return;
        }
        NSLog(@"Storage Start");
    }
    else{
        return;
    }
    
    
    player = [[KollusPlayerView alloc] initWithFrame:self.view.frame];
    [player setStorage:storage];
    [player setContentURL: @"https://v.kr.kollus.com/i/e8eDr88f"];
    [player setDebug:YES];
    [player setDelegate:(id<KollusPlayerDelegate>)self];
    [self.view addSubview:player];
    if(![player prepareToPlayWithMode:PlayerTypeNative error:&error]){
        NSLog(error);
    }
    
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView buffering:(BOOL)buffering error:(NSError *)error {
    
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView charset:(char *)charset caption:(char *)caption {
    
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView enabledOutput:(BOOL)enabledOutput error:(NSError *)error {
    
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView framerate:(int)framerate {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView lockedPlayer:(KollusPlayerType)playerType {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView mck:(NSString *)mck {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView naturalSize:(CGSize)naturalSize {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView pause:(BOOL)userInteraction error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView play:(BOOL)userInteraction error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView playbackRate:(float)playbackRate error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView playerContentFrame:(CGRect)contentFrame error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView playerContentMode:(KollusPlayerContentMode)playerContentMode error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView position:(NSTimeInterval)position error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView prepareToPlayWithError:(NSError *)error {
    if(error!=nil){
        NSLog(error);
    }else {
        NSError *playError;
        if(![kollusPlayerView playWithError:&playError]){
            NSLog(playError);
        }
    }
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView repeat:(BOOL)repeat error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView scroll:(CGPoint)distance error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView stop:(BOOL)userInteraction error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView thumbnail:(BOOL)isThumbnail error:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView unknownError:(NSError *)error {
}

- (void)kollusPlayerView:(KollusPlayerView *)kollusPlayerView zoom:(UIPinchGestureRecognizer *)recognizer error:(NSError *__autoreleasing *)error {
}
@end

