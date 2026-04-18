.class public Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CreativeRoundStrokeImageView2.java"


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

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-object v0, Lcom/codemao/creativecenter/R$styleable;->CreativeRoundStrokeImageView2:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_32

    .line 41
    sget v0, Lcom/codemao/creativecenter/R$styleable;->CreativeRoundStrokeImageView2_creative_image_radius:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    .line 42
    sget v0, Lcom/codemao/creativecenter/R$styleable;->CreativeRoundStrokeImageView2_creative_image_circle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mIsCircle:Z

    .line 43
    sget v0, Lcom/codemao/creativecenter/R$styleable;->CreativeRoundStrokeImageView2_creative_stroke_color:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeColor:I

    .line 44
    sget p2, Lcom/codemao/creativecenter/R$styleable;->CreativeRoundStrokeImageView2_creative_stroke_width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeWitdh:F

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3c

    :cond_32
    const/high16 p1, 0x41a00000  # 20.0f

    .line 47
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    .line 48
    iput-boolean v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mIsCircle:Z

    .line 49
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeColor:I

    .line 50
    iput p3, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeWitdh:F

    .line 52
    :goto_3c
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->initPaint()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    if-nez v0, :cond_2f

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    .line 119
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

    .line 122
    :cond_2f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_3d

    .line 123
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5f

    .line 126
    :cond_3d
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    if-nez v0, :cond_4f

    .line 127
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    .line 128
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 131
    :cond_4f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->circlePath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5f
    return-void
.end method

.method private drawRound(Landroid/graphics/Canvas;)V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    if-nez v0, :cond_14

    .line 138
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    .line 139
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 142
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_22

    .line 143
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_44

    .line 145
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    if-nez v0, :cond_34

    .line 146
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    .line 147
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 150
    :cond_34
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->roundPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 151
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->srcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_44
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_25

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_31

    .line 77
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    :goto_31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeWitdh:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 93
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v2, -0x40000000  # -2.0f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    .line 96
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->rectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mIsCircle:Z

    if-eqz v0, :cond_2b

    .line 100
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->drawCircle(Landroid/graphics/Canvas;)V

    goto :goto_34

    .line 101
    :cond_2b
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    .line 102
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->drawRound(Landroid/graphics/Canvas;)V

    .line 104
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeWitdh:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_89

    .line 106
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mIsCircle:Z

    if-eqz v0, :cond_71

    .line 107
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
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

    iget v3, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mStrokeWitdh:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_89

    .line 110
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->strokeRectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->stokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_89
    :goto_89
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
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->mRadius:F

    .line 158
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
