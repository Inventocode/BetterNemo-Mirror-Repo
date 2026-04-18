.class public Lcom/codemao/toolssdk/image_selector/widget/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/widget/CustomViewPager;->isLocked:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 25
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/CustomViewPager;->isLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 27
    :try_start_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_a

    return p1

    :catch_a
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_e
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/CustomViewPager;->isLocked:Z

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public setLocked(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/widget/CustomViewPager;->isLocked:Z

    return-void
.end method
