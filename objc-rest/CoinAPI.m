//
//  RestCoinAPI.m
//  RestCoinAPI
//
//  Created by MyMac on 26/05/2017.
//  Copyright © 2017 Panda Mobile. All rights reserved.
//

#define COINAPI_URL @"https://rest.coinapi.io/"

#import "CoinAPI.h"

@implementation CoinAPI

- (id)init
{
    self = [super init];
    if (self) {
        strAPIKey = @"";
    }
    return self;
}

- (id)initWithAPIKey:(NSString*)strAPI
{
    self = [super init];
    if (self) {
        // All initializations, for example:
        strAPIKey = strAPI;
    }
    return self;
}

/** Metadata Functions **/
- (void)getAllMetadataExchanges
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/exchanges"];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Metadata - List all exchanges : %@", jsonResult);
    }] resume];
}

- (void)getAllMetadataAssets
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/assets"];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Metadata - List all assets : %@", jsonResult);
    }] resume];
}
- (void)getAllMetadataSymbols
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/symbols"];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Metadata - List all symbols : %@", jsonResult);
    }] resume];
}

/** Exchange Rates Functions **/
- (void)getSpecificExchangeRates:(NSString*)asset_id_base asset_id_quote:(NSString*)asset_id_quote time:(NSInteger)time
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/exchangerate/%@/%@", asset_id_base, asset_id_quote]];
    if (time > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/exchangerate/%@/%@?time=%ld", asset_id_base, asset_id_quote, time]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Exchange Rates - Get specific rate : %@", jsonResult);
    }] resume];
}
- (void)getAllExchangeRates:(NSString*)asset_id_base
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/exchangerate/%@", asset_id_base]];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Exchange Rates - Get all current rates : %@", jsonResult);
    }] resume];
}

/** OHLCV Functions **/
- (void)getAllOHLCVPeriods
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/ohlcv/periods"];
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"OHLCV - List all periods : %@", jsonResult);
    }] resume];
}
- (void)getLatestOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/ohlcv/%@/latest?period_id=%@", symbol_id, period_id]];
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/ohlcv/%@/latest?period_id=%@&limit=%ld", symbol_id, period_id, limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"OHLCV - Latest data : %@", jsonResult);
    }] resume];
}
- (void)getHistoricalOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/ohlcv/%@/latest?period_id=%@&time_start=%@", symbol_id, period_id, time_start]];
    if (time_end){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&time_end=%@", [url absoluteString], time_end]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"OHLCV - Historical data : %@", jsonResult);
    }] resume];
}

/** Trades Functions **/
- (void)getLatestTradesData:(NSString*)symbol_id limit:(NSInteger)limit;
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/trades/latest"];
    if (symbol_id){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/trades/%@/latest", symbol_id]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Trades - Latest data : %@", jsonResult);
    }] resume];
}

- (void)getHistoricalTradesData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/trades/%@/history?time_start=%@", symbol_id, time_start]];
    if (time_end){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&time_end=%@", [url absoluteString], time_end]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Trades - Historical data : %@", jsonResult);
    }] resume];
}

/** Quotes Functions **/
- (void)getCurrentQuotesData:(NSString*)symbol_id
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/quotes/current"];
    if (symbol_id){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/quotes/%@/current", symbol_id]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Quotes - Current data : %@", jsonResult);
    }] resume];
}

- (void)getLatestQuotesData:(NSString*)symbol_id limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/quotes/latest"];
    if (symbol_id){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/quotes/%@/latest", symbol_id]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Quotes - Latest data : %@", jsonResult);
    }] resume];
}

- (void)getHistoricalQuotesData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/quotes/%@/history?time_start=%@", symbol_id, time_start]];
    if (time_end){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&time_end=%@", [url absoluteString], time_end]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Quotes - Historical data : %@", jsonResult);
    }] resume];
}

/** Orderbooks Functions **/
- (void)getCurrentOrderbooksData:(NSString*)symbol_id
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/orderbooks/current"];
    if (symbol_id){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/orderbooks/%@/current", symbol_id]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Orderbooks - Current data : %@", jsonResult);
    }] resume];
}

- (void)getLatestOrderbooksData:(NSString*)symbol_id limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/orderbooks/%@/latest", symbol_id]];
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Orderbooks - Latest data : %@", jsonResult);
    }] resume];
}

- (void)getHistoricalOrderbooksData:(NSString*)symbol_id time_start:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/orderbooks/%@/history?time_start=%@", symbol_id, time_start]];
    if (time_end){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&time_end=%@", [url absoluteString], time_end]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Orderbooks - Historical data : %@", jsonResult);
    }] resume];
}

/** Twitter Functions **/
- (void)getLatestTwitterData:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:@"https://rest.coinapi.io/v1/twitter/latest"];
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?limit=%ld", [url absoluteString], limit]];
    }
    
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Twitter - Latest data : %@", jsonResult);
    }] resume];
}

- (void)getHistoricalTwitterData:(NSString*)time_start time_end:(NSString*)time_end limit:(NSInteger)limit
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://rest.coinapi.io/v1/twitter/history?time_start=%@", time_start]];
    if (time_end){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&time_end=%@", [url absoluteString], time_end]];
    }
    if (limit > 0){
        url = [NSURL URLWithString:[NSString stringWithFormat:@"%@&limit=%ld", [url absoluteString], limit]];
    }
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:100];
    [request setHTTPMethod: @"GET"];
    [request addValue:strAPIKey forHTTPHeaderField:@"X-CoinAPI-Key"] ;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSArray *jsonResult = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"Twitter - Historical data : %@", jsonResult);
    }] resume];
}

@end
