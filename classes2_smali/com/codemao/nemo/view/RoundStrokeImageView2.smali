.class public Lcom/codemao/nemo/view/RoundStrokeImageView2;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundStrokeImageView2.java"


# instance fields
.field private circlePath:Landroid/graphics/Path;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mIsCircle:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokeWitdh:F

.field private rectF:Landroid/graphics/RectF;

.field private roundPath:Landroid/graphics/Path;

.field private srcPath:Landroid/graphics/Path;

.field private stokePaint:Landroid/graphics/Paint;

.field private strokeRectf:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/codemao/nemo/R$styleable;->RoundStrokeImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    .line 39
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mIsCircle:Z

    const/4 v0, 0x5

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeColor:I

    const/4 p2, 0x6

    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeWitdh:F

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_37

    :cond_2d
    const/high16 p1, 0x41a00000  # 20.0f

    .line 44
    iput p1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    .line 45
    iput-boolean v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mIsCircle:Z

    .line 46
    iput p2, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeColor:I

    .line 47
    iput p3, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeWitdh:F

    .line 49
    :goto_37
    invoke-direct {p0}, Lcom/codemao/nemo/view/RoundStrokeImageView2;->initPaint()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    if-nez v0, :cond_2f

    .line 116
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    .line 117
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 120
    :cond_2f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_3d

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5f

    .line 124
    :cond_3d
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    if-nez v0, :cond_4f

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    .line 126
    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 129
    :cond_4f
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5f
    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;)V
    .registers 6

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    .line 138
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_29

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_52

    .line 144
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    if-nez v0, :cond_34

    .line 145
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    .line 147
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_52
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_25

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_31

    .line 74
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    :goto_31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeWitdh:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    .line 93
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    iget-boolean v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mIsCircle:Z

    if-eqz v0, :cond_2e

    .line 98
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundStrokeImageView2;->drawCircle(Landroid/graphics/Canvas;)V

    goto :goto_37

    .line 99
    :cond_2e
    iget v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_37

    .line 100
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundStrokeImageView2;->drawRound(Landroid/graphics/Canvas;)V

    .line 102
    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    iget v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeWitdh:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8d

    .line 104
    iget-boolean v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mIsCircle:Z

    if-eqz v0, :cond_75

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mStrokeWitdh:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8d

    .line 108
    :cond_75
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    iget-object v2, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public setColorMatix(Landroid/graphics/ColorMatrix;)V
    .registers 3

    .line 163
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setmRadius(F)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/codemao/nemo/view/RoundStrokeImageView2;->mRadius:F

    .line 158
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
