.class public final Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;
.super Landroid/view/View;
.source "ManualCutOutView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManualCutOutView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualCutOutView.kt\ncom/codemao/toolssdk/image_selector/widget/ManualCutOutView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,456:1\n1860#2,2:457\n1860#2,3:459\n1862#2:462\n*S KotlinDebug\n*F\n+ 1 ManualCutOutView.kt\ncom/codemao/toolssdk/image_selector/widget/ManualCutOutView\n*L\n129#1:457,2\n138#1:459,3\n129#1:462\n*E\n"
.end annotation


# instance fields
.field private final bitmapPaintColor:I

.field private bitmapReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canDraw:Z

.field private final clearXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

.field private currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

.field private currentHistoryIndex:I

.field private currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

.field private currentStrokeWidth:F

.field private drawHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/widget/DrawStep;",
            ">;"
        }
    .end annotation
.end field

.field private final dstBitmapRect:Landroid/graphics/Rect;

.field private generateBitmapCallback:Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;

.field private imageHeight:F

.field private final imagePaint:Landroid/graphics/Paint;

.field private imageWidth:F

.field private offsetX:F

.field private offsetY:F

.field private operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final penColor:I

.field private preCenterX:I

.field private preCenterY:I

.field private preDistance:F

.field private final preDstBitmapRect:Landroid/graphics/Rect;

.field private preEventX:F

.field private preEventY:F

.field private preOffsetX:F

.field private preOffsetY:F

.field private preTouchId:I

.field private reboundValueAnimator:Landroid/animation/ValueAnimator;

.field private scale:F

.field private showCutoutPreview:Z

.field private final srcBitmapRect:Landroid/graphics/Rect;

.field private final srcInXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private final srcXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private final startDstBitmapRect:Landroid/graphics/Rect;

.field private startPoint:Landroid/graphics/Point;

.field private final touchSlop:I


