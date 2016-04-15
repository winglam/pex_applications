//
//  ViewController.m
//  PexApplication
//
//  Created by Adam Zhang on 4/15/16.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)solve:(id)sender {
    NSLog(@"yes");
    NSString *url = [NSString stringWithFormat:@"https://api.codehunt.com/api/token?grant_type=client_credentials&client_id=anonymous&client_secret=anonymous"];
    NSLog(url);
    NSURL *newURL = [NSURL URLWithString:url];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:newURL];
    [request setHTTPMethod:@"POST"];
    [request setValue:@"appl" forHTTPHeaderField:@"NjM1OTg4OTg1NzU4MDUyMzI1JEE2NzZiYTJjYTQ4ZjA0MDM1OGRkZGNmOTM2ZGUyMGIzMiQ="];
    NSURLResponse *response;
    NSError *err;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    NSString *strData = [[NSString alloc]initWithData:responseData encoding:NSUTF8StringEncoding ];
    NSLog(@"%@",strData);
}


@end
