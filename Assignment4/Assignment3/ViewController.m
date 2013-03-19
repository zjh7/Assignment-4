#import "ViewController.h"
#import "Assignment4DetailViewController.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Links";
    
    _linklist = [NSMutableArray arrayWithCapacity:0];
    
    Model * newModel = [[Model alloc] initWithWithName:@"Reddit" andUrl:@"http://www.reddit.com"];
    [_linklist addObject:newModel];
    newModel = [[Model alloc] initWithWithName:@"Google" andUrl:@"htp://www.google.com"];
    [_linklist addObject:newModel];
    newModel = [[Model alloc] initWithWithName:@"Pitt" andUrl:@"http://www.pitt.edu"];
    [_linklist addObject:newModel];
    newModel = [[Model alloc] initWithWithName:@"YouTube" andUrl:@"http://www.youtube.com"];
    [_linklist addObject:newModel];
    newModel = [[Model alloc] initWithWithName:@"Blizzard" andUrl:@"http://www.blizzard.com"];
    [_linklist addObject:newModel];
    [_listView reloadData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark IBActions

#pragma mark UITableView dataSource and delegate methods

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Link";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([_linklist count]==0)
    {
        return 1;
    }
    return [_linklist count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    if([_linklist count] == 0){
        cell.textLabel.text = @"No Links in List";
        cell.detailTextLabel.text = @"Womp womp";
        if(_allSelected){
            [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
        } else {
            [cell setAccessoryType:UITableViewCellAccessoryNone];
        }

        
    } else {
        
        Model * tempModel = [_linklist objectAtIndex:indexPath.row];
        cell.textLabel.text = [tempModel name];
        cell.detailTextLabel.text = [tempModel url];
    }
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Model * selectedModel = [_linklist objectAtIndex:indexPath.row];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    Assignment4DetailViewController * detailView = [[Assignment4DetailViewController alloc] initWithNibName:@"Assignment4DetailViewController" bundle:nil];
    
    detailView.title = selectedModel.name;
    detailView.url = selectedModel.url;
    
    [self.navigationController pushViewController:detailView animated:YES];
}

@end