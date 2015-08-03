//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Alex Valladares on 03/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import <Foundation/Foundation.h>

// hacemos publicas las constantes para
// acceder a ellas desde la clase playlist

extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@interface MusicLibrary : NSObject

@property (strong, nonatomic) NSArray *library;


@end
