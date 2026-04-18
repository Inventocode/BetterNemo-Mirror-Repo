.class public Lcom/ljwx/baseview/image/RoundImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RoundImageView.java"


# instance fields
.field private mBorderColor:I

.field private mBorderWith:F

.field private mRadiuAll:F

.field private mRadiuBottomLeft:F

.field private mRadiuBottomRight:F

.field private mRadiuTopLeft:F

.field private mRadiuTopRight:F

.field private mRids:[F

.field private mViewHeight:F

.field private mViewWidth:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/baseview/image/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 26
    fill-array-data p3, :array_62

    iput-object p3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRids:[F

    .line 42
    sget-object p3, Lcom/ljwx/baseview/R$styleable;->RoundImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_radiu_all:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    .line 44
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_radiu_top_left:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuTopLeft:F

    .line 45
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_radiu_top_right:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuTopRight:F

    .line 46
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_radiu_bottom_left:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuBottomLeft:F

    .line 47
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_radiu_bottom_right:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuBottomRight:F

    .line 48
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_border_color:I

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderColor:I

    .line 49
    sget p2, Lcom/ljwx/baseview/R$styleable;->RoundImageView_riv_border_width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderWith:F

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0}, Lcom/ljwx/baseview/image/RoundImageView;->init()V

    return-void

    nop

    :array_62
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private clipRadius(Landroid/graphics/Canvas;)V
    .registers 14

    .line 99
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    return-void

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 103
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    .line 105
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    div-float/2addr v4, v2

    div-float/2addr v1, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_37

    .line 108
    :cond_28
    iget-object v5, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewWidth:F

    iget v9, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    iget-object v10, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRids:[F

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 110
    :goto_37
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .registers 14

    .line 117
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderWith:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3a

    .line 118
    invoke-direct {p0}, Lcom/ljwx/baseview/image/RoundImageView;->initBorderPaint()V

    .line 119
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_24

    .line 120
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    div-float/2addr v4, v2

    div-float/2addr v1, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_33

    .line 122
    :cond_24
    iget-object v5, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewWidth:F

    iget v9, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    iget-object v10, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRids:[F

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 124
    :goto_33
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3a
    return-void
.end method

.method private initBorderPaint()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 134
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderWith:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 6

    .line 55
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 56
    :goto_9
    iget-object v3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRids:[F

    array-length v4, v3

    if-ge v0, v4, :cond_15

    .line 57
    iget v4, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 60
    :cond_15
    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuAll:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3c

    .line 61
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRids:[F

    iget v3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuTopLeft:F

    aput v3, v0, v1

    const/4 v1, 0x1

    .line 62
    aput v3, v0, v1

    const/4 v1, 0x2

    .line 63
    iget v3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuTopRight:F

    aput v3, v0, v1

    const/4 v1, 0x3

    .line 64
    aput v3, v0, v1

    const/4 v1, 0x4

    .line 65
    iget v3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuBottomRight:F

    aput v3, v0, v1

    const/4 v1, 0x5

    .line 66
    aput v3, v0, v1

    const/4 v1, 0x6

    .line 67
    iget v3, p0, Lcom/ljwx/baseview/image/RoundImageView;->mRadiuBottomLeft:F

    aput v3, v0, v1

    const/4 v1, 0x7

    .line 68
    aput v3, v0, v1

    .line 70
    :cond_3c
    iget-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_4d

    iget v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->mBorderWith:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4d

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ljwx/baseview/image/RoundImageView;->paint:Landroid/graphics/Paint;

    :cond_4d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/ljwx/baseview/image/RoundImageView;->clipRadius(Landroid/graphics/Canvas;)V

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/ljwx/baseview/image/RoundImageView;->drawBorders(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 83
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewWidth:F

    .line 85
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ljwx/baseview/image/RoundImageView;->mViewHeight:F

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method
