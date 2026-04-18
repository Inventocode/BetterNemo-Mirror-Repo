.class public Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;
.super Landroid/widget/LinearLayout;
.source "CreativeSmartDragLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;
    }
.end annotation


# instance fields
.field private child:Landroid/view/View;

.field dismissOnTouchOutside:Z

.field duration:I

.field enableDrag:Z

.field isScrollUp:Z

.field isThreeDrag:Z

.field isUserClose:Z

.field lastHeight:I

.field private listener:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;

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

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    .line 28
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->dismissOnTouchOutside:Z

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isUserClose:Z

    .line 30
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isThreeDrag:Z

    .line 31
    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    const/16 p2, 0x190

    .line 32
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->duration:I

    .line 45
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private finishScroll()V
    .registers 8

    .line 141
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_88

    .line 142
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isScrollUp:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    goto :goto_15

    :cond_e
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    :goto_15
    div-int/lit8 v0, v0, 0x3

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_20

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    goto :goto_22

    :cond_20
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    :goto_22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 144
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isThreeDrag:Z

    if-eqz v1, :cond_74

    .line 145
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    div-int/lit8 v0, v0, 0x3

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x40200000  # 2.5f

    mul-float v3, v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_45

    .line 147
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    :goto_43
    sub-int/2addr v0, v1

    goto :goto_74

    .line 148
    :cond_45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_62

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000  # 1.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_62

    mul-int/lit8 v0, v0, 0x2

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    goto :goto_43

    .line 150
    :cond_62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_6d

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    goto :goto_43

    .line 153
    :cond_6d
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    goto :goto_43

    :cond_74
    :goto_74
    move v5, v0

    .line 156
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    iget v6, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->duration:I

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 157
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_88
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isUserClose:Z

    .line 212
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;-><init>(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 184
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 185
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 186
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    .line 187
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1d
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isUserClose:Z

    .line 81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getNestedScrollAxes()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public isInRect(FFLandroid/graphics/Rect;)Z
    .registers 5

    .line 315
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1e

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1e

    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1e

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 193
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isScrollUp:Z

    .line 195
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isUserClose:Z

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 62
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 65
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p5

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    add-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 66
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-ne p1, p2, :cond_5e

    .line 67
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isThreeDrag:Z

    if-eqz p1, :cond_4d

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->lastHeight:I

    iget p4, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    goto :goto_5e

    .line 72
    :cond_4d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    iget p3, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->lastHeight:I

    iget p4, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    .line 75
    :cond_5e
    :goto_5e
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->lastHeight:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    const/4 p4, 0x0

    if-le p1, p2, :cond_13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    iget p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    if-ge p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_24

    const p1, -0x3b448000  # -1500.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_24

    .line 268
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isThreeDrag:Z

    if-nez p1, :cond_24

    .line 269
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->close()V

    :cond_24
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

    .line 257
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    add-int/2addr p1, p3

    .line 258
    iget p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    if-ge p1, p2, :cond_e

    const/4 p2, 0x1

    .line 259
    aput p3, p4, p2

    .line 261
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    :cond_15
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .line 240
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    const/4 p1, 0x2

    if-ne p3, p1, :cond_9

    .line 234
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

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

    .line 245
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->finishScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 88
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-ne v0, v2, :cond_19

    :cond_13
    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchX:F

    .line 90
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchY:F

    return v1

    .line 93
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_c9

    if-eq v0, v1, :cond_57

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    const/4 v2, 0x3

    if-eq v0, v2, :cond_57

    goto/16 :goto_e6

    .line 103
    :cond_29
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e6

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scrollTo(II)V

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchY:F

    goto/16 :goto_e6

    .line 114
    :cond_57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_a7

    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->dismissOnTouchOutside:Z

    if-eqz v0, :cond_a7

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchY:F

    sub-float/2addr p1, v0

    float-to-double v6, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a7

    .line 119
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 124
    :cond_a7
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    if-eqz p1, :cond_e6

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e6

    .line 125
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const v0, 0x44bb8000  # 1500.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c2

    .line 126
    iget-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isThreeDrag:Z

    if-nez p1, :cond_c2

    .line 127
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->close()V

    goto :goto_c5

    .line 129
    :cond_c2
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->finishScroll()V

    :goto_c5
    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    goto :goto_e6

    .line 95
    :cond_c9
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->enableDrag:Z

    if-eqz v0, :cond_da

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d4

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 97
    :cond_d4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->tracker:Landroid/view/VelocityTracker;

    .line 99
    :cond_da
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchX:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->touchY:F

    :cond_e6
    :goto_e6
    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->child:Landroid/view/View;

    return-void
.end method

.method public scrollTo(II)V
    .registers 8

    .line 165
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->maxY:I

    if-le p2, v0, :cond_5

    move p2, v0

    .line 166
    :cond_5
    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

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

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    if-le p2, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isScrollUp:Z

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->listener:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;

    if-eqz v0, :cond_4e

    .line 170
    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isUserClose:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Close:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v4, :cond_38

    .line 171
    iput-object v4, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 172
    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;->onClose()V

    goto :goto_47

    :cond_38
    cmpl-float v1, v2, v3

    if-nez v1, :cond_47

    .line 173
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    sget-object v3, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Open:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    if-eq v1, v3, :cond_47

    .line 174
    iput-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    .line 175
    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;->onOpen()V

    .line 177
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->listener:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->isScrollUp:Z

    invoke-interface {v0, p2, v2, v1}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;->onDrag(IFZ)V

    .line 179
    :cond_4e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 293
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->duration:I

    return-void
.end method

.method public setOnCloseListener(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->listener:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;

    return-void
.end method

.method public smoothScroll(IZ)V
    .registers 4

    .line 223
    new-instance v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;-><init>(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;IZ)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
