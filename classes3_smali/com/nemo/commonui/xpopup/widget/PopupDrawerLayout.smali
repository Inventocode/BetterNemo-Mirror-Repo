.class public Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;
.super Landroid/widget/FrameLayout;
.source "PopupDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;
    }
.end annotation


# instance fields
.field argbEvaluator:Landroid/animation/ArgbEvaluator;

.field bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

.field callback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field canChildScrollLeft:Z

.field defaultColor:I

.field dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public enableShadow:Z

.field fraction:F

.field hasLayout:Z

.field public isCanClose:Z

.field public isDrawStatusBarShadow:Z

.field isIntercept:Z

.field isToLeft:Z

.field private listener:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

.field mChild:Landroid/view/View;

.field paint:Landroid/graphics/Paint;

.field placeHolder:Landroid/view/View;

.field public position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

.field shadowRect:Landroid/graphics/Rect;

.field status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field ty:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 38
    sget-object p1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    .line 39
    new-instance p1, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-direct {p1}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;-><init>()V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    .line 40
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->defaultColor:I

    .line 42
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isDrawStatusBarShadow:Z

    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->enableShadow:Z

    .line 77
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->hasLayout:Z

    .line 93
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isIntercept:Z

    .line 157
    new-instance p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$1;-><init>(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)V

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->callback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 300
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isCanClose:Z

    .line 56
    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;I)I
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fixLeft(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->listener:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    return-object p0
.end method

.method private canScroll(Landroid/view/ViewGroup;FF)Z
    .registers 5

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canScroll(Landroid/view/ViewGroup;FFI)Z

    move-result p1

    return p1
.end method

.method private canScroll(Landroid/view/ViewGroup;FFI)Z
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_75

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 123
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v0

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v3, v3, v6

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    invoke-direct {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    invoke-static {p2, p3, v4}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 126
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_72

    .line 127
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, -0x1

    if-eqz p1, :cond_50

    .line 128
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p4, :cond_4b

    .line 130
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_49

    invoke-virtual {v2, v6}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    :cond_49
    const/4 v0, 0x1

    :cond_4a
    return v0

    .line 132
    :cond_4b
    invoke-virtual {v2, p4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    return p1

    .line 133
    :cond_50
    instance-of p1, v2, Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_6b

    .line 134
    check-cast v2, Landroid/widget/HorizontalScrollView;

    if-nez p4, :cond_66

    .line 136
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-virtual {v2, v6}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_65

    :cond_64
    const/4 v0, 0x1

    :cond_65
    return v0

    .line 138
    :cond_66
    invoke-virtual {v2, p4}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    return p1

    .line 140
    :cond_6b
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canScroll(Landroid/view/ViewGroup;FFI)Z

    move-result p1

    return p1

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_75
    return v0
.end method

.method private fixLeft(I)I
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v0, v1, :cond_1a

    .line 245
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    if-ge p1, v0, :cond_16

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    :cond_16
    if-lez p1, :cond_40

    const/4 p1, 0x0

    goto :goto_40

    .line 247
    :cond_1a
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Right:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v0, v1, :cond_40

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_36

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 250
    :cond_36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_40

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    :cond_40
    :goto_40
    return p1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 306
    :cond_a
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isCanClose:Z

    if-nez v0, :cond_f

    return-void

    .line 307
    :cond_f
    new-instance v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$3;-><init>(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 258
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 269
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isDrawStatusBarShadow:Z

    if-eqz v0, :cond_48

    .line 270
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_22

    .line 271
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->paint:Landroid/graphics/Paint;

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->shadowRect:Landroid/graphics/Rect;

    .line 274
    :cond_22
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->defaultColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nemo/commonui/xpopup/XPopup;->statusBarShadowColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->shadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_48
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->ty:F

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 281
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->fraction:F

    .line 284
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->ty:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->x:F

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isToLeft:Z

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->x:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->y:F

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canScroll(Landroid/view/ViewGroup;FFI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canChildScrollLeft:Z

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    :cond_37
    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->x:F

    .line 105
    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->y:F

    .line 107
    :cond_3c
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isIntercept:Z

    .line 108
    iget-boolean v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isToLeft:Z

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canChildScrollLeft:Z

    if-nez v1, :cond_4d

    return v0

    .line 112
    :cond_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p0, v0, v1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->canScroll(Landroid/view/ViewGroup;FF)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 113
    iget-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isIntercept:Z

    return p1

    .line 115
    :cond_5e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 80
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->placeHolder:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 81
    iget-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->hasLayout:Z

    if-nez p1, :cond_45

    .line 82
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne p1, p2, :cond_29

    .line 83
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p2, p4, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_41

    .line 85
    :cond_29
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p3, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/view/View;->layout(IIII)V

    :goto_41
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->hasLayout:Z

    goto :goto_60

    .line 89
    :cond_45
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->mChild:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public open()V
    .registers 2

    .line 291
    new-instance v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$2;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$2;-><init>(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDrawerPosition(Lcom/nemo/commonui/xpopup/enums/PopupPosition;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->position:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    return-void
.end method

.method public setOnCloseListener(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->listener:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;

    return-void
.end method
