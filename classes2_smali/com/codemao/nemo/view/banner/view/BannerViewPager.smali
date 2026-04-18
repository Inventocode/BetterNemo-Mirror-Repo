.class public Lcom/codemao/nemo/view/banner/view/BannerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "BannerViewPager.java"


# instance fields
.field private scrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/codemao/nemo/view/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 37
    iget-boolean v0, p0, Lcom/codemao/nemo/view/banner/view/BannerViewPager;->scrollable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 38
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 41
    :cond_12
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_17
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 22
    iget-boolean v0, p0, Lcom/codemao/nemo/view/banner/view/BannerViewPager;->scrollable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 26
    :cond_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 29
    :cond_13
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_18
    return v1
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/codemao/nemo/view/banner/view/BannerViewPager;->scrollable:Z

    return-void
.end method
