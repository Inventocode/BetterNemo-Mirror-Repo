.class public Lcom/nemo/commonui/xpopup/widget/LoadingView;
.super Landroid/view/View;
.source "LoadingView.java"


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field avgAngle:F

.field centerX:F

.field centerY:F

.field private endColor:I

.field private increaseTask:Ljava/lang/Runnable;

.field lineCount:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private radiusOffset:F

.field private startColor:I

.field private stokeWidth:F

.field time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/nemo/commonui/xpopup/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40000000  # 2.0f

    .line 22
    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    .line 23
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const-string p2, "#CCCCCC"

    .line 24
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->startColor:I

    const-string p2, "#333333"

    .line 25
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->endColor:I

    const/16 p2, 0xc

    .line 26
    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->lineCount:I

    int-to-float p2, p2

    const/high16 p3, 0x43b40000  # 360.0f

    div-float/2addr p3, p2

    .line 27
    iput p3, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->avgAngle:F

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->time:I

    .line 82
    new-instance p2, Lcom/nemo/commonui/xpopup/widget/LoadingView$1;

    invoke-direct {p2, p0}, Lcom/nemo/commonui/xpopup/widget/LoadingView$1;-><init>(Lcom/nemo/commonui/xpopup/widget/LoadingView;)V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->increaseTask:Ljava/lang/Runnable;

    .line 41
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    .line 42
    iget p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    invoke-static {p1, p2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    .line 43
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .line 92
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 93
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->increaseTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 65
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->lineCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6e

    .line 66
    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->time:I

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->lineCount:I

    rem-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float v1, v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 68
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->startColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->endColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerX:F

    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->radiusOffset:F

    add-float/2addr v1, v2

    .line 72
    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->radius:F

    const/high16 v3, 0x40400000  # 3.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 73
    iget v7, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerY:F

    iget-object v8, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v7

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerY:F

    iget v4, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerY:F

    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->avgAngle:F

    iget v2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerX:F

    iget v3, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerY:F

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 79
    :cond_6e
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->increaseTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->radius:F

    const/high16 p2, 0x40200000  # 2.5f

    div-float/2addr p1, p2

    .line 50
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->radiusOffset:F

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerX:F

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->centerY:F

    .line 55
    iget p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000  # 1.0f

    mul-float p2, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41f00000  # 30.0f

    invoke-static {p3, p4}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float p1, p1, p2

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->stokeWidth:F

    .line 56
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/widget/LoadingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
