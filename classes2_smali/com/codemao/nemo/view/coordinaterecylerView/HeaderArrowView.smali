.class public Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;
.super Landroid/view/View;
.source "HeaderArrowView.java"


# instance fields
.field private arrorBottomLeft:F

.field private arrorBottomRight:F

.field arrowBottom:Landroid/graphics/Path;

.field private centerX:I

.field protected mOffset:I

.field private pathPaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42c80000  # 100.0f

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000  # 14.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {p2, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawBottomArrow(Landroid/graphics/Canvas;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40600000  # 3.5f

    mul-float v0, v0, v1

    .line 108
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->mOffset:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 109
    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomLeft:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomRight:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 6

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v1

    .line 119
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "继续下滑查看上一个主题"

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopArrow(Landroid/graphics/Canvas;)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 93
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->mOffset:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 95
    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomLeft:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomRight:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrowBottom:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->drawTopArrow(Landroid/graphics/Canvas;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->drawBottomArrow(Landroid/graphics/Canvas;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41000000  # 8.0f

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomLeft:F

    .line 61
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->centerX:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->arrorBottomRight:F

    return-void
.end method

.method public setOffset(I)V
    .registers 4

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_9

    const/16 p1, 0x64

    :cond_9
    int-to-float v0, p1

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 77
    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->mOffset:I

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
