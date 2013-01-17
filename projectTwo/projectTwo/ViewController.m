//
//  ViewController.m
//  AOC1-1301
//  projectTwo
//
//  Created by Devona Ward on 1/16/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Background color
    self.view.backgroundColor = [UIColor colorWithRed:0.914 green:0.588 blue:0.478 alpha:1];
    
    //Title of book.
    title = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    title.text = @"Thirteenth Chime";
    title.textColor = [UIColor colorWithRed:1 green:0.188 blue:0.188 alpha:1];
    title.backgroundColor = [UIColor blackColor];
    title.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: title];
    
    //Author
    author = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 30.0f, 100.0f, 20.0f)];
    author.text = @"Author:";
    author.textColor = [UIColor whiteColor];
    author.backgroundColor = [UIColor colorWithRed:0.063 green:0.306 blue:0.545 alpha:1];
    author.textAlignment = NSTextAlignmentRight;
    [self.view addSubview: author];
    
    //Author name
    authorName = [[UILabel alloc] initWithFrame: CGRectMake(100.0f, 30.0f, 220.0f, 20.0f)];
    authorName.text = @"Emma Michaels";
    authorName.textColor = [UIColor greenColor];
    authorName.backgroundColor = [UIColor colorWithRed:0.51 green:0.51 blue:0.51 alpha:1];
    authorName.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: authorName];
    
    //Published
    published = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 60.0f, 100.0f, 20.0f)];
    published.text = @"Published:";
    published.textColor = [UIColor colorWithRed:0.333 green:0.102 blue:0.545 alpha:1];
    published.backgroundColor = [UIColor colorWithRed:1 green:0.412 blue:0.706 alpha:1];
    published.textAlignment = NSTextAlignmentRight;
    [self.view addSubview: published];
    
    //Published Date
    publishedDate = [[UILabel alloc] initWithFrame: CGRectMake(100.0f, 60.0f, 220.0f, 20.0f)];
    publishedDate.text = @"August 10, 2012";
    publishedDate.textColor = [UIColor colorWithRed:0.545 green:0.494 blue:0.4 alpha:1];
    publishedDate.backgroundColor = [UIColor colorWithRed:0.933 green:0.933 blue:0 alpha:1];
    publishedDate.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: publishedDate];
    
    //Sunmmary
    summary = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 90.0f, 100.0f, 20.0f)];
    summary.text = @"Summary:";
    summary.textColor = [UIColor colorWithRed:0.941 green:0.973 blue:1 alpha:1];
    summary.backgroundColor = [UIColor colorWithRed:0.604 green:0.804 blue:0.196 alpha:1];
    summary.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: summary];
    
    
    //Summary Detail
    summaryDetail= [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 120.0f, 320.0f, 150.0f)];
    summaryDetail.numberOfLines = 8;
    summaryDetail.textAlignment = NSTextAlignmentCenter;
    summaryDetail.textColor = [UIColor colorWithRed:0.271 green:0.545 blue:0.455 alpha:1];
    summaryDetail.backgroundColor = [UIColor colorWithRed:1 green:0.647 blue:0.31 alpha:1];
    summaryDetail.text = @"An ancient clock that mysteriously chimes. Stephanie, her friend Destiny, and her mother gets attacked. They end up going to the hospital, and Destiny is forced to deal with things in her past life in order to solve the riddle of the thirteenth chime before time runs out.";
    [self.view addSubview: summaryDetail];
    
    //List of items
    listOfItems = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 280.0f, 100.0f, 20.0f)];
    listOfItems.text = @"List of Items:";
    listOfItems.textColor = [UIColor colorWithRed:0.541 green:0.169 blue:0.886 alpha:1];
    listOfItems.backgroundColor = [UIColor colorWithRed:0.961 green:0.961 blue:0.863 alpha:1];
    listOfItems.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview: listOfItems];
    
    //Array of items
    NSArray *itemArray = [[NSArray alloc] initWithObjects: @"Clock", @"Hospital", @"Attic", @"House", @"Trip", nil];
    
    NSMutableArray *mutableItemArray = [[NSMutableArray alloc]initWithCapacity:10];
   
    //Loop to add opjects in to mutable array.
    for(int i=0; i<[itemArray count]; i++)
    {
        [mutableItemArray addObject:[itemArray objectAtIndex:i]];
    }

    //Items from mutable array.
    items = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 310.0f, 320.0f, 20.0f)];
    items.text = [NSString stringWithFormat: @"%@ ", [mutableItemArray componentsJoinedByString:@", "]];
    items.textAlignment = NSTextAlignmentCenter;
    items.textColor = [UIColor colorWithRed:0 green:0.392 blue:0 alpha:1];
    items.backgroundColor = [UIColor colorWithRed:0.392 green:0.584 blue:0.929 alpha:1];
    
    [self.view addSubview: items];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
