#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface Assignment4DetailViewController : UIViewController{
    MBProgressHUD *HUD;
}

@property (nonatomic, weak) IBOutlet UIWebView * webView;

@property (nonatomic, strong) NSString * url;

@end
