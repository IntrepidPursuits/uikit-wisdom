#import "UIView+Constraints.h"

@implementation UIView (CBConstraints)

- (void)constrainView:(UIView *)view top:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right {
    [self constrainView:view toInsets:UIEdgeInsetsMake(top, left, bottom, right)];
}

- (void)constrainView:(UIView *)view toInsets:(UIEdgeInsets)insets {
    NSMutableArray *constraints = [NSMutableArray array];
    if (insets.top != NSNotFound) {
        [constraints addObject:[NSLayoutConstraint constraintWithItem:view
                                                            attribute:NSLayoutAttributeTop
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeTop
                                                           multiplier:1.0
                                                             constant:insets.top]];
    }
    if (insets.left != NSNotFound) {
        [constraints addObject:[NSLayoutConstraint constraintWithItem:view
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1.0
                                                             constant:insets.left]];
    }
    if (insets.bottom != NSNotFound) {
        [constraints addObject:[NSLayoutConstraint constraintWithItem:view
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:-insets.bottom]];
    }
    if (insets.right != NSNotFound) {
        [constraints addObject:[NSLayoutConstraint constraintWithItem:view
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1.0
                                                             constant:-insets.right]];
    }
    
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraints:constraints];
}

- (void)constrainViewToEqualWidth:(UIView *)view {
    [self constrainViewToEqualWidth:view constant:0.0 multiplier:1.0];
}

- (void)constrainViewToEqualWidth:(UIView *)view constant:(CGFloat)constant multiplier:(CGFloat)multiplier {
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:view
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:self
                                                             attribute:NSLayoutAttributeWidth
                                                            multiplier:multiplier
                                                              constant:constant];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:width];
}

- (void)constrainViewToEqualHeight:(UIView *)view {
    [self constrainViewToEqualHeight:view constant:0.0 multiplier:1.0];
}

- (void)constrainViewToEqualHeight:(UIView *)view constant:(CGFloat)constant multiplier:(CGFloat)multiplier {
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:view
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:multiplier
                                                               constant:constant];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:height];
}

- (void)constrainView:(UIView *)view toWidth:(CGFloat)width {
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1.0
                                                                        constant:width];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:widthConstraint];
}

- (void)constrainView:(UIView *)view toHeight:(CGFloat)height {
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:view
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:height];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:heightConstraint];
}

- (void)constrainView:(UIView *)view aboveView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeBottom toView:positioningView attribute:NSLayoutAttributeTop];
}

- (void)constrainView:(UIView *)view belowView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeTop toView:positioningView attribute:NSLayoutAttributeBottom];
}

- (void)constrainView:(UIView *)view leftOfView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeRight toView:positioningView attribute:NSLayoutAttributeLeft];
}

- (void)constrainView:(UIView *)view rightOfView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeLeft toView:positioningView attribute:NSLayoutAttributeRight];
}

- (void)constrainView:(UIView *)view toTopOfView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeTop toView:positioningView attribute:NSLayoutAttributeTop];
}

- (void)constrainView:(UIView *)view toBottomOfView:(UIView *)positioningView {
    [self constrainView:view attribute:NSLayoutAttributeBottom toView:positioningView attribute:NSLayoutAttributeBottom];
}

- (void)constrainView:(UIView *)view toWidthOfView:(UIView *)sizingView {
    [self constrainView:view attribute:NSLayoutAttributeWidth toView:sizingView attribute:NSLayoutAttributeWidth];
}

- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB {
    [self constrainView:viewA
              attribute:attributeA
                 toView:viewB
              attribute:attributeB
               constant:0.0
             multiplier:1.0];
}

- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB constant:(CGFloat)constant multiplier:(CGFloat)multiplier {
    [self constrainView:viewA
              attribute:attributeA
                 toView:viewB
              attribute:attributeB
               constant:constant
             multiplier:multiplier
               relation:NSLayoutRelationEqual];
}

- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB constant:(CGFloat)constant multiplier:(CGFloat)multiplier relation:(NSLayoutRelation)relation {
    NSLayoutConstraint *bind = [NSLayoutConstraint constraintWithItem:viewA
                                                            attribute:attributeA
                                                            relatedBy:relation
                                                               toItem:viewB
                                                            attribute:attributeB
                                                           multiplier:multiplier
                                                             constant:constant];
    
    viewA.translatesAutoresizingMaskIntoConstraints = NO;
    viewB.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraint:bind];
}

- (void)constrainViewToLeft:(UIView *)view {
    [self constrainViewToLeft:view withInset:0];
}

- (void)constrainViewToLeft:(UIView *)view withInset:(CGFloat)inset {
    [self constrainView:view toInsets:UIEdgeInsetsMake(NSNotFound, inset, NSNotFound, NSNotFound)];
}

- (void)constrainViewToRight:(UIView *)view {
    [self constrainViewToRight:view withInset:0];
}

- (void)constrainViewToRight:(UIView *)view withInset:(CGFloat)inset {
    [self constrainView:view toInsets:UIEdgeInsetsMake(NSNotFound, NSNotFound, NSNotFound, -inset)];
}

- (void)constrainViewToTop:(UIView *)view {
    [self constrainViewToTop:view withInset:0];
}

- (void)constrainViewToTop:(UIView *)view withInset:(CGFloat)inset {
    [self constrainView:view toInsets:UIEdgeInsetsMake(inset, NSNotFound, NSNotFound, NSNotFound)];
}

- (void)constrainViewToBottom:(UIView *)view {
    [self constrainViewToBottom:view withInset:0];
}

- (void)constrainViewToBottom:(UIView *)view withInset:(CGFloat)inset {
    [self constrainView:view toInsets:UIEdgeInsetsMake(NSNotFound, NSNotFound, -inset, NSNotFound)];
}

- (void)constrainViewToMiddleVertically:(UIView *)view {
    [self constrainView:view attribute:NSLayoutAttributeCenterY toView:self attribute:NSLayoutAttributeCenterY];
}

- (void)constrainViewToMiddleHorizontally:(UIView *)view {
    [self constrainView:view attribute:NSLayoutAttributeCenterX toView:self attribute:NSLayoutAttributeCenterX];
}

- (void)constrainTopOfView:(UIView *)view toCenterYWithOffset:(CGFloat)offset {
    [self constrainView:view
              attribute:NSLayoutAttributeTop
                 toView:self
              attribute:NSLayoutAttributeCenterY
               constant:offset
             multiplier:1];
}

- (void)constrainBottomOfView:(UIView *)view toCenterYWithOffset:(CGFloat)offset {
    [self constrainView:view
              attribute:NSLayoutAttributeBottom
                 toView:self
              attribute:NSLayoutAttributeCenterY
               constant:offset
             multiplier:1];
}

- (void)constrainViewToAllEdges:(UIView *)view {
    [self constrainView:view toInsets:UIEdgeInsetsZero];
}

- (void)constrainViewToHorizontalEdges:(UIView *)view {
    [self constrainView:view toInsets:UIEdgeInsetsMake(NSNotFound, 0, NSNotFound, 0)];
}

@end
