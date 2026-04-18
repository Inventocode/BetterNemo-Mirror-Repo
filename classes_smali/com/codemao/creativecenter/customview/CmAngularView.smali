.class public Lcom/codemao/creativecenter/customview/CmAngularView;
.super Landroid/view/View;
.source "CmAngularView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;
    }
.end annotation


# instance fields
.field private DP_1:I

.field private DP_2:I

.field private DP_5:I

.field private bigFontSize:I

.field private centerX:I

.field private centerY:I

.field private changeListener:Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;

.field private downOnArc:Z

.field private mDragPressDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintScale:Landroid/graphics/Paint;

.field private mPaintScaleText:Landroid/graphics/Paint;

.field private mRectScaleText:Landroid/graphics/Rect;

.field private maxValidateTouchArcRadius:I

.field private minValidateTouchArcRadius:I

.field private paddingOuterThumb:I

.field private paint:Landroid/graphics/Paint;

.field private pointWidth:F

.field private progress:I

.field private radius:I

.field private ringPaint:Landroid/graphics/Paint;

.field private ringWidth:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private smallFontSize:I

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmAngularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 43
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->downOnArc:Z

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    const-string p1, "#80221D4E"

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundColor:I

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundProgressColor:I

    const-string p1, "#B3FFFFFF"

    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->textColor:I

    const/high16 p1, 0x41f00000  # 30.0f

    .line 89
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->textSize:F

    const/high16 p1, 0x40000000  # 2.0f

    .line 90
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->pointWidth:F

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41d00000  # 26.0f

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringWidth:I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000  # 5.0f

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_5:I

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->sp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->bigFontSize:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->sp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->smallFontSize:I

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_ring_dot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mDragPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 110
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mDragPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 111
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mDragPressDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v0, p2

    neg-int v1, p1

    invoke-virtual {p3, v0, v1, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paddingOuterThumb:I

    .line 115
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringWidth:I

    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    .line 118
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 119
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    iget p3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 126
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    iget p3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->textColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mRectScaleText:Landroid/graphics/Rect;

    .line 135
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringPaint:Landroid/graphics/Paint;

    const-string p3, "#FF753DB1"

    .line 136
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringWidth:I

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    const-string p3, "#000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static calcArcEndPointXY(FFFF)Landroid/graphics/PointF;
    .registers 11

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    mul-double v0, v0, v2

    const-wide v4, 0x4066800000000000L  # 180.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x42b40000  # 90.0f

    cmpg-float v6, p3, v1

    if-gez v6, :cond_27

    float-to-double v0, v0

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float p3, p3, p2

    add-float/2addr p0, p3

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    :goto_22
    double-to-float p3, v0

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    goto :goto_8a

    :cond_27
    cmpl-float v0, p3, v1

    if-nez v0, :cond_2d

    add-float/2addr p1, p2

    goto :goto_8a

    :cond_2d
    const/high16 v1, 0x43340000  # 180.0f

    if-lez v0, :cond_49

    cmpg-float v0, p3, v1

    if-gez v0, :cond_49

    sub-float/2addr v1, p3

    float-to-double v0, v1

    mul-double v0, v0, v2

    div-double/2addr v0, v4

    double-to-float p3, v0

    float-to-double v0, p3

    .line 460
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float p3, p3, p2

    sub-float/2addr p0, p3

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_22

    :cond_49
    cmpl-float v0, p3, v1

    if-nez v0, :cond_4f

    sub-float/2addr p0, p2

    goto :goto_8a

    :cond_4f
    const/high16 v6, 0x43870000  # 270.0f

    if-lez v0, :cond_6b

    cmpg-float v0, p3, v6

    if-gez v0, :cond_6b

    sub-float/2addr p3, v1

    float-to-double v0, p3

    mul-double v0, v0, v2

    div-double/2addr v0, v4

    double-to-float p3, v0

    float-to-double v0, p3

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float p3, p3, p2

    sub-float/2addr p0, p3

    .line 468
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_86

    :cond_6b
    cmpl-float v0, p3, v6

    if-nez v0, :cond_71

    sub-float/2addr p1, p2

    goto :goto_8a

    :cond_71
    const/high16 v0, 0x43b40000  # 360.0f

    sub-float/2addr v0, p3

    float-to-double v0, v0

    mul-double v0, v0, v2

    div-double/2addr v0, v4

    double-to-float p3, v0

    float-to-double v0, p3

    .line 474
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    mul-float p3, p3, p2

    add-float/2addr p0, p3

    .line 475
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    :goto_86
    double-to-float p3, v0

    mul-float p3, p3, p2

    sub-float/2addr p1, p3

    .line 477
    :goto_8a
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public static calcArcEndPointXY(FFFFF)Landroid/graphics/PointF;
    .registers 5

    add-float/2addr p4, p3

    const/high16 p3, 0x43b40000  # 360.0f

    rem-float/2addr p4, p3

    .line 493
    invoke-static {p0, p1, p2, p4}, Lcom/codemao/creativecenter/customview/CmAngularView;->calcArcEndPointXY(FFFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private getTimeText(I)Ljava/lang/String;
    .registers 3

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "°"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTouchRadius(II)D
    .registers 5

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-double v0, p1

    int-to-double p1, p2

    .line 367
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private isTouchArc(II)Z
    .registers 6

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/CmAngularView;->getTouchRadius(II)D

    move-result-wide p1

    .line 357
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->minValidateTouchArcRadius:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_14

    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->maxValidateTouchArcRadius:I

    int-to-double v0, v0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private updateArc(II)V
    .registers 5

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    int-to-double v0, p2

    int-to-double p1, p1

    .line 338
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p1, v0

    const-wide v0, -0x3f99800000000000L  # -180.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 343
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    .line 345
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->changeListener:Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;

    if-eqz p2, :cond_2b

    .line 346
    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;->onProgressChange(I)V

    .line 348
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCoordinatePoint(IF)[F
    .registers 13

    const/4 v0, 0x2

    new-array v0, v0, [F

    float-to-double v1, p2

    .line 252
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const/high16 v3, 0x42b40000  # 90.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v6, p2, v3

    if-gez v6, :cond_2d

    .line 254
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-double v6, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    int-to-double p1, p1

    mul-double v8, v8, p1

    add-double/2addr v6, v8

    double-to-float v3, v6

    aput v3, v0, v5

    .line 255
    iget v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, p1

    add-double/2addr v5, v1

    double-to-float p1, v5

    aput p1, v0, v4

    goto/16 :goto_dc

    :cond_2d
    cmpl-float v1, p2, v3

    if-nez v1, :cond_3e

    .line 257
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-float p2, p2

    aput p2, v0, v5

    .line 258
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    add-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, v0, v4

    goto/16 :goto_dc

    :cond_3e
    const-wide v2, 0x4066800000000000L  # 180.0

    const-wide v6, 0x400921fb54442d18L  # Math.PI

    const/high16 v8, 0x43340000  # 180.0f

    if-lez v1, :cond_71

    cmpg-float v1, p2, v8

    if-gez v1, :cond_71

    sub-float/2addr v8, p2

    float-to-double v8, v8

    mul-double v8, v8, v6

    div-double/2addr v8, v2

    .line 261
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-double v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double p1, p1

    mul-double v6, v6, p1

    sub-double/2addr v1, v6

    double-to-float v1, v1

    aput v1, v0, v5

    .line 262
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-double v1, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    add-double/2addr v1, v5

    double-to-float p1, v1

    aput p1, v0, v4

    goto :goto_dc

    :cond_71
    cmpl-float v1, p2, v8

    if-nez v1, :cond_81

    .line 264
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, v0, v5

    .line 265
    iget p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-float p1, p1

    aput p1, v0, v4

    goto :goto_dc

    :cond_81
    const/high16 v9, 0x43870000  # 270.0f

    if-lez v1, :cond_aa

    cmpg-float v1, p2, v9

    if-gez v1, :cond_aa

    sub-float/2addr p2, v8

    float-to-double v8, p2

    mul-double v8, v8, v6

    div-double/2addr v8, v2

    .line 268
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-double v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double p1, p1

    mul-double v6, v6, p1

    sub-double/2addr v1, v6

    double-to-float v1, v1

    aput v1, v0, v5

    .line 269
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-double v1, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    sub-double/2addr v1, v5

    double-to-float p1, v1

    aput p1, v0, v4

    goto :goto_dc

    :cond_aa
    cmpl-float v1, p2, v9

    if-nez v1, :cond_ba

    .line 271
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-float p2, p2

    aput p2, v0, v5

    .line 272
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, v0, v4

    goto :goto_dc

    :cond_ba
    const/high16 v1, 0x43b40000  # 360.0f

    sub-float/2addr v1, p2

    float-to-double v8, v1

    mul-double v8, v8, v6

    div-double/2addr v8, v2

    .line 275
    iget p2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-double v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double p1, p1

    mul-double v6, v6, p1

    add-double/2addr v1, v6

    double-to-float v1, v1

    aput v1, v0, v5

    .line 276
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-double v1, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, p1

    sub-double/2addr v1, v5

    double-to-float p1, v1

    aput p1, v0, v4

    :goto_dc
    return-object v0
.end method

.method public getCricleColor()I
    .registers 2

    .line 401
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .registers 2

    .line 409
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    monitor-enter p0

    .line 383
    :try_start_1
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .registers 2

    .line 417
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_97

    mul-int/lit8 v5, v1, 0x5a

    add-int/lit16 v5, v5, 0x10e

    int-to-float v5, v5

    .line 157
    iget v6, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0, v6, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->getCoordinatePoint(IF)[F

    move-result-object v6

    .line 158
    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_5:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v7, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->getCoordinatePoint(IF)[F

    move-result-object v7

    .line 160
    aget v9, v6, v0

    aget v10, v6, v4

    aget v11, v7, v0

    aget v12, v7, v4

    iget-object v13, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->smallFontSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v1, :cond_54

    const-string v6, "90°"

    goto :goto_56

    :cond_54
    const-string v6, "-90°"

    .line 168
    :goto_56
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mRectScaleText:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v0, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 170
    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    int-to-float v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_5:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, v3

    add-float/2addr v7, v8

    int-to-float v3, v3

    add-float/2addr v7, v3

    float-to-int v3, v7

    invoke-virtual {p0, v3, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->getCoordinatePoint(IF)[F

    move-result-object v3

    if-eqz v1, :cond_7d

    if-ne v1, v2, :cond_93

    :cond_7d
    if-nez v1, :cond_82

    .line 173
    aget v2, v3, v4

    goto :goto_8c

    :cond_82
    aget v2, v3, v4

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mRectScaleText:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 174
    :goto_8c
    aget v3, v3, v0

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 180
    :cond_97
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    iget v5, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    :goto_a0
    const/16 v5, 0x18

    if-ge v1, v5, :cond_e6

    .line 182
    rem-int/lit8 v5, v1, 0x6

    if-eqz v5, :cond_e3

    mul-int/lit8 v5, v1, 0xf

    add-int/lit16 v5, v5, 0x10e

    int-to-float v5, v5

    .line 184
    iget v6, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_2:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0, v6, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->getCoordinatePoint(IF)[F

    move-result-object v6

    .line 185
    iget v7, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_1:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->DP_5:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v7, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->getCoordinatePoint(IF)[F

    move-result-object v5

    .line 187
    aget v8, v6, v0

    aget v9, v6, v4

    aget v10, v5, v0

    aget v11, v5, v4

    iget-object v12, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScale:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_e3
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 195
    :cond_e6
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 198
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-float v1, v1

    iget v4, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->bigFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/CmAngularView;->getTimeText(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 210
    iget v4, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-float v4, v4

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-float v1, v1

    iget v5, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->textSize:F

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->mPaintScaleText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->pointWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    int-to-float v1, v1

    iget v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmAngularView;->calcArcEndPointXY(FFFFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 236
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringWidth:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .line 323
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerX:I

    .line 324
    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->centerY:I

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 327
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->paddingOuterThumb:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->radius:I

    int-to-float v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x3fc00000  # 1.5f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 328
    iput v2, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->minValidateTouchArcRadius:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 329
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->maxValidateTouchArcRadius:I

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2f

    if-eq v0, v3, :cond_1f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_17

    goto :goto_3b

    .line 298
    :cond_17
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->downOnArc:Z

    if-eqz v0, :cond_3b

    .line 299
    invoke-direct {p0, v1, v2}, Lcom/codemao/creativecenter/customview/CmAngularView;->updateArc(II)V

    return v3

    :cond_1f
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->downOnArc:Z

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->changeListener:Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;

    if-eqz v0, :cond_3b

    .line 307
    iget v1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;->onProgressChangeEnd(I)V

    goto :goto_3b

    .line 291
    :cond_2f
    invoke-direct {p0, v1, v2}, Lcom/codemao/creativecenter/customview/CmAngularView;->isTouchArc(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 292
    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->downOnArc:Z

    .line 293
    invoke-direct {p0, v1, v2}, Lcom/codemao/creativecenter/customview/CmAngularView;->updateArc(II)V

    return v3

    .line 311
    :cond_3b
    :goto_3b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChangeListener(Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->changeListener:Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;

    return-void
.end method

.method public setCricleColor(I)V
    .registers 2

    .line 405
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .registers 2

    .line 413
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 2

    monitor-enter p0

    .line 394
    :try_start_1
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->progress:I

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 398
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .registers 2

    .line 421
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmAngularView;->roundWidth:F

    return-void
.end method
