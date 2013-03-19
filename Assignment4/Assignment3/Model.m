#import "Model.h"

@implementation Model

-initWithWithName:(NSString *) inName andUrl:(NSString *)inUrl
{
    _name = inName;
    _url = inUrl;
    return self;
}

-(NSString *) description
{
    return _name;
}

@end
