.class public Lcom/lxj/xpopup/widget/PhotoViewContainer;
.super Landroid/widget/FrameLayout;
.source "PhotoViewContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewContainer"


# instance fields
.field private HideTopThreshold:I

.field cb:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private dragChangeListener:Lcom/lxj/xpopup/interfaces/OnDragChangeListener;

.field private dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public isReleasing:Z

.field isVertical:Z

.field private maxOffset:I

.field private touchX:F

.field private touchY:F

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 26
    iput p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 59
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isVertical:Z

    .line 123
    new-instance p1, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;

    invoke-direct {p1, p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer$1;-><init>(Lcom/lxj/xpopup/widget/PhotoViewContainer;)V

    iput-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 38
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->maxOffset:I

    return p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Lcom/lxj/xpopup/interfaces/OnDragChangeListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragChangeListener:Lcom/lxj/xpopup/interfaces/OnDragChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lxj/xpopup/widget/PhotoViewContainer;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    return p0
.end method

.method static synthetic access$300(Lcom/lxj/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method private getCurrentImageView()Landroid/view/View;
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 2

    .line 42
    iget v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    .line 43
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private isTopOrBottomEnd()Z
    .registers 4

    .line 91
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->getCurrentImageView()Landroid/view/View;

    move-result-object v0

    .line 92
    instance-of v1, v0, Lcom/lxj/xpopup/photoview/PhotoView;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 93
    check-cast v0, Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v0, v0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    if-eqz v0, :cond_16

    :cond_15
    const/4 v2, 0x1

    :cond_16
    return v2
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 178
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public dip2px(F)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpValue"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 66
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_54

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    goto :goto_60

    .line 72
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchX:F

    sub-float/2addr v0, v3

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchY:F

    sub-float/2addr v3, v4

    .line 74
    iget-object v4, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    iput-boolean v1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isVertical:Z

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchY:F

    goto :goto_60

    :cond_4c
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 82
    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchY:F

    .line 83
    iput-boolean v2, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isVertical:Z

    goto :goto_60

    .line 68
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->touchY:F
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_60} :catch_60

    .line 87
    :catch_60
    :goto_60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 194
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_16

    return v2

    .line 109
    :cond_16
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isTopOrBottomEnd()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isVertical:Z

    if-eqz p1, :cond_21

    return v3

    :cond_21
    if-eqz v0, :cond_28

    .line 110
    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isVertical:Z

    if-eqz p1, :cond_28

    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->maxOffset:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_e

    :catch_e
    return v1
.end method

.method public setOnDragChangeListener(Lcom/lxj/xpopup/interfaces/OnDragChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PhotoViewContainer;->dragChangeListener:Lcom/lxj/xpopup/interfaces/OnDragChangeListener;

    return-void
.end method
