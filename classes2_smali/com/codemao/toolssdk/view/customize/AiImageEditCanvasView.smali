.class public final Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;
.super Landroid/view/View;
.source "AiImageEditCanvasView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;,
        Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAiImageEditCanvasView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AiImageEditCanvasView.kt\ncom/codemao/toolssdk/view/customize/AiImageEditCanvasView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1851#2:249\n1860#2,3:250\n1852#2:253\n*S KotlinDebug\n*F\n+ 1 AiImageEditCanvasView.kt\ncom/codemao/toolssdk/view/customize/AiImageEditCanvasView\n*L\n76#1:249\n85#1:250,3\n76#1:253\n*E\n"
.end annotation


# instance fields
.field private final clearXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private coverBitmap:Landroid/graphics/Bitmap;

.field private currentDrawType:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

.field private currentPenColor:I

.field private currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

.field private drawHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;",
            ">;"
        }
    .end annotation
.end field

.field private final dstBitmapRect:Landroid/graphics/Rect;

.field private eraserStrokeWidth:F

.field private final imagePaint:Landroid/graphics/Paint;

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private penColor:I

.field private penStrokeWidth:F

.field private preEventX:F

.field private preEventY:F

.field private preTouchId:I

.field private final srcBitmapRect:Landroid/graphics/Rect;

.field private final srcXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private final touchSlop:I


# direct methods
.method public static synthetic $r8$lambda$NZneaiDDzWHsIedigay_dfIfpyo(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setBitmap$lambda$3(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$STvUzWd5IO5chHR_wS71sg0mPr8(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->clearDraw$lambda$2(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->touchSlop:I

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x7

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    const-string p2, "#B36958F6"

    .line 30
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penColor:I

    .line 31
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentPenColor:I

    .line 39
    sget-object v0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentDrawType:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    .line 43
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 44
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 53
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->touchSlop:I

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    const-string p2, "#B36958F6"

    .line 30
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penColor:I

    .line 31
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    .line 32
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    .line 35
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 36
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 38
    iput p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentPenColor:I

    .line 39
    sget-object p3, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentDrawType:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    .line 43
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 44
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    .line 53
    iget p3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, 0x1

    .line 55
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p3, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final addDrawItem(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final clearDraw$lambda$2(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final drawMaskPath(Landroid/graphics/Canvas;)V
    .registers 9

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    .line 77
    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getType()Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    move-result-object v2

    sget-object v3, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->PEN:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    if-ne v2, v3, :cond_32

    .line 78
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getPenColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_48

    .line 81
    :cond_32
    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getType()Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    move-result-object v2

    sget-object v3, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;->ERASER:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    if-ne v2, v3, :cond_48

    .line 82
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->eraserStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->clearXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    :cond_48
    :goto_48
    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getPointList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 1861
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_62

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_62
    check-cast v3, Landroid/graphics/Point;

    if-nez v2, :cond_87

    .line 87
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    .line 89
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 90
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 88
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_a2

    .line 93
    :cond_87
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    .line 94
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 95
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 93
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_a2
    move v2, v4

    goto :goto_51

    .line 99
    :cond_a4
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 101
    :cond_ad
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private static final setBitmap$lambda$3(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$maskBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$coverBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->maskBitmap:Landroid/graphics/Bitmap;

    .line 164
    iput-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->coverBitmap:Landroid/graphics/Bitmap;

    .line 165
    iget-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpg-float p1, p2, v0

    if-gez p1, :cond_55

    .line 169
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 172
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 173
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 169
    invoke-virtual {p1, v2, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6e

    .line 176
    :cond_55
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 179
    iget-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 180
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 176
    invoke-virtual {p1, v2, v2, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    :goto_6e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42000000  # 32.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42200000  # 40.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43bf0000  # 382.0f

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    int-to-float p1, p1

    mul-float v1, v1, p1

    iput v1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->penStrokeWidth:F

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->eraserStrokeWidth:F

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 191
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public final clearDraw()V
    .registers 2

    .line 155
    new-instance v0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final generateNewBitmap()Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    .line 200
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->coverBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_22

    .line 205
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_22
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    .line 208
    invoke-direct {p0, v8}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawMaskPath(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_48

    .line 211
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 213
    :cond_48
    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 215
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v2, v3

    .line 219
    :goto_6c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 217
    invoke-static {v1, v3, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_81

    return-object v0

    :catch_81
    move-exception v1

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->coverBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_17
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 68
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawMaskPath(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 70
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3d
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

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_85

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    goto/16 :goto_d9

    .line 123
    :cond_14
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preTouchId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v0, v3, :cond_81

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_81

    .line 124
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->touchSlop:I

    int-to-float v0, v0

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preEventX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preEventY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_81

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->drawHistory:Ljava/util/List;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 129
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->addDrawItem(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;)V

    .line 131
    :cond_55
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getPointList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 132
    new-instance v2, Landroid/graphics/Point;

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 132
    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 131
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_d9

    .line 108
    :cond_85
    new-instance v0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    invoke-direct {v0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    .line 109
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentPenColor:I

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->setPenColor(I)V

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    if-nez v0, :cond_96

    goto :goto_9b

    :cond_96
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentDrawType:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->setType(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;)V

    .line 111
    :goto_9b
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentStep:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawStep;->getPointList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 112
    new-instance v3, Landroid/graphics/Point;

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 112
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_c7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preTouchId:I

    .line 118
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preEventX:F

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->preEventY:F

    :goto_d9
    return v1
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    const-string v0, "maskBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setCurrentColor(Ljava/lang/Integer;)V
    .registers 2

    if-eqz p1, :cond_b

    .line 233
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 234
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentPenColor:I

    :cond_b
    return-void
.end method

.method public final setCurrentDrawType(Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;)V
    .registers 3

    const-string v0, "drawType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->currentDrawType:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView$DrawType;

    return-void
.end method
