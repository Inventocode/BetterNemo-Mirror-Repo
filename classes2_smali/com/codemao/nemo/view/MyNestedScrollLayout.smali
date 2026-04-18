.class public Lcom/codemao/nemo/view/MyNestedScrollLayout;
.super Landroidx/core/widget/NestedScrollView;
.source "MyNestedScrollLayout.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 37
    iget v0, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 39
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 47
    iget v1, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->lastY:F

    sub-float/2addr v0, v1

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    goto :goto_32

    .line 57
    :cond_17
    iget v1, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    if-nez v1, :cond_32

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    .line 59
    iput v2, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    goto :goto_32

    :cond_28
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->state:I

    goto :goto_32

    .line 50
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 64
    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->lastX:F

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/MyNestedScrollLayout;->lastY:F

    .line 66
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
