.class Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;
.super Ljava/lang/Object;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/sketch/view/CutOutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CutActorImageController"
.end annotation


# instance fields
.field MAX_DIS:I

.field MAX_OFFSET:F

.field _drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

.field final bigCircleRadius:F

.field final borderPaint:Landroid/graphics/Paint;

.field coverLeftBottom:Z

.field coverLeftTop:Z

.field coverRightBottom:Z

.field coverRightTop:Z

.field final dashPaint:Landroid/graphics/Paint;

.field final drawPath:Landroid/graphics/Path;

.field final drawPathPaint:Landroid/graphics/Paint;

.field final erasePaint:Landroid/graphics/Paint;

.field final fillPaint:Landroid/graphics/Paint;

.field firstIntersectPoint:I

.field final highLightPaint:Landroid/graphics/Paint;

.field image:Landroid/graphics/Bitmap;

.field final imagePaint:Landroid/graphics/Paint;

.field imageRect:Landroid/graphics/Rect;

.field isCancel:Z

.field isRealChange:Z

.field isTouching:Z

.field lastIntersectPoint:I

.field lastX:F

.field lastY:F

.field final maskPaint:Landroid/graphics/Paint;

.field maxDistanceWhenDrawDashPath:D

.field minIndex:I

.field final pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;"
        }
    .end annotation
.end field

.field final pointPaint:Landroid/graphics/Paint;

.field final porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field screenHeight:D

.field screenWidth:D

.field final smallCircleRadius:F

.field final smooth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;"
        }
    .end annotation
.end field

.field startRect:Landroid/graphics/Rect;

.field final strokePaint:Landroid/graphics/Paint;

.field private final strokeWidth:F

.field final tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

.field touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

.field undoIndex:I

