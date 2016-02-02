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

#import "AnimalFactory.h"

#import "Designer.h"
#import "Gamer.h"

#import "CupSeller.h"
#import "PhoneSeller.h"
#import "Mart.h"

#import "ComponentObject.h"
#import "Composite.h"
#import "Leaf.h"

#import "Decorator.h"
#import "ChildDecorator.h"

#import "Problem.h"
#import "Fighter.h"
#import "Hacker.h"
#import "Casanova.h"

#import "Home.h"

#import "BatmanBuilder.h"
#import "Director.h"

typedef NS_ENUM(NSInteger, PattenName) {
    TestCode,
    PattenNameVisitor,
    PattenNameState,
    PattenNameMediator,
    PattenNameFactory,
    PattenNameTempleteMethod,
    PattenNameStrategy,
    PattenNameComposite,
    PattenNameDecorator,
    PattenNameChainOfResponsibility,
    PattenNameFacade,
    PattenNameBuilder,
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
    self.menuItems = @[@"Test code",
                       @"Visitor Patten",
                       @"State Patten",
                       @"Mediator Patten",
                       @"Factory Patten",
                       @"Templete method Patten",
                       @"Strategy Patten",
                       @"Composite Patten",
                       @"Decorator Patten",
                       @"Chain of responsibility Pattten",
                       @"Facade Patten",
                       @"Builder Patten"];
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
        case TestCode:
            [self testSample];
            break;
        case PattenNameVisitor:
            [self performVisitor];
            break;
        case PattenNameState:
            [self performState];
            break;
        case PattenNameMediator:
            [self performMediator];
            break;
        case PattenNameFactory:
            [self performFactory];
            break;
        case PattenNameTempleteMethod:
            [self performTempleteMethod];
            break;
        case PattenNameStrategy:
            [self performStrategy];
            break;
        case PattenNameComposite:
            [self performComposite];
            break;
        case PattenNameDecorator:
            [self performDecorator];
            break;
        case PattenNameChainOfResponsibility:
            [self performChainOfResponsibility];
            break;
        case PattenNameFacade:
            [self performFacade];
            break;
            case PattenNameBuilder:
            [self performBuilder];
        default:
            break;
    }
}