# direct methods
.method public static synthetic $r8$lambda$0CAwQ6EcJub_ISAeOEuzvGO58Jc(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundDstBitmapRectAnimate$lambda$2(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1FNTZaOYRgNjrMs4nR9ZkFsusfI(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->initBitmap$lambda$4(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cELAi4gOCch2803LqPy8fm9X8Dw(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->setBitmap$lambda$3(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imagePaint:Landroid/graphics/Paint;

    const-string p2, "#B36958F6"

    .line 31
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->penColor:I

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    .line 35
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 36
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcInXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 37
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    .line 40
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcBitmapRect:Landroid/graphics/Rect;

    .line 47
    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    .line 48
    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 49
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startPoint:Landroid/graphics/Point;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 55
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    const-string v1, "#FF191A2A"

    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapPaintColor:I

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->canDraw:Z

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imagePaint:Landroid/graphics/Paint;

    const-string p2, "#B36958F6"

    .line 31
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->penColor:I

    .line 32
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 36
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcInXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 37
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcBitmapRect:Landroid/graphics/Rect;

    .line 47
    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    .line 48
    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startPoint:Landroid/graphics/Point;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 55
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    const-string v0, "#FF191A2A"

    .line 60
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapPaintColor:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->canDraw:Z

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 87
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static final synthetic access$getDstBitmapRect$p(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;)Landroid/graphics/Rect;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private final addDrawItem(Lcom/codemao/toolssdk/image_selector/widget/DrawStep;)V
    .registers 5

    .line 325
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_b

    .line 326
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_22

    .line 327
    :cond_b
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_22

    .line 328
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 329
    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    .line 331
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    return-void
.end method

.method private final distance(FF)F
    .registers 3

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 335
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private final drawMaskPath(Landroid/graphics/Canvas;)V
    .registers 12

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 129
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    .line 1861
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_28

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_28
    check-cast v4, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    .line 130
    iget v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    if-gt v3, v6, :cond_ce

    .line 131
    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getType()Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    move-result-object v3

    sget-object v6, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->PEN:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    if-ne v3, v6, :cond_49

    .line 132
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getStrokeWidth()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_63

    .line 134
    :cond_49
    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getType()Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    move-result-object v3

    sget-object v6, Lcom/codemao/toolssdk/image_selector/widget/DrawType;->ERASER:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    if-ne v3, v6, :cond_63

    .line 135
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getStrokeWidth()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    :cond_63
    :goto_63
    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getPointList()Ljava/util/List;

    move-result-object v3

    .line 1861
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_7d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7d
    check-cast v6, Landroid/graphics/Point;

    if-nez v4, :cond_a6

    .line 140
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 141
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    .line 142
    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float v8, v8, v0

    iget-object v9, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 143
    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    iget-object v9, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 141
    invoke-virtual {v4, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_c5

    .line 146
    :cond_a6
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    .line 147
    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float v8, v8, v0

    iget-object v9, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 148
    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v0

    iget-object v9, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 146
    invoke-virtual {v4, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c5
    move v4, v7

    goto :goto_6c

    .line 152
    :cond_c7
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_ce
    move v3, v5

    goto/16 :goto_17

    :cond_d1
    return-void
.end method

.method private final getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapReference:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_16

    .line 342
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->generateBitmapCallback:Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;->onGenerateBitmap()V

    .line 344
    :cond_16
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    :cond_21
    return-object v1
.end method

.method private static synthetic getTAG$annotations()V
    .registers 0

    return-void
.end method

.method private static final initBitmap$lambda$4(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 357
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageWidth:F

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageHeight:F

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ef0a3d7  # 0.47f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f451eb8  # 0.77f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageWidth:F

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageHeight:F

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageWidth:F

    sub-float/2addr p1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageHeight:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    .line 366
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imageWidth:F

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 367
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final reboundDstBitmapRectAnimate()V
    .registers 7

    .line 267
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 268
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 269
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    if-ge v2, v3, :cond_2f

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 271
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4d

    .line 273
    :cond_2f
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_3a

    rsub-int/lit8 v2, v3, 0x0

    .line 274
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_4d

    .line 275
    :cond_3a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 279
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 281
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_8e

    .line 283
    :cond_70
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_7b

    rsub-int/lit8 v2, v3, 0x0

    .line 284
    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_8e

    .line 285
    :cond_7b
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 289
    :cond_8e
    :goto_8e
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 290
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_9c

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9c
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 291
    fill-array-data v3, :array_d0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_ab

    goto :goto_b0

    :cond_ab
    const-wide/16 v4, 0xc8

    .line 292
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    :goto_b0
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_bc

    new-instance v4, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    :cond_bc
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_c8

    new-instance v4, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$reboundDstBitmapRectAnimate$2;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    :cond_c8
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_cf

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_cf
    return-void

    :array_d0
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final reboundDstBitmapRectAnimate$lambda$2(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Rect;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$preDstBitmapRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$offsetX"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$offsetY"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    .line 295
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 297
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p2, p2

    mul-float p2, p2, p4

    float-to-int p2, p2

    iget p3, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p3, p3

    mul-float p4, p4, p3

    float-to-int p3, p4

    .line 296
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final setBitmap$lambda$3(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final cutOutBitmap()Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    .line 407
    :try_start_1
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 409
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 410
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 412
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-object v2, v8

    .line 411
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    .line 414
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapPaintColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    invoke-direct {p0, v8}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawMaskPath(Landroid/graphics/Canvas;)V

    .line 416
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcInXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 417
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 418
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 420
    :cond_5a
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 421
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 423
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_76} :catch_77

    return-object v0

    :catch_77
    move-exception v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final getCanDraw()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->canDraw:Z

    return v0
.end method

.method public final getGenerateBitmapCallback()Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->generateBitmapCallback:Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;

    return-object v0
.end method

.method public final getOperateListener()Lcom/codemao/toolssdk/image_selector/widget/OperateListener;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    return-object v0
.end method

.method public final getShowCutoutPreview()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->showCutoutPreview:Z

    return v0
.end method

.method public final initBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->showCutoutPreview:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 95
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    .line 96
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    .line 97
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    .line 98
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object v3, p1

    .line 94
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 101
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->bitmapPaintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawMaskPath(Landroid/graphics/Canvas;)V

    .line 103
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->srcInXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 105
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    :cond_46
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_93

    .line 110
    :cond_4f
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5d

    const/4 v2, 0x1

    :cond_5d
    if-eqz v2, :cond_6d

    .line 111
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    :cond_6d
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    .line 115
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    .line 116
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    .line 117
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    const/4 v8, 0x0

    move-object v3, p1

    .line 113
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->penColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawMaskPath(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_227

    if-eq v0, v1, :cond_222

    const/4 v3, 0x2

    if-eq v0, v3, :cond_85

    const/4 v4, 0x3

    if-eq v0, v4, :cond_222

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1c

    goto/16 :goto_2bf

    .line 179
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_2bf

    .line 180
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetX:F

    .line 181
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetY:F

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {p0, v0, v4}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->distance(FF)F

    move-result v0

    .line 182
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDistance:F

    .line 185
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterX:I

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    float-to-int p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterY:I

    .line 187
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startPoint:Landroid/graphics/Point;

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterX:I

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    .line 189
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetX:F

    float-to-int v0, v0

    neg-int v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetY:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 191
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterX:I

    neg-int v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterY:I

    neg-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2bf

    .line 195
    :cond_85
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preTouchId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v0, v4, :cond_122

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_122

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    sget-object v4, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    if-ne v0, v4, :cond_122

    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->canDraw:Z

    if-eqz v0, :cond_122

    .line 196
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    int-to-float v0, v0

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preEventX:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preEventY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_21d

    .line 200
    iput-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 201
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 202
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->addDrawItem(Lcom/codemao/toolssdk/image_selector/widget/DrawStep;)V

    .line 203
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_d9

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canUndo(Z)V

    .line 204
    :cond_d9
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_e0

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canReverse(Z)V

    .line 206
    :cond_e0
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    if-eqz v0, :cond_21d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getPointList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21d

    .line 207
    new-instance v2, Landroid/graphics/Point;

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getScale()F

    move-result v4

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 207
    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21d

    .line 213
    :cond_122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v3, :cond_21d

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 215
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 216
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startPoint:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v5

    .line 217
    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 219
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v5, p1

    invoke-direct {p0, v4, v5}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->distance(FF)F

    move-result p1

    .line 220
    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetX:F

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    .line 221
    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetY:F

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    const/high16 v2, 0x3f800000  # 1.0f

    .line 222
    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    .line 223
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    sget-object v5, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    if-ne v4, v5, :cond_196

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    if-gt v4, v6, :cond_192

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    if-le v4, v6, :cond_180

    goto :goto_192

    .line 226
    :cond_180
    iget v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDistance:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->touchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_194

    .line 227
    sget-object v5, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    goto :goto_194

    .line 225
    :cond_192
    :goto_192
    sget-object v5, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 224
    :cond_194
    :goto_194
    iput-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 234
    :cond_196
    iget v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetX:F

    int-to-float v0, v0

    add-float/2addr v4, v0

    iput v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    .line 235
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preOffsetY:F

    int-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    .line 237
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDistance:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    .line 238
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float v3, v3, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr v3, v0

    .line 239
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    cmpg-float p1, v3, v2

    if-gtz p1, :cond_1d2

    .line 241
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    goto :goto_1eb

    :cond_1d2
    const/high16 p1, 0x40000000  # 2.0f

    cmpl-float v0, v3, p1

    if-ltz v0, :cond_1eb

    .line 243
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    .line 246
    :cond_1eb
    :goto_1eb
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetX:F

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->scale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 247
    iget v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->offsetY:F

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    mul-float v5, v5, v3

    float-to-int v5, v5

    .line 248
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr p1, v6

    mul-float p1, p1, v3

    float-to-int p1, p1

    .line 249
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v4, v0

    mul-float v4, v4, v3

    float-to-int v0, v4

    .line 250
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v5, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterX:I

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preCenterY:I

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 253
    :cond_21d
    :goto_21d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2bf

    .line 258
    :cond_222
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundDstBitmapRectAnimate()V

    goto/16 :goto_2bf

    .line 160
    :cond_227
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_22e

    invoke-interface {v0}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->dismissPaintRangeWindow()V

    .line 161
    :cond_22e
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->reboundValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_235

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 162
    :cond_235
    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/GestureType;->NONE:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentGestureType:Lcom/codemao/toolssdk/image_selector/widget/GestureType;

    .line 163
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-direct {v0}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    .line 164
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->setType(Lcom/codemao/toolssdk/image_selector/widget/DrawType;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    if-nez v0, :cond_251

    goto :goto_256

    :cond_251
    iget v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStrokeWidth:F

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->setStrokeWidth(F)V

    .line 167
    :goto_256
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    if-nez v0, :cond_25b

    goto :goto_26d

    :cond_25b
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->setScale(F)V

    .line 168
    :goto_26d
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    if-eqz v0, :cond_2ad

    invoke-virtual {v0}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getPointList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2ad

    .line 169
    new-instance v3, Landroid/graphics/Point;

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getScale()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStep:Lcom/codemao/toolssdk/image_selector/widget/DrawStep;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/codemao/toolssdk/image_selector/widget/DrawStep;->getScale()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 169
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 168
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2ad
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preTouchId:I

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preEventX:F

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->preEventY:F

    :cond_2bf
    :goto_2bf
    return v1
.end method

.method public final reverse()V
    .registers 4

    .line 382
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    .line 383
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_20

    .line 384
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    .line 385
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_20

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canReverse(Z)V

    .line 387
    :cond_20
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    if-ltz v0, :cond_2b

    .line 388
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canUndo(Z)V

    .line 390
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setCanDraw(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->canDraw:Z

    return-void
.end method

.method public final setCurrentDrawType(Lcom/codemao/toolssdk/image_selector/widget/DrawType;)V
    .registers 3

    const-string v0, "drawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/DrawType;

    return-void
.end method

.method public final setGenerateBitmapCallback(Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->generateBitmapCallback:Lcom/codemao/toolssdk/image_selector/widget/GenerateBitmapCallback;

    return-void
.end method

.method public final setOperateListener(Lcom/codemao/toolssdk/image_selector/widget/OperateListener;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    return-void
.end method

.method public final setShowCutoutPreview(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->showCutoutPreview:Z

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .registers 3

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentStrokeWidth:F

    return-void
.end method

.method public final undo()V
    .registers 4

    .line 394
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    if-gt v0, v1, :cond_12

    .line 396
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    .line 397
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canUndo(Z)V

    .line 399
    :cond_12
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->currentHistoryIndex:I

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->drawHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_25

    .line 400
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ManualCutOutView;->operateListener:Lcom/codemao/toolssdk/image_selector/widget/OperateListener;

    if-eqz v0, :cond_25

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/image_selector/widget/OperateListener;->canReverse(Z)V

    .line 402
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
