//
//  ZKMUser.h
//  DeepCopy
//
//  Created by Dr.k on 16/1/19.
//  Copyright © 2016年 Dr.k. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ZKMSex) {
    ZKMsexMan,
    ZKMsexWoman
};

@interface ZKMUser : NSObject <NSCopying>
@property (nonatomic,copy,readonly) NSString * name;
@property (nonatomic,assign,readonly) NSInteger age;
@property (nonatomic,assign,readonly) ZKMSex sex;
-(instancetype) initwithName:(NSString *)name age:(NSInteger)age sex:(ZKMSex)sex;
+(instancetype) initwithName:(NSString *)name age:(NSInteger)age sex:(ZKMSex)sex;
-(void)addFriend:(ZKMUser *)user;
-(void)removeFriend:(ZKMUser *)user;
-(void)print;
@end
