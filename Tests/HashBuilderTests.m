//
//  HashBuilderTests.m
//  HashBuilderTests
//
//  Created by Levi Brown on 2/12/13.
//  Copyright (c) 2013 Levi Brown. All rights reserved.
//

#import "HashBuilderTests.h"
#import "HashBuilder.h"

@implementation HashBuilderTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)test100
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test110
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"a"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test120
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"b"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test130
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test140
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test150
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"a"];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test160
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder2 contributeObject:@"a"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test170
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder1 contributeObject:@"a"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder2 contributeObject:@"b"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test180
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder1 contributeObject:@"a"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder2 contributeObject:@"b"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test190
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:@"b"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder2 contributeObject:@"a"];
    [builder2 contributeObject:@"b"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test200
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:@"b"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"a"];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder2 contributeObject:@"b"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test210
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:[NSNumber numberWithInteger:12345]];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:@"b"];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"b"];
    [builder2 contributeObject:@"a"];
    [builder2 contributeObject:[NSNumber numberWithInteger:12345]];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test220
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"a"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test230
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:@"a"];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:@"a"];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test240
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:nil];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test250
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:nil];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test260
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:YES];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test270
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:NO];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test280
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    [builder1 contributeObject:nil];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:YES];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test290
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeObject:nil];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    [builder2 contributeBOOL:YES];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test300
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test310
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:NO];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeObject:nil];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test320
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:NO];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:NO];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test330
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertEquals(hash1, hash2, @"Hash '%lx' is unexpectedly not equal to '%lx'", hash1, hash2);
}

- (void)test340
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:YES];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:NO];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

- (void)test350
{
    HashBuilder *builder1 = [HashBuilder builder];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:YES];
    [builder1 contributeBOOL:NO];
    [builder1 contributeBOOL:NO];
    NSUInteger hash1 = builder1.builtHash;
    
    HashBuilder *builder2 = [HashBuilder builder];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:NO];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    [builder2 contributeBOOL:YES];
    NSUInteger hash2 = builder2.builtHash;
    
    STAssertTrue(hash1 != hash2, @"Hash '%lx' is unexpectedly equal to '%lx'", hash1, hash2);
}

@end
