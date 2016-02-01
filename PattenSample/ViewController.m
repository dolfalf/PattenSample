//
//  ViewController.m
//  PattenSample
//
//  Created by lee jaeeun on 2016/01/27.
//  Copyright © 2016年 kjcode. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "CarElementPrintVisitor.h"
#import "CarElementDoVisitor.h"

#import "StateContext.h"

#import "ControlTower.h"
#import "Airplane.h"

typedef NS_ENUM(NSInteger, PattenName) {
    PattenNameVisitor,
    PattenNameState,
    PattenNameMediator,
    
};

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *myTableView;
@property (nonatomic, strong) NSArray *menuItems;
@end

@implementation ViewController

#pragma mark - Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Patten Sample code";
    self.menuItems = @[@"Visitor Patten",
                       @"State Patten",
                       @"Mediator Patten"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView delegate methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    cell.textLabel.text = [_menuItems objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case PattenNameVisitor:
            [self performVisitor];
            break;
        case PattenNameState:
            [self performState];
            break;
        case PattenNameMediator:
            [self performMediator];
            break;
        default:
            break;
    }
}

#pragma mark - private methods
- (void)performVisitor {
    //Visitor Patten Sample code.
    /*
     객체의 구조와 기능을 분리시키는 패턴
     구조는 변하지 않으며 기능만을 따로 추가, 확장되아야 할 경우에 사용되는 패턴
     컴포지트패턴(COmposite Patten)과 연동되어 사용되는 경우가 많다
     
     이 예제는 차를 바퀴, 엔진, 몸체 등의 요소들로 기능추가 없이 선언하고 기능은 이 후에 추가, 확장 하는 예제이다.
     기능(알고리즘)을 추가, 확장한다는 것을 방문이라고 표현 한 것 같다.
     */
    Car *car = [[Car alloc] initWithName:@"Nissan Car"];  //  아무 기능을 하지 않는다.
    
    CarElementPrintVisitor *print_visitor = [CarElementPrintVisitor new];
    [car acceptPrintVisitor:print_visitor];   //  방문자가 가지고있는 요소별 기능을 실행한다.
    
    CarElementDoVisitor *do_visitor = [CarElementDoVisitor new];
    [car acceptDoVisitor:do_visitor];   //  방문자가 가지고있는 요소별 기능을 실행한다.
}

- (void)performState {
    
    /*
     현재 상황에 따라 같은 일에 대해 다르게 반응을 합니다. 
     배가 고플 때 밥을 먹으면 배가 부릅니다. 하지만 배가 부를 때 밥을 또 먹으면 배터질 것 같아 화가 납니다. 
     같은 행동인 "밥을 먹는 것"에 대해 현재 상태가 "배부름"인지 "배고픔"인지에 따라 행동이 달라지는 것입니다.
     */
    StateContext *context = [StateContext new];
    NSLog(@"current state[%@]", context.currentState);
    [context processEvent:ActionEat];
    NSLog(@"current state[%@]", context.currentState);
    [context processEvent:ActionDigest];
    NSLog(@"current state[%@]", context.currentState);
    [context processEvent:ActionGotoBed];
    NSLog(@"current state[%@]", context.currentState);
}

- (void)performMediator {
    
    /*
     비행기가 이착륙하다가 충돌하는 일은 좀체로 일어나지 않습니다. 비행기들끼리 서로 통신하지 않는데도 말이죠. 각각의 비행기는 관제탑하고만 통신을 하고, 관제탑이 각각의 비행기에게 착륙해도 된다 또는 안 된다 식으로 메시지를 보내줍니다. 비행기들끼리 서로서로 직접 통신을 한다면 통신할 경우의 수가 무진장 많아져서 혼란스럽게 됩니다. Mediator 패턴은 관제탑과 같이 통신을 집중시킴으로써 통신의 경로를 줄이고 단순화시키는 역할을 합니다.

     */
    ControlTower *tower = [ControlTower new];
    
    NSMutableArray *airplanes = [NSMutableArray new];
    
    for (int i = 0; i < 10; i++) {
        Airplane *ap = [[Airplane alloc] initWithSeq:i];
        ap.tower = tower;
        
        airplanes[i] = ap;
    }
    
    for (Airplane *airplane in airplanes) {
        [airplane start];
    }
}

@end
