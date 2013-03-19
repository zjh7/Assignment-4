#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (nonatomic, assign) BOOL allSelected;

@property (nonatomic, strong) NSMutableArray * linklist;

@property (nonatomic, weak) IBOutlet UITableView *listView;

@end
