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
//    NSString *url = [NSString stringWithFormat:@"https://api.codehunt.com/api/token?grant_type=client_credentials&client_id=anonymous&client_secret=anonymous"];
    NSString *url = [NSString stringWithFormat:@"https://api.codehunt.com/api/programs"];
    NSLog(url);
    NSURL *newURL = [NSURL URLWithString:url];
    NSString *filePath = @"/Users/Adam/Documents/workspace/PexTestCase/src/TestCase.java ";
    NSData *data = [[NSFileManager defaultManager]contentsAtPath:filePath];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:newURL];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:data ];
    NSURLResponse *response;
    NSError *err;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    NSString *strData = [[NSString alloc]initWithData:responseData encoding:NSUTF8StringEncoding ];
    NSLog(@"%@",strData);
}


@end
