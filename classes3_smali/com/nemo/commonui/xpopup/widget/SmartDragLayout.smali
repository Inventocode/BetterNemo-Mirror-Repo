.class public Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;
.super Landroid/widget/FrameLayout;
.source "SmartDragLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartDragLayout"


# instance fields
.field bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

.field private child:Landroid/view/View;

.field private childRect:Landroid/graphics/Rect;

.field dismissOnTouchOutside:Z

.field enableDrag:Z

.field hasShadowBg:Z

.field isScrollUp:Z

.field isUserClose:Z

.field lastHeight:I

.field private listener:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;

.field maxY:I

.field minY:I

.field scroller:Landroid/widget/OverScroller;

.field status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

.field touchX:F

.field touchY:F

.field tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-direct {p2}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;-><init>()V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    .line 32
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    .line 33
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 35
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 90
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->childRect:Landroid/graphics/Rect;

    .line 47
    iget-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p2, :cond_2a

    .line 48
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    :cond_2a
    return-void
.end method

.method private finishScroll()V
    .registers 9

    .line 165
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_3d

    .line 166
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    goto :goto_15

    :cond_e
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    :goto_15
    div-int/lit8 v0, v0, 0x3

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_20

    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    goto :goto_22

    :cond_20
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    :goto_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v6, v0, v1

    .line 168
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 169
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 225
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Closing:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 226
    new-instance v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$2;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$2;-><init>(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 199
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    .line 201
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1d
    return-void
.end method

.method public dismissOnTouchOutside(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isUserClose:Z

    .line 85
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableDrag(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    return-void
.end method

.method public getNestedScrollAxes()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hasShadowBg(Z)V
    .registers 2

    .line 305
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    .line 209
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isUserClose:Z

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 65
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    .line 67
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 68
    iget-boolean p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p2, :cond_4d

    .line 70
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 71
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-ne p1, p2, :cond_68

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->lastHeight:I

    iget p4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    goto :goto_68

    .line 77
    :cond_4d
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 79
    :cond_68
    :goto_68
    iget p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->lastHeight:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 279
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    const/4 p4, 0x0

    if-le p1, p2, :cond_13

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

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

    .line 281
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

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

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    add-int/2addr p1, p3

    .line 270
    iget p2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    if-ge p1, p2, :cond_e

    const/4 p2, 0x1

    .line 271
    aput p3, p4, p2

    .line 273
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    :cond_15
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 252
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    const/4 p1, 0x2

    if-ne p3, p1, :cond_9

    .line 246
    iget-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

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

    .line 257
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->finishScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 94
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchX:F

    .line 96
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchY:F

    return v1

    .line 99
    :cond_f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->childRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->childRect:Landroid/graphics/Rect;

    invoke-static {v0, v2, v3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    const v2, 0x44bb8000  # 1500.0f

    if-nez v0, :cond_69

    .line 101
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    if-eqz v0, :cond_31

    .line 102
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_68

    .line 104
    :cond_31
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_5b

    .line 105
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 106
    :cond_3c
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    .line 107
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4e

    .line 109
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_51

    .line 111
    :cond_4e
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->finishScroll()V

    .line 114
    :goto_51
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 115
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 118
    :cond_5b
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->listener:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;->onTouchOut(FF)V

    :goto_68
    return v1

    .line 123
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10e

    if-eq v0, v1, :cond_a6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a6

    goto/16 :goto_124

    .line 131
    :cond_7a
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_124

    .line 132
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->scrollTo(II)V

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchY:F

    goto/16 :goto_124

    .line 141
    :cond_a6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->childRect:Landroid/graphics/Rect;

    invoke-static {v0, v3, v4}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_ee

    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside:Z

    if-eqz v0, :cond_ee

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchX:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchY:F

    sub-float/2addr p1, v0

    float-to-double v7, p1

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_ee

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 147
    :cond_ee
    iget-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz p1, :cond_124

    .line 148
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_100

    .line 150
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_103

    .line 152
    :cond_100
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->finishScroll()V

    .line 155
    :goto_103
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 156
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    goto :goto_124

    .line 125
    :cond_10e
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_118

    .line 126
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    .line 127
    :cond_118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchX:F

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->touchY:F

    :cond_124
    :goto_124
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 58
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->child:Landroid/view/View;

    return-void
.end method

.method public open()V
    .registers 2

    .line 214
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Opening:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 215
    new-instance v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$1;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$1;-><init>(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollTo(II)V
    .registers 8

    .line 177
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->maxY:I

    if-le p2, v0, :cond_5

    move p2, v0

    .line 178
    :cond_5
    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    if-ge p2, v1, :cond_a

    move p2, v1

    :cond_a
    sub-int v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float v2, v2, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    if-le p2, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    .line 181
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->hasShadowBg:Z

    if-eqz v0, :cond_2c

    .line 182
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->bgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->calculateBgColor(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 183
    :cond_2c
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->listener:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;

    if-eqz v0, :cond_5b

    .line 184
    iget-boolean v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isUserClose:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v4, :cond_45

    .line 185
    iput-object v4, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 186
    invoke-interface {v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;->onClose()V

    goto :goto_54

    :cond_45
    cmpl-float v1, v2, v3

    if-nez v1, :cond_54

    .line 187
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v3, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v3, :cond_54

    .line 188
    iput-object v3, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 189
    invoke-interface {v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;->onOpen()V

    .line 191
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->listener:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;

    iget-boolean v1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->isScrollUp:Z

    invoke-interface {v0, p2, v2, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;->onDrag(IFZ)V

    .line 193
    :cond_5b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method public setOnCloseListener(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->listener:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;

    return-void
.end method

.method public smoothScroll(I)V
    .registers 3

    .line 235
    new-instance v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;

    invoke-direct {v0, p0, p1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$3;-><init>(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
