.class public Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;
.super Landroid/widget/FrameLayout;
.source "PhotoViewContainer.java"


# instance fields
.field private HideTopThreshold:I

.field cb:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private dragChangeListener:Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

.field private dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public isReleasing:Z

.field isVertical:Z

.field private maxOffset:I

.field private touchX:F

.field private touchY:F

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 27
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    .line 60
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isVertical:Z

    .line 115
    new-instance p1, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer$1;-><init>(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 39
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I
    .registers 1

    .line 23
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->maxOffset:I

    return p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragChangeListener:Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)I
    .registers 1

    .line 23
    iget p0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    return p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;)Landroidx/customview/widget/ViewDragHelper;
    .registers 1

    .line 23
    iget-object p0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method private getCurrentPhotoView()Lcn/codemao/android/sketch/xpopup/photoview/PhotoView;
    .registers 3

    .line 94
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoView;

    return-object v0
.end method

.method private init()V
    .registers 2

    .line 43
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->HideTopThreshold:I

    .line 44
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private isTopOrBottomEnd()Z
    .registers 3

    .line 89
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->getCurrentPhotoView()Lcn/codemao/android/sketch/xpopup/photoview/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoView;->attacher:Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;

    iget-boolean v1, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isTopEnd:Z

    if-nez v1, :cond_10

    iget-boolean v0, v0, Lcn/codemao/android/sketch/xpopup/photoview/PhotoViewAttacher;->isBottomEnd:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 170
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 171
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public dip2px(F)I
    .registers 3

    .line 176
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

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_48

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_40

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_40

    goto :goto_54

    .line 71
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchX:F

    sub-float/2addr v0, v3

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchY:F

    sub-float/2addr v3, v4

    .line 73
    iget-object v4, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_31

    const/4 v1, 0x1

    :cond_31
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isVertical:Z

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchY:F

    goto :goto_54

    :cond_40
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 81
    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchY:F

    .line 82
    iput-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isVertical:Z

    goto :goto_54

    .line 67
    :cond_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchX:F

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->touchY:F

    .line 85
    :goto_54
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 99
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 100
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

    .line 101
    :cond_16
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isTopOrBottomEnd()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isVertical:Z

    if-eqz p1, :cond_21

    return v3

    :cond_21
    if-eqz v0, :cond_28

    .line 102
    iget-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->isVertical:Z

    if-eqz p1, :cond_28

    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->maxOffset:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_e

    :catch_e
    return v1
.end method

.method public setOnDragChangeListener(Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/PhotoViewContainer;->dragChangeListener:Lcn/codemao/android/sketch/xpopup/interfaces/OnDragChangeListener;

    return-void
.end method
