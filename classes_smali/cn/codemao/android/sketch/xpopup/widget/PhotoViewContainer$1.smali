.class Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "PhotoViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 128
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-object p1, p1, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    if-ltz p1, :cond_18

    .line 130
    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$000(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_18
    neg-int p1, p1

    .line 132
    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$000(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    .line 138
    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 139
    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-object p2, p2, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eq p1, p2, :cond_c

    .line 140
    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    .line 142
    :cond_c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float p2, p2, p3

    iget-object p4, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p4}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$000(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    const p4, 0x3e4ccccd  # 0.2f

    mul-float p4, p4, p2

    sub-float/2addr p3, p4

    .line 144
    iget-object p4, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-object p4, p4, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 145
    iget-object p4, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-object p4, p4, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 146
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 148
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$100(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 149
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$100(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    move-result-object p1

    invoke-interface {p1, p5, p3, p2}, Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;->onDragChange(IFF)V

    :cond_48
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 5

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p3}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$200(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I

    move-result p3

    if-le p2, p3, :cond_25

    .line 158
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$100(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$100(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;->onRelease()V

    goto :goto_41

    .line 160
    :cond_25
    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$300(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-object p3, p3, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 161
    iget-object p2, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p2}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->access$300(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 162
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 3

    .line 118
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;->this$0:Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;

    iget-boolean p1, p1, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
