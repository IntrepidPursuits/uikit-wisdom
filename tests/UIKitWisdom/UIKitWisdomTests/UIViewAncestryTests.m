#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "UIView+IPAncestry.h"

static NSString * const kChildAccessibilityLabel = @"child";

@interface UIViewAncestryTests : XCTestCase

@property (nonatomic, strong) UIView *grandparent;
@property (nonatomic, strong) UIView *parent;
@property (nonatomic, strong) UIView *child;
@property (nonatomic, strong) UIView *childTwo;
@property (nonatomic, strong) UIView *grandchild;

@end

@implementation UIViewAncestryTests

- (void)setUp {
    [super setUp];
    self.grandparent = [[UIView alloc] init];
    self.parent = [[UIView alloc] init];
    self.child = [[UIView alloc] init];
    self.childTwo = [[UIView alloc] init];
    self.grandchild = [[UIView alloc] init];

    [self.grandparent addSubview:self.parent];
    [self.parent addSubview:self.child];
    [self.parent addSubview:self.childTwo];
    [self.child addSubview:self.grandchild];

    self.child.accessibilityLabel = kChildAccessibilityLabel;
    self.childTwo.accessibilityLabel = kChildAccessibilityLabel;

    self.grandchild.backgroundColor = [UIColor redColor];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testAllDescendantViews {
    NSSet *allDescendants = [self.grandparent allDescendantViewsPassingTest:^BOOL(UIView *viewToCheck) {
        return viewToCheck.accessibilityLabel == kChildAccessibilityLabel;
    }];
    XCTAssert(allDescendants.count == 2, @"Got the wrong number of descendants");
    XCTAssert([allDescendants containsObject:self.child] && [allDescendants containsObject:self.childTwo], @"Got the wrong descendants");
}

- (void)testDescendantViewPassingTest {
    UIView *viewPassingTest = [self.parent descendantViewPassingTest:^BOOL(UIView *viewToCheck) {
        return viewToCheck.backgroundColor == [UIColor redColor];
    }];
    XCTAssert(viewPassingTest == self.grandchild, @"Got the wrong descendant");
}

- (void)testEnumerateSuperviews {
    [self.grandchild enumerateSuperviewsWithBlock:^(UIView *view, NSUInteger idx, BOOL *stop) {
        if (idx > 2) {
            XCTAssert(NO, @"Enumerated incorrectly");
        }
    }];
}

@end
