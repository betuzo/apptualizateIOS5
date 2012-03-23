//
//  UserService.m
//  apptualizateIOS5
//
//  Created by Roberto Salvador Olguín Lozano on 22/03/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "UserService.h"

@implementation UserService

static NSArray * infoUser = nil;

+ (NSArray *) infoUser
{
    return infoUser;
}
+ (void) setInfoUser:(NSArray *) _infoUser
{
    infoUser = _infoUser;
}

@end
