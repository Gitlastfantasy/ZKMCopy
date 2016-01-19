//
//  ZKMUser.m
//  DeepCopy
//
//  Created by Dr.k on 16/1/19.
//  Copyright © 2016年 Dr.k. All rights reserved.
//

#import "ZKMUser.h"

@implementation ZKMUser
{
    NSMutableSet * _friend;
}

-(void)setName:(NSString *)name{
    _name = [name copy];
}

+(instancetype)initwithName:(NSString *)name age:(NSInteger)age sex:(ZKMSex)sex{
    ZKMUser * initZKM =[[ZKMUser alloc]initwithName:name age:age sex:sex];
    return initZKM;
}
-(instancetype)initwithName:(NSString *)name age:(NSInteger)age sex:(ZKMSex)sex{
    if (self == [super init]) {
        _name = [name copy];
        _age = age;
        _sex = sex;
        _friend = [[NSMutableSet alloc]init];
    }
    return self;
}
-(void)addFriend:(ZKMUser *)user{
    [_friend addObject:user];
}
-(void)removeFriend:(ZKMUser *)user{
    [_friend removeObject:user];
}
-(id)copyWithZone:(NSZone *)zone{
    ZKMUser * copy = [[[self copy]copyWithZone:zone]initwithName:_name age:_age sex:_sex];
    copy->_friend = [_friend mutableCopy];
    return copy;
}
-(void)print{
    NSLog(@"this is All Friend,%@",_friend);
}
-(NSString *)description{
    return [NSString stringWithFormat:@"name:%@, age:%zd, sex:%zd",_name,_age,_sex];
}
//- (id)deepCopy{
//    ZKMUser *copy = [[[self copy] allocWithZone:zone]
//                     initWithName:_name
//                     age:_age
//                     sex:sex];
//    copy->_friends = [[NSMutableSet alloc] initWithSet:_friends
//                                             copyItems:YES];
//    return copy;
//}
@end
