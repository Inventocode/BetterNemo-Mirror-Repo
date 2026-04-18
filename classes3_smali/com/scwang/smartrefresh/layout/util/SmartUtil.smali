.class public abstract Lcom/scwang/smartrefresh/layout/util/SmartUtil;
.super Ljava/lang/Object;
.source "SmartUtil.java"


# direct methods
.method public static fling(Landroid/view/View;I)V
    .registers 4

    .line 94
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_a

    .line 95
    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_38

    .line 96
    :cond_a
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1a

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_38

    .line 98
    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->fling(I)V

    goto :goto_38

    .line 100
    :cond_1a
    instance-of v0, p0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 101
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, v1, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_38

    .line 102
    :cond_25
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2f

    .line 103
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_38

    .line 104
    :cond_2f
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_38

    .line 105
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_38
    :goto_38
    return-void
.end method

.method public static isContentView(Landroid/view/View;)Z
    .registers 2

    .line 88
    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_11

    instance-of v0, p0, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_11

    instance-of p0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isScrollableView(Landroid/view/View;)Z
    .registers 2

    .line 80
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_17

    instance-of p0, p0, Landroidx/core/view/NestedScrollingChild;

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static measureViewHeight(Landroid/view/View;)I
    .registers 4

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_d

    .line 41
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    :cond_d
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 45
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1f

    const/high16 v2, 0x40000000  # 2.0f

    .line 46
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_23

    .line 48
    :cond_1f
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 50
    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public static scrollListBy(Landroid/widget/AbsListView;I)V
    .registers 5

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_2c

    .line 58
    :cond_a
    instance-of v0, p0, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 60
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    return-void

    .line 67
    :cond_17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 72
    :cond_1e
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    .line 73
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2c

    .line 75
    :cond_29
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :goto_2c
    return-void
.end method
