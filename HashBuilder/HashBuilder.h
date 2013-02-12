//
//  HashBuilder.h
//
//  Created by Levi Brown on 12/14/12.
//  See: http://www.mikeash.com/pyblog/friday-qa-2010-06-18-implementing-equality-and-hashing.html
//  Copyright (c) 2012, 2013 Levi Brown <mailto:levigroker@gmail.com>
//  This work is licensed under the Creative Commons Attribution 3.0
//  Unported License. To view a copy of this license, visit
//  http://creativecommons.org/licenses/by/3.0/ or send a letter to Creative
//  Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041,
//  USA.
//
//  The above attribution and the included license must accompany any version
//  of the source code. Visible attribution in any binary distributable
//  including this work (or derivatives) is not required, but would be
//  appreciated.
//
//

#import <Foundation/Foundation.h>

//Used to build a hash result from contributed objects or hashes (presumably properties
//on your object which should be considered in the isEqual: override).
//Create a HashBuilder object, contribute to it, then query the 'builtHash' property
//for the resulting hash.
//
//NOTE: The order of contribution /will/ change the resulting hash, even if all the same values are contributed.
//For example:
//
//    HashBuilder *builder1 = [HashBuilder builder];
//    [builder1 contributeObject:@"a"];
//    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
//    NSUInteger hash1 = builder1.builtHash;
//
//    HashBuilder *builder2 = [HashBuilder builder];
//    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
//    [builder2 contributeObject:@"a"];
//    NSUInteger hash2 = builder2.builtHash;
//
//hash1 != hash2

@interface HashBuilder : NSObject

@property (nonatomic,assign,readonly) NSUInteger builtHash;

+ (id)builder;

- (void)contributeBOOL:(BOOL)flag;
- (void)contributeObject:(id)obj;
- (void)contributeHash:(NSUInteger)hash;

@end
