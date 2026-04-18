.class public Lcom/codemao/toolssdk/view/progress/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# instance fields
.field private mBackPaint:Landroid/graphics/Paint;

.field private mColorArray:[I

.field private mProgPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRectF:Landroid/graphics/RectF;

.field private maxProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/progress/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x64

    .line 38
    iput p3, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->maxProgress:I

    .line 51
    sget-object p3, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    .line 55
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    sget v0, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_backWidth:I

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    sget v0, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_backColor:I

    const v1, -0x333334

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 68
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    sget v0, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_progWidth:I

    const/high16 v1, 0x41200000  # 10.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    sget v0, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_progColor:I

    const v1, -0xffff01

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget p2, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_progStartColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 73
    sget v1, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_progFirstColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9a

    if-eq v1, v0, :cond_9a

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p2, v0, v2

    aput v1, v0, p3

    .line 74
    iput-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    goto :goto_9d

    :cond_9a
    const/4 p2, 0x0

    .line 75
    iput-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    .line 78
    :goto_9d
    sget p2, Lcom/codemao/toolssdk/R$styleable;->toolsdk_CircleProgressView_toolsdk_cpv_progress:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgress:I

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000  # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    iget-object v7, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->maxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000  # 360.0f

    mul-float v9, v0, v1

    iget-object v11, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x43870000  # 270.0f

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_23

    move v0, p2

    goto :goto_24

    :cond_23
    move v0, p1

    :goto_24
    int-to-float v0, v0

    .line 87
    iget-object v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    iget-object v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    goto :goto_3a

    :cond_38
    iget-object v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    :goto_3a
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 90
    new-instance p2, Landroid/graphics/RectF;

    int-to-float v2, v1

    int-to-float v3, p1

    add-int/2addr v1, v0

    int-to-float v1, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-direct {p2, v2, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mRectF:Landroid/graphics/RectF;

    .line 93
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    if-eqz p1, :cond_7d

    array-length p1, p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_7d

    .line 94
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_7d
    return-void
.end method

.method public setBackColor(I)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackWidth(I)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mBackPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxProgress(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->maxProgress:I

    return-void
.end method

.method public setProgColor(I)V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgColor([I)V
    .registers 11

    if-eqz p1, :cond_3c

    .line 235
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    goto :goto_3c

    .line 236
    :cond_7
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    const/4 v0, 0x0

    .line 237
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_21

    .line 238
    iget-object v1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 239
    :cond_21
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mColorArray:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setProgWidth(I)V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/codemao/toolssdk/view/progress/CircleProgressView;->mProgress:I

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
