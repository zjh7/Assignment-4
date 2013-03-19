#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * url;

-initWithWithName:(NSString *) inName andUrl:(NSString *) inUrl;

-(NSString *) description;

@end
