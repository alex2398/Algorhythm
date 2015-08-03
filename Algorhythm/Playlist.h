//
//  Playlist.h
//  Algorhythm
//
//  Created by Alex Valladares on 03/08/15.
//  Copyright (c) 2015 Alex Valladares. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>




@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *playlistColor;

// Exponemos el metodo inicializador para que se puedan crear clases
// desde otras. En este caso queremos crearla desde MusicLibrary

- (instancetype) initWithIndex: (NSUInteger)index;

@end