.field undoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/CutOutImageView;)V
    .registers 7

    .line 470
    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x41f00000  # 30.0f

    .line 342
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->MAX_DIS:I

    const/high16 p1, 0x428c0000  # 70.0f

    .line 343
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->MAX_OFFSET:F

    const/high16 p1, 0x40c00000  # 6.0f

    .line 348
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokeWidth:F

    .line 350
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->borderPaint:Landroid/graphics/Paint;

    const v0, -0x892a59

    .line 353
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x40400000  # 3.0f

    .line 355
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPathPaint:Landroid/graphics/Paint;

    .line 362
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x3f800000  # 1.0f

    .line 363
    invoke-static {v1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 364
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->fillPaint:Landroid/graphics/Paint;

    .line 370
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 371
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->dashPaint:Landroid/graphics/Paint;

    .line 377
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40800000  # 4.0f

    .line 379
    invoke-static {v2}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v2, "#ffffff"

    .line 380
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_15e

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 384
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    .line 387
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 388
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 389
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 393
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->imagePaint:Landroid/graphics/Paint;

    .line 396
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    .line 402
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x66000000

    .line 403
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->erasePaint:Landroid/graphics/Paint;

    .line 410
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0xffffff

    .line 411
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->highLightPaint:Landroid/graphics/Paint;

    .line 415
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 418
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointPaint:Landroid/graphics/Paint;

    .line 424
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    invoke-static {v1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 428
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    const/high16 p1, 0x41500000  # 13.0f

    .line 434
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    const/high16 p1, 0x41900000  # 18.0f

    .line 435
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    .line 442
    sget-object p1, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->none:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 443
    sget-object p1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->none:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 456
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    .line 457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smooth:Ljava/util/List;

    .line 458
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 463
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    const/4 p1, 0x0

    .line 464
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    .line 465
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    .line 466
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isCancel:Z

    .line 467
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    const-wide/16 v0, 0x0

    .line 468
    iput-wide v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maxDistanceWhenDrawDashPath:D

    const/4 v0, -0x1

    .line 883
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    .line 884
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    .line 885
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftBottom:Z

    .line 886
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightBottom:Z

    .line 887
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftTop:Z

    .line 888
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightTop:Z

    return-void

    nop

    :array_15e
    .array-data 4
        0x41000000  # 8.0f
        0x41000000  # 8.0f
    .end array-data
.end method

.method private smoothList(ILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_78

    .line 795
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smooth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 796
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smooth:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    neg-int v1, p1

    :goto_f
    if-gt v1, p1, :cond_6d

    .line 799
    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    add-int/2addr v2, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, -0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_21
    const/4 v6, 0x5

    if-gt v3, v6, :cond_53

    add-int v7, v2, v3

    .line 803
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v7

    .line 804
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v8, v9

    .line 803
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v8, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    add-float/2addr v4, v8

    .line 806
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    .line 807
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v7, v6

    .line 806
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_53
    const/high16 v3, 0x41300000  # 11.0f

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 812
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    .line 813
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {v2, v4, v5}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->set(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 815
    :cond_6d
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 816
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smooth:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_78
    return-void
.end method


# virtual methods
.method _getMinRect(Ljava/util/List;)Landroid/graphics/Rect;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 1386
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    if-eqz v0, :cond_20

    .line 1387
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    .line 1388
    :cond_20
    iget v0, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_26
    if-eqz v2, :cond_32

    .line 1390
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_38

    .line 1391
    :cond_32
    iget v2, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_38
    if-eqz v1, :cond_44

    .line 1393
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4a

    .line 1394
    :cond_44
    iget v1, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_4a
    if-eqz v3, :cond_56

    .line 1396
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v6, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 1397
    :cond_56
    iget v3, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_8

    .line 1400
    :cond_5d
    new-instance p1, Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v0, :cond_67

    .line 1401
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    if-eqz v1, :cond_6f

    .line 1402
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    if-eqz v2, :cond_77

    .line 1403
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    goto :goto_78

    :cond_77
    const/4 v2, 0x0

    :goto_78
    if-eqz v3, :cond_7e

    .line 1404
    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v4

    :cond_7e
    invoke-direct {p1, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method _lineTrim()V
    .registers 5

    .line 1144
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1145
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 1146
    :goto_18
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 1147
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    float-to-int v1, v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 1148
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-int v2, v2

    .line 1147
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1149
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_18

    :cond_54
    return-void
.end method

.method _modify(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1157
    invoke-virtual/range {p0 .. p1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getLineDistance(Ljava/util/List;)D

    move-result-wide v4

    const-wide v6, 0x4082c00000000000L  # 600.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    .line 1158
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v3, :cond_ba

    add-int/lit8 v7, v6, 0x1

    .line 1161
    rem-int v8, v7, v3

    .line 1163
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v9, v9, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v10, v10, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v11, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v12, v12, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 1162
    invoke-virtual {v0, v9, v10, v11, v12}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v9

    int-to-double v11, v4

    cmpg-double v13, v9, v11

    if-gez v13, :cond_59

    .line 1165
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    move v6, v7

    goto :goto_1f

    :cond_59
    div-double/2addr v9, v11

    double-to-int v9, v9

    int-to-double v9, v9

    const/4 v11, 0x0

    :goto_5d
    int-to-double v12, v11

    cmpg-double v14, v12, v9

    if-gez v14, :cond_57

    .line 1171
    new-instance v12, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1172
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v13, v13, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    float-to-double v13, v13

    int-to-float v15, v11

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v5, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float/2addr v5, v3

    mul-float v5, v5, v15

    move/from16 v16, v4

    float-to-double v3, v5

    div-double/2addr v3, v9

    add-double/2addr v13, v3

    double-to-float v3, v13

    .line 1173
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-double v4, v4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v13, v13, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v14, v14, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float/2addr v13, v14

    mul-float v15, v15, v13

    float-to-double v13, v15

    div-double/2addr v13, v9

    add-double/2addr v4, v13

    double-to-float v4, v4

    invoke-direct {v12, v3, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    .line 1171
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_5d

    .line 1178
    :cond_ba
    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkIntersection(Ljava/util/List;)V

    .line 1179
    iget-object v1, v0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1180
    iget-object v1, v0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method addUntoUnit()V
    .registers 6

    .line 1244
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    if-eqz v0, :cond_1e

    .line 1245
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    new-instance v1, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;-><init>(Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    :cond_1e
    return-void
.end method

.method checkCanCutDoneAble()V
    .registers 4

    .line 1027
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$300(Lcn/codemao/android/sketch/view/CutOutImageView;)Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1028
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$300(Lcn/codemao/android/sketch/view/CutOutImageView;)Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v2, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;->canCutDoneCallback(Z)V

    :cond_1a
    return-void
.end method

.method checkCanUndo()V
    .registers 3

    .line 1033
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$300(Lcn/codemao/android/sketch/view/CutOutImageView;)Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1034
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$300(Lcn/codemao/android/sketch/view/CutOutImageView;)Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;->canUndoCallback(Z)V

    .line 1036
    :cond_1c
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkCanCutDoneAble()V

    return-void
.end method

.method checkIntersection(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_4
    :goto_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1187
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v3, v5, :cond_129

    .line 1188
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_16

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v3, 0x1

    .line 1192
    :cond_16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_129

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_24

    goto/16 :goto_129

    :cond_24
    add-int/lit8 v5, v4, 0x1

    .line 1194
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    rem-int v6, v5, v6

    add-int/lit8 v7, v3, 0x1

    .line 1195
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    rem-int/2addr v7, v8

    if-eq v7, v6, :cond_126

    if-eq v3, v4, :cond_126

    if-eq v4, v7, :cond_126

    if-eq v3, v6, :cond_126

    .line 1200
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_126

    .line 1201
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_126

    .line 1202
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_126

    .line 1204
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v10, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 1205
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v11, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 1206
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v12, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 1207
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v13, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 1208
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v14, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 1209
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v15, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 1210
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 1211
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v7, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    move-object/from16 v9, p0

    move/from16 v16, v4

    move/from16 v17, v7

    .line 1203
    invoke-virtual/range {v9 .. v17}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->intersection(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 1212
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    add-int/2addr v4, v3

    .line 1214
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    sub-int v7, v6, v3

    if-ge v4, v7, :cond_fa

    .line 1216
    :goto_ab
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_cb

    .line 1217
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {v4, v5}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 1218
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ab

    .line 1220
    :cond_cb
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1221
    :goto_d1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {v5, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 1222
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d1

    :cond_e7
    if-nez v3, :cond_4

    .line 1224
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v6, v3, :cond_4

    .line 1225
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1228
    :cond_fa
    :goto_fa
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_110

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {v4, v5}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_110

    .line 1229
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_fa

    .line 1231
    :cond_110
    :goto_110
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {v4, v5}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1232
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_110

    :cond_126
    move v4, v5

    goto/16 :goto_6

    :cond_129
    :goto_129
    return-void
.end method

.method checkIntersectionList()Z
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1410
    :goto_2
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_8b

    .line 1411
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1412
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    add-int/lit8 v5, v1, 0x2

    :goto_20
    add-int/lit8 v6, v5, 0x1

    .line 1414
    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_88

    .line 1415
    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1416
    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1417
    invoke-virtual {p0, v7, v8, v3, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isScopeIntersect(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 1418
    invoke-virtual {p0, v7, v2, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->crossProduct(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)F

    move-result v9

    .line 1419
    invoke-virtual {p0, v2, v8, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->crossProduct(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)F

    move-result v10

    .line 1420
    invoke-virtual {p0, v3, v8, v7}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->crossProduct(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)F

    move-result v11

    .line 1421
    invoke-virtual {p0, v8, v2, v7}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->crossProduct(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)F

    move-result v7

    mul-float v9, v9, v10

    const/4 v8, 0x0

    cmpl-float v9, v9, v8

    if-ltz v9, :cond_86

    mul-float v11, v11, v7

    cmpl-float v7, v11, v8

    if-ltz v7, :cond_86

    .line 1426
    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v7, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_getMinRect(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1428
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/16 v9, 0x1e

    if-gt v8, v9, :cond_85

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v9, :cond_76

    goto :goto_85

    :cond_76
    move v7, v1

    :goto_77
    if-ge v7, v5, :cond_81

    .line 1433
    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_77

    .line 1435
    :cond_81
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    goto :goto_86

    :cond_85
    :goto_85
    return v0

    :cond_86
    :goto_86
    move v5, v6

    goto :goto_20

    :cond_88
    move v1, v4

    goto/16 :goto_2

    :cond_8b
    const/4 v0, 0x1

    return v0
.end method

.method checkLineBoundary()V
    .registers 12

    .line 918
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 919
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_10

    const/4 v0, 0x0

    :cond_10
    const/4 v2, -0x1

    .line 923
    iput v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    .line 924
    iput v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    .line 925
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftBottom:Z

    .line 926
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightBottom:Z

    .line 927
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftTop:Z

    .line 928
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightTop:Z

    .line 930
    :goto_1d
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object v5, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne v3, v5, :cond_2c

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 931
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d6

    goto :goto_2e

    :cond_2c
    if-ltz v0, :cond_d6

    .line 933
    :goto_2e
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 934
    iget-object v6, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 937
    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v8

    cmpl-float v9, v9, v3

    if-ltz v9, :cond_54

    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    cmpl-float v9, v9, v6

    if-ltz v9, :cond_54

    .line 938
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftTop:Z

    .line 940
    :cond_54
    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v10, v9

    cmpg-float v10, v10, v3

    if-gtz v10, :cond_64

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    cmpl-float v10, v10, v6

    if-ltz v10, :cond_64

    .line 941
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightTop:Z

    :cond_64
    int-to-float v10, v8

    cmpl-float v10, v10, v3

    if-ltz v10, :cond_72

    .line 943
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_72

    .line 944
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftBottom:Z

    :cond_72
    int-to-float v10, v9

    cmpg-float v10, v10, v3

    if-gtz v10, :cond_80

    .line 946
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpg-float v10, v10, v6

    if-gtz v10, :cond_80

    .line 947
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightBottom:Z

    :cond_80
    int-to-float v10, v8

    cmpl-float v10, v10, v3

    if-lez v10, :cond_88

    int-to-float v3, v8

    const/4 v8, 0x1

    goto :goto_89

    :cond_88
    const/4 v8, 0x0

    :goto_89
    int-to-float v9, v9

    cmpg-float v3, v9, v3

    if-gez v3, :cond_8f

    const/4 v8, 0x1

    .line 961
    :cond_8f
    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    cmpl-float v9, v9, v6

    if-lez v9, :cond_98

    int-to-float v6, v3

    const/4 v8, 0x1

    .line 966
    :cond_98
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_a0

    const/4 v8, 0x1

    .line 972
    :cond_a0
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne v3, v5, :cond_bd

    if-eqz v8, :cond_ae

    .line 973
    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    if-ne v3, v2, :cond_ae

    .line 974
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    goto/16 :goto_1d

    :cond_ae
    if-nez v8, :cond_b9

    .line 976
    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    if-eq v3, v2, :cond_b9

    .line 977
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    .line 978
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->removeIntersects()V

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_bd
    if-eqz v8, :cond_c7

    .line 982
    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    if-ne v3, v2, :cond_c7

    .line 983
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    goto/16 :goto_1d

    :cond_c7
    if-nez v8, :cond_d2

    .line 985
    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    if-eq v3, v2, :cond_d2

    .line 986
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    .line 987
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->removeIntersects()V

    :cond_d2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1d

    .line 992
    :cond_d6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 994
    :goto_dc
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11d

    .line 995
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 996
    iget v3, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 997
    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 998
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    cmpl-float v7, v7, v3

    if-lez v7, :cond_fa

    int-to-float v3, v6

    .line 1001
    :cond_fa
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v6

    cmpg-float v7, v7, v3

    if-gez v7, :cond_102

    int-to-float v3, v6

    .line 1004
    :cond_102
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v6

    cmpl-float v7, v7, v2

    if-lez v7, :cond_10a

    int-to-float v2, v6

    .line 1007
    :cond_10a
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v5

    cmpg-float v6, v6, v2

    if-gez v6, :cond_112

    int-to-float v2, v5

    .line 1010
    :cond_112
    new-instance v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-direct {v5, v3, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 1015
    :cond_11d
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1016
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1017
    invoke-virtual {p0, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    return-void
.end method

.method clipImage()Landroid/graphics/Bitmap;
    .registers 16

    .line 1281
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1283
    :cond_6
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1286
    :goto_1c
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 1287
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1288
    new-instance v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v7, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    mul-float v7, v7, v2

    iget v5, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float v5, v5, v2

    invoke-direct {v6, v7, v5}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1293
    :cond_49
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/high16 v4, -0x40800000  # -1.0f

    const/high16 v5, -0x40800000  # -1.0f

    const/high16 v6, -0x40800000  # -1.0f

    const/high16 v7, -0x40800000  # -1.0f

    .line 1300
    :goto_56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9d

    .line 1301
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    if-nez v3, :cond_6c

    .line 1303
    iget v9, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v10, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_73

    .line 1305
    :cond_6c
    iget v9, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v10, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_73
    float-to-double v9, v5

    const-wide/high16 v11, -0x4010000000000000L  # -1.0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_82

    .line 1308
    iget v4, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 1309
    iget v5, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    move v6, v5

    move v7, v6

    move v5, v4

    goto :goto_9a

    .line 1313
    :cond_82
    iget v9, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    cmpl-float v10, v5, v9

    if-lez v10, :cond_89

    move v5, v9

    .line 1316
    :cond_89
    iget v8, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpl-float v10, v7, v8

    if-lez v10, :cond_90

    move v7, v8

    :cond_90
    cmpg-float v10, v4, v9

    if-gez v10, :cond_95

    move v4, v9

    :cond_95
    cmpg-float v9, v6, v8

    if-gez v9, :cond_9a

    move v6, v8

    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 1327
    :cond_9d
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    sub-float/2addr v4, v5

    sub-float/2addr v6, v7

    float-to-int v0, v4

    float-to-int v3, v6

    .line 1332
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1333
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1334
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 1335
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1337
    iget-object v6, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v11, v6

    iget-object v6, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v12, v6

    const/4 v13, 0x0

    const/16 v14, 0x1f

    move-object v8, v3

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v6

    neg-float v5, v5

    neg-float v7, v7

    .line 1339
    invoke-virtual {v3, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1340
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1341
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1342
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1343
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1344
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1346
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f3} :catch_f4

    return-object v0

    :catch_f4
    move-exception v0

    .line 1349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method closeDrawPathToEditState()V
    .registers 2

    .line 1040
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 1041
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_modify(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 1042
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    .line 1043
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    return-void
.end method

.method crossProduct(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)F
    .registers 7

    .line 1374
    iget v0, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v1, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float/2addr v0, v1

    .line 1375
    iget p1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget p3, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float/2addr p1, p3

    .line 1376
    iget v2, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float/2addr v2, v1

    .line 1377
    iget p2, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float/2addr p2, p3

    mul-float v0, v0, p2

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    return v0
.end method

.method draw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 533
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    return-void

    .line 534
    :cond_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 535
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->imageRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 536
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v2, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->drawPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v0, v2, :cond_96

    .line 537
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_f0

    .line 538
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawDashLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 539
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne v0, v3, :cond_51

    .line 540
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    .line 541
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    goto/16 :goto_f0

    .line 542
    :cond_51
    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne v0, v3, :cond_76

    .line 543
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    .line 544
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    goto/16 :goto_f0

    .line 546
    :cond_76
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    .line 547
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V

    goto :goto_f0

    .line 550
    :cond_96
    sget-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v0, v1, :cond_f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 551
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 552
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 553
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 554
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 556
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 557
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maskPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x66000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 560
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 562
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f0
    :goto_f0
    return-void
.end method

.method drawCustomizePoint(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)V
    .registers 7

    .line 525
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->fillPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget v0, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v1, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 527
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    const v1, -0x7f8b329e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000  # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 529
    iget v0, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget p2, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr p3, v1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawDashLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 4

    .line 521
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method drawLine(Z)V
    .registers 7

    .line 1047
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1048
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1049
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7c

    if-eqz p1, :cond_31

    .line 1051
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_56

    .line 1053
    :cond_31
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1055
    :goto_56
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5e
    if-ltz v0, :cond_e1

    .line 1057
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5e

    :cond_7c
    if-eqz p1, :cond_a4

    .line 1062
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_bd

    .line 1064
    :cond_a4
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1067
    :goto_bd
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e1

    .line 1068
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_e1
    if-eqz p1, :cond_e8

    .line 1074
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_e8
    return-void
.end method

.method getAngle(DDDDDD)D
    .registers 13

    sub-double/2addr p1, p5

    sub-double/2addr p3, p7

    sub-double/2addr p9, p5

    sub-double/2addr p11, p7

    mul-double p5, p1, p9

    mul-double p7, p3, p11

    add-double/2addr p5, p7

    mul-double p1, p1, p1

    mul-double p3, p3, p3

    add-double/2addr p1, p3

    mul-double p9, p9, p9

    mul-double p11, p11, p11

    add-double/2addr p9, p11

    mul-double p1, p1, p9

    .line 1120
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    div-double/2addr p5, p1

    .line 1121
    invoke-static {p5, p6}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L  # 180.0

    mul-double p1, p1, p3

    const-wide p3, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p1, p3

    return-wide p1
.end method

.method getDistanceFromPointToPoint(FFFF)D
    .registers 5

    sub-float/2addr p3, p1

    mul-float p3, p3, p3

    sub-float/2addr p4, p2

    mul-float p4, p4, p4

    add-float/2addr p3, p4

    float-to-double p1, p3

    .line 1111
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method getLineDistance(Ljava/util/List;)D
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/CutOutImageView$Offset;",
            ">;)D"
        }
    .end annotation

    .line 1079
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_34

    float-to-double v3, v1

    .line 1083
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v5, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    add-int/lit8 v2, v2, 0x1

    rem-int v6, v2, v0

    .line 1084
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v7, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 1083
    invoke-virtual {p0, v1, v5, v7, v6}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v1, v3

    goto :goto_6

    :cond_34
    float-to-double v0, v1

    return-wide v0
.end method

.method getRectFromCenter(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;II)Landroid/graphics/Rect;
    .registers 8

    .line 507
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    div-int/lit8 p2, p2, 0x2

    int-to-float v2, p2

    sub-float v2, v1, v2

    float-to-int v2, v2

    iget p1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-int v3, p1

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v3, p3

    float-to-int v1, v1

    add-int/2addr v1, p2

    float-to-int p1, p1

    add-int/2addr p1, p3

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;
    .registers 3

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    .line 514
    invoke-virtual {p0, p1, p2, p2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCenter(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;II)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method init()V
    .registers 13

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    .line 475
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/high16 v0, 0x428c0000  # 70.0f

    .line 484
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-double v0, v0

    const/high16 v2, 0x41a00000  # 20.0f

    .line 485
    invoke-static {v2}, Lcn/codemao/android/sketch/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-double v2, v2

    .line 486
    iget-wide v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenWidth:D

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    mul-double v8, v0, v6

    sub-double/2addr v4, v8

    .line 487
    iget-wide v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenHeight:D

    mul-double v2, v2, v6

    sub-double/2addr v8, v2

    .line 489
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v8, v2

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 490
    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v2

    .line 491
    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    mul-double v8, v8, v2

    .line 492
    iget-wide v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenHeight:D

    sub-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 493
    iget-wide v10, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenWidth:D

    sub-double/2addr v10, v4

    div-double/2addr v10, v6

    .line 494
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    double-to-int v1, v2

    .line 499
    new-instance v2, Landroid/graphics/Rect;

    double-to-int v3, v4

    add-int/2addr v3, v0

    double-to-int v4, v8

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    .line 500
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->imageRect:Landroid/graphics/Rect;

    .line 501
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 503
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    return-void
.end method

.method intersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    .line 1104
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method intersection(FFFFFFFF)Z
    .registers 14

    .line 1128
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p5, p7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_66

    .line 1129
    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p6, p8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_66

    .line 1130
    invoke-static {p5, p7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_66

    .line 1131
    invoke-static {p6, p8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    goto :goto_66

    :cond_32
    sub-float v0, p1, p5

    sub-float v1, p8, p6

    mul-float v0, v0, v1

    sub-float v3, p2, p6

    sub-float v4, p7, p5

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    sub-float v3, p3, p5

    mul-float v3, v3, v1

    sub-float v1, p4, p6

    mul-float v1, v1, v4

    sub-float/2addr v3, v1

    mul-float v0, v0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_66

    sub-float/2addr p5, p1

    sub-float/2addr p4, p2

    mul-float p5, p5, p4

    sub-float/2addr p6, p2

    sub-float/2addr p3, p1

    mul-float p6, p6, p3

    sub-float/2addr p5, p6

    sub-float/2addr p7, p1

    mul-float p7, p7, p4

    sub-float/2addr p8, p2

    mul-float p8, p8, p3

    sub-float/2addr p7, p8

    mul-float p5, p5, p7

    cmpl-float p1, p5, v1

    if-gtz p1, :cond_66

    const/4 v2, 0x1

    :cond_66
    :goto_66
    return v2
.end method

.method isEndDrawPath()Z
    .registers 4

    .line 1093
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1096
    :cond_a
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smallCircleRadius:F

    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    invoke-virtual {p0, v1, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 1099
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->intersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method isScopeIntersect(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;Lcn/codemao/android/sketch/view/CutOutImageView$Offset;)Z
    .registers 10

    .line 1356
    iget v0, p4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v1, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1357
    iget v1, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v2, p4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1358
    iget v2, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    const/4 v3, 0x0

    cmpg-float v4, v2, v1

    if-gez v4, :cond_1e

    iget v4, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    cmpg-float v1, v4, v1

    if-gez v1, :cond_1e

    return v3

    :cond_1e
    cmpl-float v1, v2, v0

    if-lez v1, :cond_29

    .line 1361
    iget v1, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_29

    return v3

    .line 1364
    :cond_29
    iget v0, p4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v1, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1365
    iget p3, p3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget p4, p4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1366
    iget p1, p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpg-float p4, p1, p3

    if-gez p4, :cond_46

    iget p4, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpg-float p3, p4, p3

    if-gez p3, :cond_46

    return v3

    :cond_46
    cmpl-float p1, p1, v0

    if-lez p1, :cond_50

    .line 1369
    iget p1, p2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_51

    :cond_50
    const/4 v3, 0x1

    :cond_51
    return v3
.end method

.method notifyState()V
    .registers 2

    .line 1021
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    .line 1022
    :cond_b
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    if-nez v0, :cond_10

    return-void

    .line 1023
    :cond_10
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkCanCutDoneAble()V

    return-void
.end method

.method notifyToAddPoint(FF)V
    .registers 4

    .line 821
    new-instance v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    .line 822
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object p2, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne p1, p2, :cond_25

    .line 823
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 824
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 826
    :cond_25
    sget-object p2, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-ne p1, p2, :cond_3d

    .line 827
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 828
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method onPanEnd()V
    .registers 8

    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    .line 844
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    return-void

    .line 845
    :cond_c
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v2, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->drawPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4e

    .line 846
    iget-wide v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maxDistanceWhenDrawDashPath:D

    const-wide/high16 v4, 0x4044000000000000L  # 40.0

    cmpg-double v6, v1, v4

    if-gez v6, :cond_20

    .line 847
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 849
    :cond_20
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_lineTrim()V

    .line 850
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkLineBoundary()V

    .line 851
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkIntersectionList()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 852
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isEndDrawPath()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 854
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->closeDrawPathToEditState()V

    goto :goto_3b

    .line 856
    :cond_35
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    move v0, v1

    .line 858
    :goto_3b
    sget-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->none:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iput-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 859
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->notifyState()V

    .line 860
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->addUntoUnit()V

    .line 861
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkCanUndo()V

    if-eqz v0, :cond_84

    .line 864
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undo()V

    goto :goto_84

    .line 866
    :cond_4e
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v1, v0, :cond_84

    .line 867
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 868
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 869
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 870
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_modify(Ljava/util/List;)V

    .line 871
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84

    .line 872
    invoke-virtual {p0, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    .line 873
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    .line 874
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->notifyState()V

    .line 875
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->addUntoUnit()V

    .line 876
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkCanUndo()V

    :cond_84
    :goto_84
    return-void
.end method

.method onPanStart(Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;)Z
    .registers 10

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    .line 572
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isCancel:Z

    .line 573
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    .line 574
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v1

    iput v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastX:F

    .line 575
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result v1

    iput v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastY:F

    .line 576
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2d

    .line 577
    :cond_24
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 578
    sget-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->none:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 580
    :cond_2d
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->none:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v1, v3, :cond_73

    .line 581
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 582
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 583
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->drawPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 584
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 585
    new-instance v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    .line 586
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    .line 588
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    const-wide/16 v0, 0x0

    .line 589
    iput-wide v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maxDistanceWhenDrawDashPath:D

    .line 590
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    goto/16 :goto_119

    .line 592
    :cond_73
    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->drawPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v1, v3, :cond_c4

    .line 593
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    invoke-virtual {p0, v1, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 594
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 595
    sget-object p1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->last:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    return v2

    .line 597
    :cond_9f
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->bigCircleRadius:F

    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getRectFromCircle(Lcn/codemao/android/sketch/view/CutOutImageView$Offset;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 598
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_119

    .line 599
    sget-object p1, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->first:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    .line 600
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    goto :goto_119

    .line 602
    :cond_c4
    sget-object p1, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v1, p1, :cond_119

    .line 603
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 604
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-wide v3, 0x412e848000000000L  # 1000000.0

    const/4 p1, 0x0

    .line 607
    :goto_da
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_108

    .line 608
    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastX:F

    iget v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastY:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 609
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v7, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 608
    invoke-virtual {p0, v1, v5, v6, v7}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_105

    .line 612
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    move-wide v3, v5

    :cond_105
    add-int/lit8 p1, p1, 0x1

    goto :goto_da

    .line 616
    :cond_108
    iget p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->MAX_DIS:I

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_117

    const/4 p1, -0x1

    .line 617
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    .line 618
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isCancel:Z

    .line 619
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    goto :goto_119

    .line 621
    :cond_117
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    .line 624
    :cond_119
    :goto_119
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isTouching:Z

    return p1
.end method

.method onPanUpdate(Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;)V
    .registers 34

    move-object/from16 v13, p0

    .line 628
    iget-boolean v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isCancel:Z

    if-eqz v0, :cond_7

    return-void

    .line 629
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getX()F

    move-result v0

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;->getY()F

    move-result v1

    .line 631
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->drawPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v2, v3, :cond_2f

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->_drawPathOrder:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    sget-object v4, Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;->none:Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;

    if-eq v3, v4, :cond_2f

    .line 633
    iput-boolean v15, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->upDateMaxDistanceOnPan()V

    .line 635
    invoke-virtual {v13, v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->notifyToAddPoint(FF)V

    .line 636
    invoke-virtual {v13, v14}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    .line 637
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    goto/16 :goto_46e

    .line 638
    :cond_2f
    sget-object v3, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v2, v3, :cond_46e

    .line 639
    iget v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastX:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v0, v0, v2

    .line 640
    iget v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastY:F

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    .line 641
    iget v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->MAX_OFFSET:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_47

    move v0, v2

    goto :goto_4d

    :cond_47
    neg-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4d

    neg-float v0, v2

    :cond_4d
    :goto_4d
    cmpl-float v3, v1, v2

    if-lez v3, :cond_53

    move v1, v2

    goto :goto_59

    :cond_53
    neg-float v3, v2

    cmpg-float v3, v1, v3

    if-gez v3, :cond_59

    neg-float v1, v2

    .line 653
    :cond_59
    :goto_59
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_46e

    iget v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46e

    iget v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    if-ltz v2, :cond_46e

    .line 654
    new-instance v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-direct {v11, v2, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    .line 655
    iget v2, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    add-float v12, v0, v2

    .line 656
    iget v0, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    add-float v9, v1, v0

    .line 657
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    float-to-int v1, v12

    float-to-int v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_9e

    return-void

    .line 662
    :cond_9e
    iget-wide v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenHeight:D

    const-wide v2, 0x3fb5532617c1bda5L  # 0.0833

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    .line 663
    iget v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    const/4 v2, 0x0

    move v2, v1

    const/4 v3, 0x0

    :goto_b1
    cmpg-float v4, v3, v0

    if-gez v4, :cond_16e

    if-gez v1, :cond_bf

    .line 668
    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_c0

    :cond_bf
    move v4, v1

    .line 669
    :goto_c0
    iget-object v5, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 670
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    if-gez v5, :cond_d4

    .line 672
    iget-object v6, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v15

    goto :goto_d5

    :cond_d4
    move v6, v5

    .line 673
    :goto_d5
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 674
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v6, v1

    if-gez v2, :cond_e6

    .line 676
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_e7

    :cond_e6
    move v1, v2

    .line 677
    :goto_e7
    iget-object v7, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 678
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v1, v7

    add-int/lit8 v7, v2, -0x1

    if-gez v7, :cond_f9

    .line 680
    iget-object v8, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 681
    :cond_f9
    iget-object v8, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 682
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    rem-int/2addr v7, v8

    if-gez v7, :cond_103

    const/4 v7, 0x0

    :cond_103
    if-gez v1, :cond_106

    const/4 v1, 0x0

    :cond_106
    if-gez v4, :cond_109

    const/4 v4, 0x0

    :cond_109
    if-gez v6, :cond_10c

    const/4 v6, 0x0

    .line 689
    :cond_10c
    iget-object v8, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 690
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v8, v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v10, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 691
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget-object v10, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 692
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v10, v10, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v14, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 693
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 689
    invoke-virtual {v13, v8, v4, v10, v6}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v16

    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 695
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v6, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 696
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget-object v6, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 697
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v8, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 698
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v7, v7, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 694
    invoke-virtual {v13, v4, v1, v6, v7}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v6

    add-double v6, v16, v6

    double-to-float v1, v6

    add-float/2addr v3, v1

    add-int/lit8 v2, v2, -0x1

    move v1, v5

    const/4 v14, 0x0

    goto/16 :goto_b1

    :cond_16e
    sub-int v0, v1, v2

    add-int/2addr v0, v15

    if-gez v0, :cond_17c

    .line 705
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    add-int/2addr v0, v15

    .line 706
    :cond_17c
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 707
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v14, v0, v1

    const/4 v10, 0x1

    :goto_185
    const/high16 v16, 0x3f800000  # 1.0f

    if-ge v10, v14, :cond_316

    .line 709
    iget v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    sub-int/2addr v0, v10

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gez v0, :cond_1a6

    .line 710
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v10

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1af

    .line 711
    :cond_1a6
    iget v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    sub-int/2addr v0, v10

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1af
    add-int/2addr v0, v1

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 712
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 713
    iget v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    add-int/2addr v1, v10

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v7, v1, v2

    add-int/lit8 v1, v0, 0x1

    .line 714
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    add-int/lit8 v2, v7, -0x1

    .line 715
    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    int-to-float v3, v10

    sub-float v3, v3, v16

    mul-float v3, v3, v3

    mul-int v4, v10, v10

    int-to-float v5, v4

    div-float/2addr v3, v5

    sub-float v3, v16, v3

    float-to-double v5, v3

    .line 717
    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    move/from16 v17, v7

    float-to-double v7, v3

    iget v3, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float v3, v12, v3

    move/from16 v18, v2

    float-to-double v2, v3

    mul-double v2, v2, v5

    add-double v19, v7, v2

    .line 718
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-double v1, v1

    iget v3, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float v3, v9, v3

    float-to-double v7, v3

    mul-double v5, v5, v7

    add-double v21, v1, v5

    add-int/lit8 v1, v10, -0x1

    mul-int v1, v1, v1

    .line 719
    div-int/2addr v1, v4

    rsub-int/lit8 v1, v1, 0x1

    .line 720
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    move/from16 v3, v18

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    int-to-float v1, v1

    iget v4, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float v4, v12, v4

    mul-float v4, v4, v1

    add-float/2addr v2, v4

    float-to-double v7, v2

    .line 721
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v3, v11, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float v3, v9, v3

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    float-to-double v5, v2

    add-int/lit8 v1, v0, -0x1

    .line 722
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    add-int/lit8 v2, v17, 0x1

    .line 723
    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v2, v3

    .line 725
    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    move v4, v3

    float-to-double v2, v2

    iget-object v15, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    move-wide/from16 v23, v5

    move v6, v4

    float-to-double v4, v1

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 726
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    move-wide/from16 v25, v7

    move v8, v6

    float-to-double v6, v1

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-wide v1, v2

    move v15, v8

    move-wide v3, v4

    move-wide v5, v6

    move/from16 v29, v14

    move/from16 v14, v17

    move-wide/from16 v7, v27

    move/from16 v17, v9

    move/from16 v30, v10

    move-wide/from16 v9, v19

    move-object/from16 v31, v11

    move/from16 v19, v12

    move-wide/from16 v11, v21

    .line 725
    invoke-virtual/range {v0 .. v12}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getAngle(DDDDDD)D

    move-result-wide v20

    .line 727
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    float-to-double v1, v0

    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-double v3, v0

    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 728
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    float-to-double v5, v0

    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    float-to-double v7, v0

    move-object/from16 v0, p0

    move-wide/from16 v9, v25

    move-wide/from16 v11, v23

    .line 727
    invoke-virtual/range {v0 .. v12}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getAngle(DDDDDD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L  # 180.0

    sub-double v20, v20, v2

    .line 730
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L  # 5.0

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_313

    sub-double/2addr v0, v2

    .line 731
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v6

    if-gez v2, :cond_304

    goto :goto_313

    :cond_304
    move/from16 v15, v30

    add-int/lit8 v10, v15, 0x1

    move/from16 v9, v17

    move/from16 v12, v19

    move/from16 v14, v29

    move-object/from16 v11, v31

    const/4 v15, 0x1

    goto/16 :goto_185

    :cond_313
    :goto_313
    move/from16 v15, v30

    goto :goto_31d

    :cond_316
    move/from16 v17, v9

    move v15, v10

    move-object/from16 v31, v11

    move/from16 v19, v12

    .line 736
    :goto_31d
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_32a
    if-ge v0, v15, :cond_3c3

    .line 740
    iget v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    sub-int/2addr v1, v0

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    .line 741
    iget v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->minIndex:I

    add-int/2addr v2, v0

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    int-to-float v3, v0

    mul-float v3, v3, v3

    mul-int v10, v15, v15

    int-to-float v4, v10

    div-float/2addr v3, v4

    sub-float v3, v16, v3

    .line 743
    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    move-object/from16 v5, v31

    iget v6, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float v12, v19, v6

    mul-float v12, v12, v3

    add-float/2addr v4, v12

    .line 745
    iget-object v6, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v6, v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v7, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float v9, v17, v7

    mul-float v9, v9, v3

    add-float/2addr v6, v9

    .line 747
    iget-object v7, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    new-instance v8, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-direct {v8, v4, v6}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v7, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 748
    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    const/4 v6, 0x1

    add-int/2addr v1, v6

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 749
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v4, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    sub-float v12, v19, v4

    mul-float v12, v12, v3

    add-float/2addr v1, v12

    .line 751
    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget v6, v5, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    sub-float v9, v17, v6

    mul-float v3, v3, v9

    add-float/2addr v4, v3

    .line 753
    iget-object v3, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    new-instance v6, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-direct {v6, v1, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v3, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 754
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_32a

    .line 757
    :cond_3c3
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-direct {v13, v15, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->smoothList(ILjava/util/List;)V

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 761
    iget v3, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    .line 762
    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 763
    iget-object v4, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    cmpl-float v6, v6, v3

    if-lez v6, :cond_3ed

    int-to-float v3, v5

    .line 766
    :cond_3ed
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    cmpg-float v6, v6, v3

    if-gez v6, :cond_3f5

    int-to-float v3, v5

    .line 769
    :cond_3f5
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3fd

    int-to-float v2, v5

    .line 772
    :cond_3fd
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v4

    cmpg-float v5, v5, v2

    if-gez v5, :cond_405

    int-to-float v2, v4

    .line 775
    :cond_405
    new-instance v4, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    invoke-direct {v4, v3, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d3

    .line 778
    :cond_40e
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 779
    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 781
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 782
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x0

    .line 783
    :goto_442
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_466

    .line 784
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    iget-object v1, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v2, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->tempList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_442

    .line 786
    :cond_466
    iget-object v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, v13, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->isRealChange:Z

    :cond_46e
    :goto_46e
    return-void
.end method

.method removeIntersects()V
    .registers 7

    .line 892
    :try_start_0
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 893
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftTop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 894
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftTop:Z

    .line 895
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v3, v5, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 897
    :cond_2c
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightTop:Z

    if-eqz v0, :cond_48

    .line 898
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightTop:Z

    .line 899
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v3, v5, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 901
    :cond_48
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftBottom:Z

    if-eqz v0, :cond_64

    .line 902
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverLeftBottom:Z

    .line 903
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v3, v5, v4}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 905
    :cond_64
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightBottom:Z

    if-eqz v0, :cond_80

    .line 906
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->coverRightBottom:Z

    .line 907
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->startRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_80
    const/4 v0, -0x1

    .line 909
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->lastIntersectPoint:I

    .line 910
    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->firstIntersectPoint:I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8a
    return-void
.end method

.method undo()V
    .registers 6

    .line 1252
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6e

    iget v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    if-ltz v0, :cond_6e

    .line 1253
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;

    .line 1254
    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    :goto_16
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1256
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    .line 1258
    :cond_26
    iget v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoIndex:I

    .line 1259
    iget-object v1, v0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;->currentTouchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 1260
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1261
    iget-object v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;->currentPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    .line 1262
    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    new-instance v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v4, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    invoke-direct {v3, v4, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 1264
    :cond_56
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_81

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawLine(Z)V

    .line 1266
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    sget-object v1, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->editPath:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    if-ne v0, v1, :cond_81

    .line 1267
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_81

    .line 1271
    :cond_6e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1272
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1273
    sget-object v0, Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;->none:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->touchState:Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;

    .line 1274
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->drawPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1276
    :cond_81
    :goto_81
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->this$0:Lcn/codemao/android/sketch/view/CutOutImageView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/CutOutImageView;->access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    .line 1277
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->checkCanUndo()V

    return-void
.end method

.method upDateMaxDistanceOnPan()V
    .registers 6

    .line 834
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    const/4 v1, 0x0

    .line 835
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v1, v1, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    .line 836
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v2, v2, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dx:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;

    iget v3, v3, Lcn/codemao/android/sketch/view/CutOutImageView$Offset;->dy:F

    .line 834
    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->getDistanceFromPointToPoint(FFFF)D

    move-result-wide v0

    .line 837
    iget-wide v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maxDistanceWhenDrawDashPath:D

    cmpg-double v4, v2, v0

    if-gez v4, :cond_41

    .line 838
    iput-wide v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->maxDistanceWhenDrawDashPath:D

    :cond_41
    return-void
.end method
