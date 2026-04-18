.class public Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;
.super Landroid/widget/FrameLayout;
.source "SmartTopDragLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;
    }
.end annotation


# instance fields
.field bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

.field private child:Landroid/view/View;

.field enableDrag:Z

.field hasShadowBg:Z

.field isScrollUp:Z

.field isUserClose:Z

.field lastHeight:I

.field private listener:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;

.field maxY:I

.field minY:I

.field scroller:Landroid/widget/OverScroller;

.field status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field touchX:F

.field touchY:F

.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-direct {p2}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    .line 33
    iput-boolean p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->hasShadowBg:Z

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isUserClose:Z

    .line 35
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 47
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private finishScroll()V
    .registers 9

    .line 143
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    if-eqz v0, :cond_3d

    .line 144
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isScrollUp:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    iget v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    sub-int/2addr v0, v1

    goto :goto_15

    :cond_e
    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    iget v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    :goto_15
    div-int/lit8 v0, v0, 0x3

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_20

    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    goto :goto_22

    :cond_20
    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    :goto_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v6, v0, v1

    .line 146
    iget-object v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 147
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isUserClose:Z

    .line 202
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Closing:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 203
    new-instance v0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$2;-><init>(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 177
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scrollTo(II)V

    .line 178
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1d
    return-void
.end method

.method public dismissOnTouchOutside(Z)V
    .registers 2

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isUserClose:Z

    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableDrag(Z)V
    .registers 2

    .line 274
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    return-void
.end method

.method public getNestedScrollAxes()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hasShadowBg(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->hasShadowBg:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isScrollUp:Z

    .line 186
    iput-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isUserClose:Z

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 64
    iget-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 67
    iget-boolean p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    if-eqz p2, :cond_45

    .line 70
    iget-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    iget p3, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    neg-int p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget p5, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 71
    iget-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-ne p1, p2, :cond_60

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->lastHeight:I

    iget p4, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scrollTo(II)V

    goto :goto_60

    .line 77
    :cond_45
    iget-object p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    :cond_60
    :goto_60
    iget p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    iput p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->lastHeight:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    const/4 p4, 0x0

    if-le p1, p2, :cond_13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    if-ge p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_20

    const p1, -0x3b448000  # -1500.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_20

    .line 258
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->close()V

    :cond_20
    return p4
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    if-lez p3, :cond_15

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    add-int/2addr p1, p3

    .line 247
    iget p2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    if-ge p1, p2, :cond_e

    const/4 p2, 0x1

    .line 248
    aput p3, p4, p2

    .line 250
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scrollTo(II)V

    :cond_15
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scrollTo(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 229
    iget-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    const/4 p1, 0x2

    if-ne p3, p1, :cond_9

    .line 223
    iget-boolean p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 234
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->finishScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8d

    if-eq v0, v1, :cond_3c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3c

    goto/16 :goto_a3

    .line 104
    :cond_11
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    if-eqz v0, :cond_a3

    .line 105
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 106
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->tracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->scrollTo(II)V

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchY:F

    goto :goto_a3

    .line 115
    :cond_3c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 116
    iget-object v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchY:F

    sub-float/2addr p1, v0

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a3

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_a3

    .line 123
    :cond_89
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->close()V

    goto :goto_a3

    .line 98
    :cond_8d
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag:Z

    if-eqz v0, :cond_97

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->tracker:Landroid/view/VelocityTracker;

    .line 100
    :cond_97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->touchY:F

    :cond_a3
    :goto_a3
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 57
    iput-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->child:Landroid/view/View;

    return-void
.end method

.method public open()V
    .registers 2

    .line 191
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Opening:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 192
    new-instance v0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;-><init>(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollTo(II)V
    .registers 8

    .line 155
    iget v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    neg-int v1, v0

    if-ge p2, v1, :cond_6

    neg-int p2, v0

    .line 156
    :cond_6
    iget v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->minY:I

    if-le p2, v1, :cond_b

    move p2, v1

    :cond_b
    sub-int v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float v2, v2, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-le p2, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isScrollUp:Z

    .line 159
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->hasShadowBg:Z

    if-eqz v0, :cond_31

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->calculateBgColor(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 161
    :cond_31
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->listener:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;

    if-eqz v0, :cond_59

    .line 162
    iget-boolean v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->isUserClose:Z

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v4, :cond_4a

    .line 163
    iput-object v4, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 164
    invoke-interface {v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;->onClose()V

    goto :goto_59

    :cond_4a
    cmpl-float v1, v2, v3

    if-nez v1, :cond_59

    .line 165
    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v2, :cond_59

    .line 166
    iput-object v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 167
    invoke-interface {v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;->onOpen()V

    .line 170
    :cond_59
    :goto_59
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method public setOnCloseListener(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->listener:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;

    return-void
.end method

.method public smoothScroll(I)V
    .registers 3

    .line 212
    new-instance v0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$3;-><init>(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
