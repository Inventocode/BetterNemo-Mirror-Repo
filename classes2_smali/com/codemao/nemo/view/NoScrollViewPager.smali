.class public Lcom/codemao/nemo/view/NoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private noScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/codemao/nemo/view/NoScrollViewPager;->noScroll:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 28
    iget-boolean v0, p0, Lcom/codemao/nemo/view/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 19
    iget-boolean v0, p0, Lcom/codemao/nemo/view/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNoScroll(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/codemao/nemo/view/NoScrollViewPager;->noScroll:Z

    return-void
.end method
