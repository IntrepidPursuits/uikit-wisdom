@import UIKit;

@interface UIView (CBConstraints)

/*!
 *  Constrain a view with specified insets.  Use `NSNotFound` to specify edges that should not be set
 *
 *  @param view   the view to constrain
 *  @param insets the insets to use when positioning the view
 */
- (void)constrainView:(UIView *)view toInsets:(UIEdgeInsets)insets;

/*!
 *  Constrain view's left edge to the left edge of the caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToLeft:(UIView *)view;

/*!
 *  Constrain view's left edge to the left edge of the caller with an inset
 *
 *  @param view  the view to constrain
 *  @param inset the inset of the view
 */
- (void)constrainViewToLeft:(UIView *)view withInset:(CGFloat)inset;

/*!
 *  Constrain view's right edge to the right edge of the caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToRight:(UIView *)view;

/*!
 *  Constrain view's right edge to the right edge of the caller with an inset
 *
 *  @param view  the view to constrain
 *  @param inset the inset to use when positioning the view
 */
- (void)constrainViewToRight:(UIView *)view withInset:(CGFloat)inset;

/*!
 *  Constrain view's top edge to the top edge of the caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToTop:(UIView *)view;

/*!
 *  Constrain view's top edge to the top edge of the caller with specified inset
 *
 *  @param view  the view to constrain
 *  @param inset the inset to use when positioning the view
 */
- (void)constrainViewToTop:(UIView *)view withInset:(CGFloat)inset;

/*!
 *  Constrain view's bottom edge to the bottom edge of the caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToBottom:(UIView *)view;

/*!
 *  Constrain view's bottom edge to the bottom edge of the caller with specified inset
 *
 *  @param view  the view to constrain
 *  @param inset the inset to use when positioning the view
 */
- (void)constrainViewToBottom:(UIView *)view withInset:(CGFloat)inset;

/*!
 *  Constrain a view within the caller with specified insets from the edges.  Use 'NSNotFound' to specify edges that shouldn't be set
 *
 *  @param view   the view to constrain
 *  @param top    the top inset
 *  @param left   left inset
 *  @param bottom bottom inset
 *  @param right  right inset
 */
- (void)constrainView:(UIView *)view top:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right;

/*!
 *  Set a view's width to be equal to the caller's width
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToEqualWidth:(UIView *)view;

/*!
 *  Set a view's width to be equal to the caller's width with a constant and multiplier option
 *
 *  @param view       the view to constrain
 *  @param constant   constant offset
 *  @param multiplier multiplier
 */
- (void)constrainViewToEqualWidth:(UIView *)view constant:(CGFloat)constant multiplier:(CGFloat)multiplier;

/*!
 *  Set a view's height to be equal to the caller's height
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToEqualHeight:(UIView *)view;

/*!
 *  Set a view's height to be equal to the caller's height with a constant and multiplier option
 *
 *  @param view       the view to constrain
 *  @param constant   the constant to offset
 *  @param multiplier multiplier
 */
- (void)constrainViewToEqualHeight:(UIView *)view constant:(CGFloat)constant multiplier:(CGFloat)multiplier;

/*!
 *  Constrain a view to a specified width
 *
 *  @param view  the view to constrain
 *  @param width the width to constrain the view
 */
- (void)constrainView:(UIView *)view toWidth:(CGFloat)width;

/*!
 *  Constrain a view to a specified height
 *
 *  @param view   the view to constrain
 *  @param height the height to constrain the view
 */
- (void)constrainView:(UIView *)view toHeight:(CGFloat)height;

/*!
 *  Position a view above another view.
 *
 *  @param view            the view to position above
 *  @param positioningView the view to use for positioning
 */
- (void)constrainView:(UIView *)view aboveView:(UIView *)positioningView;

/*!
 *  Position a view below another view
 *
 *  @param view            the view to position below
 *  @param positioningView the view to use for positioning
 */
- (void)constrainView:(UIView *)view belowView:(UIView *)positioningView;

/*!
 *  Position a view to the left of another view
 *
 *  @param view            the view to position
 *  @param positioningView the view to use for positioning
 */
- (void)constrainView:(UIView *)view leftOfView:(UIView *)positioningView;

/*!
 *  Position a view to the right of another view
 *
 *  @param view            the view to position
 *  @param positioningView the view to use for positioning
 */
- (void)constrainView:(UIView *)view rightOfView:(UIView *)positioningView;

/*!
 *  More customizable control for building relationships between two views
 *
 *  @param viewA      a view to constrain
 *  @param attributeA the attribute to constrain
 *  @param viewB      the second view used in constrainint
 *  @param attributeB the attribute to constrain
 */
- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB;

/*!
 *  More customizable control for building relationships between two views
 *
 *  @param viewA      a view to constrain
 *  @param attributeA the attribute to constrain
 *  @param viewB      the second view used in constraint
 *  @param attributeB secondary view attribute
 *  @param constant   constant
 *  @param multiplier multiplier
 */
- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB constant:(CGFloat)constant multiplier:(CGFloat)multiplier;

/*!
 *  More customizable control for building relationships between two views
 *
 *  @param viewA      primary view to constrain
 *  @param attributeA primary attribute
 *  @param viewB      secondary view to constrain
 *  @param attributeB secondary attribute
 *  @param constant   constant
 *  @param multiplier multiplier
 *  @param relation   relation
 */
- (void)constrainView:(UIView *)viewA attribute:(NSLayoutAttribute)attributeA toView:(UIView *)viewB attribute:(NSLayoutAttribute)attributeB constant:(CGFloat)constant multiplier:(CGFloat)multiplier relation:(NSLayoutRelation)relation;

/*!
 *  Convenience for horizontal center
 *
 *  @param view view to constrain
 */
- (void)constrainViewToMiddleHorizontally:(UIView *)view;

/*!
 *  Convenience for vertical center
 *
 *  @param view view to constrain
 */
- (void)constrainViewToMiddleVertically:(UIView *)view;

/*!
 *  Constrain top of view to the center with specified offset
 *
 *  @param view   view to constrain
 *  @param offset the offset from centerY to top of view
 */
- (void)constrainTopOfView:(UIView *)view toCenterYWithOffset:(CGFloat)offset;

/*!
 *  Constrain bottom of view to the center with specified offset
 *
 *  @param view   the view to constrain
 *  @param offset the offset from centerY to bottom of view
 */
- (void)constrainBottomOfView:(UIView *)view toCenterYWithOffset:(CGFloat)offset;

/*!
 *  Constrain the view to 0 on all edges of caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToAllEdges:(UIView *)view;

/*!
 *  Constrain the left and right edges of the view to the caller
 *
 *  @param view the view to constrain
 */
- (void)constrainViewToHorizontalEdges:(UIView *)view;

@end
