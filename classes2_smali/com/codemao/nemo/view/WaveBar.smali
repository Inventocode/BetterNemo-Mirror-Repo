.class public Lcom/codemao/nemo/view/WaveBar;
.super Landroid/view/View;
.source "WaveBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/WaveBar$Mode;
    }
.end annotation


# instance fields
.field private blockColor:I

.field private blockCount:I

.field private blockHeight:I

.field private blockPaint:Landroid/graphics/Paint;

.field private blockSpace:F

.field private blockWidth:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mHeightDrop:F

.field private mHeightRatio:F

.field private progress:I

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private radiusX:F

.field private radiusY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/WaveBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x10

    .line 27
    iput p3, p0, Lcom/codemao/nemo/view/WaveBar;->blockCount:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->progress:I

    .line 29
    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockWidth:I

    .line 30
    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockHeight:I

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/codemao/nemo/view/WaveBar;->blockSpace:F

    .line 36
    iput v1, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    .line 37
    iput v1, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    .line 50
    sget-object v1, Lcom/codemao/nemo/R$styleable;->WaveBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->blockCount:I

    const/4 p2, 0x2

    const/high16 p3, 0x40000000  # 2.0f

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->blockSpace:F

    const/4 p2, 0x5

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    const/4 p2, 0x6

    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    const-string p2, "#C4E4FF"

    .line 55
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->blockColor:I

    const-string p2, "#FFCB2F"

    .line 56
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/WaveBar;->progressColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-direct {p0}, Lcom/codemao/nemo/view/WaveBar;->initPaint()V

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/WaveBar;F)F
    .registers 2

    .line 20
    iput p1, p0, Lcom/codemao/nemo/view/WaveBar;->mHeightRatio:F

    return p1
.end method

.method private computeHeightDrop(I)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 181
    iput p1, p0, Lcom/codemao/nemo/view/WaveBar;->mHeightDrop:F

    goto :goto_e

    :cond_6
    const/high16 v0, 0x3f800000  # 1.0f

    mul-int p1, p1, p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 184
    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->mHeightDrop:F

    :goto_e
    return-void
.end method

.method private convertBlockProgress(I)V
    .registers 6

    int-to-double v0, p1

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL  # 0.8

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/WaveBar;->progress:I

    .line 172
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/WaveBar;->computeHeightDrop(I)V

    return-void
.end method

.method private convertRoleProgress(I)V
    .registers 6

    const/4 v0, 0x4

    if-le p1, v0, :cond_d

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    int-to-double v2, p1

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-int p1, v2

    :cond_d
    iput p1, p0, Lcom/codemao/nemo/view/WaveBar;->progress:I

    .line 163
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/WaveBar;->computeHeightDrop(I)V

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .registers 8

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockHeight:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/WaveBar;->blockCount:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->blockSpace:F

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockWidth:I

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 98
    :goto_20
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->blockCount:I

    if-ge v1, v2, :cond_91

    int-to-float v2, v1

    .line 100
    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->blockWidth:I

    int-to-float v4, v3

    iget v5, p0, Lcom/codemao/nemo/view/WaveBar;->blockSpace:F

    add-float/2addr v4, v5

    mul-float v4, v4, v2

    iput v4, v0, Landroid/graphics/RectF;->left:F

    int-to-float v4, v3

    add-float/2addr v4, v5

    mul-float v2, v2, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 101
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 102
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->progress:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_7e

    .line 104
    iget v4, p0, Lcom/codemao/nemo/view/WaveBar;->mHeightRatio:F

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget v5, p0, Lcom/codemao/nemo/view/WaveBar;->mHeightDrop:F

    mul-float v2, v2, v5

    add-float/2addr v4, v2

    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->blockHeight:I

    int-to-float v5, v2

    mul-float v4, v4, v5

    int-to-float v5, v2

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_5e

    .line 106
    iput v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v2

    .line 107
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 108
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    iget-object v4, p0, Lcom/codemao/nemo/view/WaveBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    :cond_5e
    int-to-float v2, v2

    sub-float/2addr v2, v4

    .line 113
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 114
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 115
    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    iget v4, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    iget-object v5, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 119
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->blockHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 120
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    iget-object v4, p0, Lcom/codemao/nemo/view/WaveBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 124
    :cond_7e
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 125
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->blockHeight:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 126
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->radiusX:F

    iget v3, p0, Lcom/codemao/nemo/view/WaveBar;->radiusY:F

    iget-object v4, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_91
    return-void
.end method

.method private initPaint()V
    .registers 4

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    .line 64
    iget v1, p0, Lcom/codemao/nemo/view/WaveBar;->blockColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->blockPaint:Landroid/graphics/Paint;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->progressPaint:Landroid/graphics/Paint;

    .line 71
    iget v2, p0, Lcom/codemao/nemo/view/WaveBar;->progressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/view/WaveBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public drawAnim(JILcom/codemao/nemo/view/WaveBar$Mode;)V
    .registers 7

    .line 132
    sget-object v0, Lcom/codemao/nemo/view/WaveBar$2;->$SwitchMap$com$codemao$nemo$view$WaveBar$Mode:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p4, v0, :cond_1a

    if-ne p4, v1, :cond_12

    .line 137
    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/WaveBar;->convertBlockProgress(I)V

    goto :goto_1d

    .line 141
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The specified mode could not be found！"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1a
    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/WaveBar;->convertRoleProgress(I)V

    .line 143
    :goto_1d
    iget-object p3, p0, Lcom/codemao/nemo/view/WaveBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_34

    new-array p3, v1, [F

    .line 144
    fill-array-data p3, :array_40

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/nemo/view/WaveBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 145
    new-instance p4, Lcom/codemao/nemo/view/WaveBar$1;

    invoke-direct {p4, p0}, Lcom/codemao/nemo/view/WaveBar$1;-><init>(Lcom/codemao/nemo/view/WaveBar;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    :cond_34
    iget-object p3, p0, Lcom/codemao/nemo/view/WaveBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/view/WaveBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/WaveBar;->drawRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 91
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 86
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