#pragma mark - testSample
- (void)testSample {
    NSLog(@"%s", __FUNCTION__);
    
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
    
    
//    NSMutableDictionary *a = [NSMutableDictionary new];
//    a[@"1"]=@"aaa";
//    a[@"2"]=@"bbb";
//    
//    NSLog(@"%d", (int)CFGetRetainCount((__bridge CFTypeRef)a));
//    
//    id kk = [a mutableCopy];
//    
//    NSLog(@"%@",[kk class]);
//    _aa = [a mutableCopy];
//    [self.aa removeObjectForKey:@"1"];
//    
//    NSLog(@"%d", (int)CFGetRetainCount((__bridge CFTypeRef)a));
//    NSLog(@"%d", (int)CFGetRetainCount((__bridge CFTypeRef)_aa));
    
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
     비행기가 이착륙하다가 충돌하는 일은 좀체로 일어나지 않습니다. 비행기들끼리 서로 통신하지 않는데도 말이죠. 각각의 비행기는 관제탑하고만 통신을 하고, 
     관제탑이 각각의 비행기에게 착륙해도 된다 또는 안 된다 식으로 메시지를 보내줍니다. 비행기들끼리 서로서로 직접 통신을 한다면 통신할 경우의 수가 무진장 
     많아져서 혼란스럽게 됩니다. Mediator 패턴은 관제탑과 같이 통신을 집중시킴으로써 통신의 경로를 줄이고 단순화시키는 역할을 합니다.
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

- (void)performFactory {
    /*
     정확히 어떤 클래스의 인스턴스인지 신경쓰지 않고 구현할 수 있는 장점이 있습니다. 객체 타입이 굉장히 유연해 질 수 있죠.
     */
    Animal *a1= [AnimalFactory create:@"소"];
    [a1 printDescription];
    Animal *a2= [AnimalFactory create:@"고양이"];
    [a2 printDescription];
    Animal *a3= [AnimalFactory create:@"개"];
    [a3 printDescription];
}

- (void)performTempleteMethod {

    /*
     전체적인 로직에는 큰 차이가 없지만 일부분만 바뀌는 비스무레한 몇 가지 클래스가 있다고 칩시다. 
     일부분을 위해서 전체를 새로 작성할 필요는 없지요. Template Method에서는 전반적인 구현은 
     상위클래스(주로 Abstract로 만듭니다.)에서 담당하고 부분적인 곳의 구체적인 구현은 하위클래스가 담당합니다.
     */
    Worker *designer = [Designer new];
    [designer work];
    Worker *gamer = [Gamer new];
    [gamer work];
    
}

- (void)performStrategy {
    /*
     Template Method 패턴이 상속을 이용해서 어떤 구현을 했다면, Strategy 패턴은 구성을 이용합니다. 
     Template Method와 마찬가지로 바뀌는 부분과 바뀌지 않는 부분을 나눠서 생각할 수 있습니다. 
     Template Method가 하위 클래스에서 바뀌는 부분을 처리한다면 Starategy는 바뀌는 부분을 인터페이스로 분리하여 처리합니다. 
     그 인터페이스의 구현체를 바꿈으로서 로직을 변경하는 것입니다. 또 Template Method와 크게 다른 점은 Template Method에서는 
     외부로 공개되는 것이 Template Method를 가지고 있는 상위 클래스였지만, 
     Strategy에서는 인터페이스를 사용하는 클래스(그 클래스를 Context라고 합니다.)입니다.
     
     */
    
    Seller *cupSeller = [CupSeller new];
    Seller *phoneSeller = [PhoneSeller new];
    
    Mart *mart1 = [[Mart alloc] initWithSeller:cupSeller];
    [mart1 order];
    
    Mart *mart2 = [[Mart alloc] initWithSeller:phoneSeller];
    [mart2 order];
    
    /*
     위에서 보시다 시피 테스트 클래스에서는 Seller의 sell()을 호출하지 않습니다. 
     Mart의 order()를 호출합니다. Seller의 메쏘드는 외부로 공개되지 않습니다.
     Mart 클래스가 여기서는 외부로 공개되는 Context가 됩니다. 
     Mart는 멤버 변수로 Seller를 가집니다. Mart에서 가지는 Seller를 바꿔치기함으로써 Mart의 order()에서 실제 실행되는 로직이 달라질 수 있습니다.
     
     3. Strategy의 유용성
     
     예제에서는 Context 클래스가 한 개의 Strategy 인터페이스만을 가집니다. 
     Seller 외에 여러가지 인터페이스를 가질 수도 있습니다. 예를 들어 만드는 사람, 운반하는 사람, 파는 사람은 각각 다를 수 있습니다. 
     예제에서는 코드를 줄이기 위해 파는 사람만 2가지 종류의 클래스를 만들었습니다. 
     그러나, 만드는 사람 인터페이스와 운반하는 사람 인터페이스 등을 만들고 그 구현체 들을 만들면, 
     상당히 다양한 로직이 나올 수 있습니다. 만드는 사람의 구현체가 3종류, 운반하는 사람의 구현체가 3종류, 파는 사람의 구현체가 3종류라하면, 
     만들어서 운반해서 파는 로직은 총 3*3*3= 27가지가 나옵니다. 이를 상속을 이용한 클래스를 제작하면, 
     27가지의 구현체가 필요합니다. Strategy를 쓰면, 9개의 구현체만 필요하며, 
     또 인터페이스를 이용한 프로그램이 가능합니다.
     */
}

- (void)performComposite {
    
    /*
     파일 데이터와 같은 일반적인 트리 구조의 데이터 타입을 만드는 것이 Composite 패턴입니다. 
     Composite 패턴에서 주요등장 인물은 3개입니다. 첫째는 상위 컴포넌트. 둘째는 상위 컴포넌트를 상속 받으며 
     자식 컴포넌트를 가질 수 있는 Composite. 세째는 상위 컴포넌트를 상속 받으며, 하위 컴포넌트를 가질 수 없는 Leaf. 
     디렉토리가 Composite라면, 파일은 Leaf라고 보시면 됩니다.
     
     3. add와 getChildren 의 구현 방법
     
     첫째, Component 에서 모든 것을 구현하고, Leaf에서는 add 메쏘드 호출 시 UnsupportedOperationException 을 던집니다. 
     Component-Composite-Leaf 3 개의 구조가 아니라 Component-Leaf의 2개 구조만 있어도 됩니다. 그래서 구조가 간단해집니다. 
     그러나 Composite에는 있고, Leaf에는 없는 메쏘드를 구현할 방법이 없어집니다. 위의 예제는 단지 트리구조를 구현하는 것이라 상관없지만, 
     추가 기능을 구현할 가능성이 있는 경우는 이 방법을 쓰면 후에 문제가 생길 수 있습니다.
     둘째, Component 에서는 abstract로 선언만 하고 Composite와 Leaf에서 구현을 합니다.
     Leaf에서는 첫번째 방법과 마찬가지로 UnsupportedOperationException 를 던지면 됩니다. 
     구조는 복잡하지만, 첫번째 방법에 비해 다른 기능 추가는 상대적으로 쉽습니다.
     */
    
    Composite *main = [[Composite alloc] initWithName:@"Main"];
    Composite *sub1 = [[Composite alloc] initWithName:@"sub1"];
    Composite *sub2 = [[Composite alloc] initWithName:@"sub2"];
    Composite *sub11 = [[Composite alloc] initWithName:@"sub11"];
    Composite *sub12 = [[Composite alloc] initWithName:@"sub12"];
    Composite *sub13 = [[Composite alloc] initWithName:@"sub13"];
    Composite *sub21 = [[Composite alloc] initWithName:@"sub21"];
    Composite *sub22 = [[Composite alloc] initWithName:@"sub22"];
    
    Leaf *leaf14 = [[Leaf alloc] initWithName:@"leaf14"];
    Leaf *leaf121 = [[Leaf alloc] initWithName:@"leaf121"];
    
    [main add:sub1];
    [main add:sub2];
    [sub1 add:sub11];
    [sub1 add:sub12];
    [sub1 add:sub13];
    [sub2 add:sub21];
    [sub2 add:sub22];
    [sub1 add:leaf14];
    [sub12 add:leaf121];
    
    NSLog(@"%@", [main operation]);
}

- (void)performDecorator {
    
    /*
      Decorator가 원래 클래스이고 이걸 ChildDecorator 라는 데코레이터 클래스를 만들어 꾸며주는 방식?
     
     데코레이터 패턴에서 상위클래스(Decorator라 합니다.) 와 하위 클래스(ConcreteDecorator라 합니다.) 와의 관계를 알아봅시다.
     첫째, 하위 클래스는 상위클래스의 형식을 멤버변수로 가집니다. ChildDecorator 는 Decorator를 멤버변수로 받습니다.
     일반적으로 생성자의 인자로 받아서 멤버변수로 쎄팅을 합니다. 별도의 setter를 가지는 경우는 거의 없습니다.
     둘째, 하위 클래스는 상위클래스를 상속 받아 상위클래스의 메쏘드를 이용합니다. 하위 클래스의 getMerong() 이라는 메쏘드는 
     상위 클래스의 getMerong()을 오버라이드하지만, 내부적으로 상위클래스의 getMerong()을 사용하고 있습니다.
     
     3. Decorator가 일반적인 상속과 다른 점
     
     Decorator는 메쏘드의 확장 개념입니다. 멤버 변수로 받은 객체의 메쏘드를 이용하여 그 메쏘드를 확장하는 것입니다.
     
     4. JAVA API에 있는 Decorator
     
     java.io에 있는 InputStream, Reader, OutputStream, Writer 등은 모두 Decorator 패턴으로 구성되어 있습니다.
     파일을 Reader로 읽는 경우를 살펴보겠습니다.
     
     Reader reader = new FileReader("파일명");
     
     Reader reader = new BufferedReader(new FileReader("파일명");

     */
    Decorator *decorator = [[Decorator alloc] init];
    NSLog(@"%@", [decorator merong]);
    
    Decorator *child = [[ChildDecorator alloc] initWithDecorator:decorator];
    NSLog(@"%@", [child merong]);
    
    Decorator *child2 = [[ChildDecorator alloc] initWithDecorator:child];
    NSLog(@"%@", [child2 merong]);
    
}

- (void)performChainOfResponsibility {
    
    /*
     오션스 일레븐과 같은 류의 영화를 보신 적이 있죠? 전문가들이 몇 명 있습니다. 
     그러나, 그 전문가들은 할 수 있는 일이 극히 제한되어 있죠. 예를 들어, 해커가 격투에 능하진 않습니다. 
     해커는 단지 해킹에만 능합니다. 그들은 각각은 할 수 있는 일들이 제한적이지만, 모여있으면 세상만사 다 해결합니다. 
     각각의 전문가들이 자기가 할 수 있는 일만 하면 되거든요. 만약에 그들 모두가 해결할 수 없는 문제가 발생하면... 
     오션스 투엘브가 되고, 오션스 써틴이 되고 하면 됩니다. 또 영입하면 되죠 멀..
     Chain of Responsiblity 패턴에서는 문제 해결사들이 한줄로 쫙 서있다가 문제가 들어오면, 자기가 해결할 수 있으면 해결하고, 
     안 되면 다음 해결사에게 문제를 넘겨버립니다.
     */
    
    NSMutableArray *problems = [NSMutableArray new];
    problems[0] = [[Problem alloc] initWithName:@"덩치 큰 깡패"];
    problems[1] = [[Problem alloc] initWithName:@"컴퓨터 보안장치"];
    problems[2] = [[Problem alloc] initWithName:@"까칠한 여자"];
    problems[3] = [[Problem alloc] initWithName:@"날렵한 깡패"];
    problems[4] = [[Problem alloc] initWithName:@"폭탄"];
    
    Expert *fighter = [Fighter new];
    Expert *hacker = [Hacker new];
    Expert *casanova = [Casanova new];
    
    [[fighter setupNext:hacker] setupNext:casanova];
    
    for (Problem *problem in problems) {
        [fighter support:problem];
    }
}

- (void)performFacade {
    
    /*
     여러가지 복잡한 것들을 하나로 간주해서 편하게 다루는 방법입니다.
     예를 들어, 우리가 흔히 자동차라고 하는 물건은 바퀴, 엔진, 오디오, 사이드 미러 등등 으로 이루어져있지만
     우리는 그냥 다 자동차라고 생각하는 게 편합니다. 차안에서 음악을 듣고 싶으면, 그냥 오디오를 켜면 됩니다. 
     "차량에 내장된 오디오"라는 것을 굳이 명확히 하기는 귀찮죠.
     */
    
    TV *tv = [TV new];
    Audio *audio = [Audio new];
    Light *light = [Light new];
    
    Home *home = [[Home alloc] initWithTV:tv audio:audio light:light];
    [home enjoyTv];
    [home enjoyMusic];
    [home goOut];
}

- (void)performBuilder {
    /*
     뭔가가 만들어 지는 과정은 꽤나 복잡할 수가 있습니다. 게다가 그 복잡한 과정이 순서대로 실행되어야 할 때도 있습니다. 
     객체의 생성에 있어서 이런 복잡한 과정들을 분리해 내는 것이 Builder 패턴입니다.
     
     Hero라는 클래스가 있습니다. 이 클래스는 그냥 생성자만 호출해서는 아무 쓸모없는 클래스입니다. 
     이런 저런 정보들이 많이 쎄팅이 되어야 비로소 쓸만한 객체가 됩니다.(예제에서는 setArmSource()과 setLegSource()와 같은 게 
     그런 복잡한 세팅 과정에 관여하는 메쏘듭니다.) 따라서 이 클래스의 객체를 생성하는 과정은 매우 번거롭습니다.
     이런 번거로운 과정을 Director에서 간단하게 build()라는 메쏘드로 해결을 하려고 합니다. build()라는 메쏘드는 참 간단한 것 같은데, 
     번거로운 과정을 어떻게 다 커버하느냐는 결국 Builder에 위임해서 해결합니다.
     Builder는 비교적 세부적인 사항들을 다룹니다. 이에 비해 Director는 좀 더 포괄적인 과정은 다룹니다. 
     위의 예제의 경우는 Builder는 팔은 어떻게 만들어 지고 다리는 어떻게 만들어지는 지 등과 같은 것을 다루며(세부적인 사항인
     makeArm(), makeLeg()와 같은 메쏘드), Director는 팔을 만들고 다리를 만들면 대략 Hero 하나 완성시킬 수 있다는 
     전체적인 로직(포괄적인 과정인 build() 메쏘드)을 다룹니다. 즉, Director는 다른 Hero를 만드는데도 활용할 수 있지만, 
     Builder는 각각의 Hero에 국한됩니다.
     
     위의 예제는 예제인 만큼 간단하게 만들었습니다만, Hero를 만들기 위해서 수십수백 가지의 정보가 세팅되어야 한다고 칩시다. 
     이럴 때, Hero의 생성자에 그런 정보들을 다 세팅해줄 수는 없습니다.
     */
    Builder *builder = [BatmanBuilder new];
    Director *director = [[Director alloc] initWithBuilder:builder];
    [director build];

    Hero *hero = [director getHero];
    [hero showResult];
}

@end
