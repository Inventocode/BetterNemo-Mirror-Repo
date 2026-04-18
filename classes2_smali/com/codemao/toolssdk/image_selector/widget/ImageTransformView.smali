.class public final Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;
.super Landroid/view/View;
.source "ImageTransformView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageTransformView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageTransformView.kt\ncom/codemao/toolssdk/image_selector/widget/ImageTransformView\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,513:1\n337#2:514\n344#2,3:515\n337#2:518\n344#2,3:519\n*S KotlinDebug\n*F\n+ 1 ImageTransformView.kt\ncom/codemao/toolssdk/image_selector/widget/ImageTransformView\n*L\n396#1:514\n398#1:515,3\n423#1:518\n425#1:519,3\n*E\n"
.end annotation


# instance fields
.field private final bgColor:I

.field private bitmapReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

.field private final dp1:F

.field private final dstBitmapRect:Landroid/graphics/Rect;

.field private imageHeight:F

.field private final imagePaint:Landroid/graphics/Paint;

.field private imagePath:Ljava/lang/String;

.field private imageWidth:F

.field private isLandscape:Z

.field private isPoorMemory:Z

.field private offsetX:F

.field private offsetY:F

.field private final paint:Landroid/graphics/Paint;

.field private preDistance:F

.field private final preDstBitmapRect:Landroid/graphics/Rect;

.field private preOffsetX:F

.field private preOffsetY:F

.field private final radio:F

.field private scale:F

.field private final srcBitmapRect:Landroid/graphics/Rect;

.field private final srcXFerMode:Landroid/graphics/PorterDuffXfermode;

.field private final stagePreviewRect:Landroid/graphics/Rect;

.field private final startDstBitmapRect:Landroid/graphics/Rect;

.field private startPoint:Landroid/graphics/Point;


# direct methods
.method public static synthetic $r8$lambda$C1AW23vsVlAYL4MljD8RLVYIvIU(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformVertical$lambda$2(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYG7eBO6bM7j3efxYt-CxG066GU(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformHorizontal$lambda$4(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqF-p9ZUdzgOmuVdZsmdeSfaZeU(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap$lambda$0(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t2Rw0Qr0o6sfVDq0aOzFX_CfL_s(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->transformRotate$lambda$6(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePaint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    const-string p1, "#80000000"

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bgColor:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dp1:F

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 31
    sget-object p1, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    .line 32
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startPoint:Landroid/graphics/Point;

    .line 38
    iput p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcBitmapRect:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    const p1, 0x3f1fdb97

    .line 46
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->radio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePaint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    const-string p1, "#80000000"

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bgColor:I

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dp1:F

    .line 29
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 31
    sget-object p1, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    .line 32
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startPoint:Landroid/graphics/Point;

    .line 38
    iput p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcBitmapRect:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    const p1, 0x3f1fdb97

    .line 46
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->radio:F

    return-void
.end method

.method private final checkScaleRange()V
    .registers 10

    .line 228
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_80

    .line 230
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 232
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 233
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    neg-int v2, v2

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 236
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 237
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 238
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 239
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 240
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 243
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 244
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 245
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 246
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 247
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    move-object v3, p0

    .line 242
    invoke-direct/range {v3 .. v8}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->rangeDstBitmapRect(Landroid/graphics/Rect;IIII)V

    :cond_80
    return-void
.end method

.method private final distance(FF)F
    .registers 3

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private final generateNewImageByNewHeight(ILandroid/graphics/Bitmap;F)V
    .registers 13

    .line 340
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x800

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 342
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 343
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move-object v6, v8

    .line 345
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float p1, p1

    sub-float p3, p1, p3

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p3, v1

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v7, p2, v1, p3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 350
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    const/high16 p1, 0x45000000  # 2048.0f

    .line 352
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    return-void
.end method

.method private final generateNewImageByNewWidth(ILandroid/graphics/Bitmap;F)V
    .registers 13

    .line 360
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x800

    invoke-static {p1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 362
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 363
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    move-object v6, v8

    .line 365
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float p1, p1

    sub-float p3, p1, p3

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p3, v1

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v7, p2, p3, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 369
    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 370
    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    const/high16 p1, 0x45000000  # 2048.0f

    .line 372
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    return-void
.end method

.method private final getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 497
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isPoorMemory:Z

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 502
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 505
    :cond_25
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    :cond_30
    return-object v1
.end method

.method private final getRadio()F
    .registers 3

    .line 375
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->radio:F

    div-float/2addr v0, v1

    goto :goto_c

    :cond_a
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->radio:F

    :goto_c
    return v0
.end method

.method private final isMoveType()Z
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private final isScaleType()Z
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    sget-object v1, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private final rangeDstBitmapRect(Landroid/graphics/Rect;IIII)V
    .registers 8

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-lt p2, v1, :cond_e

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int p3, v1, p2

    move p2, v1

    goto :goto_19

    .line 209
    :cond_e
    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gt p3, v0, :cond_19

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int p2, v0, p2

    move p3, v0

    .line 213
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-lt p4, v1, :cond_27

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int p5, v1, p1

    move p4, v1

    goto :goto_32

    .line 216
    :cond_27
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p5, v0, :cond_32

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int p4, v0, p1

    move p5, v0

    .line 220
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static synthetic setBitmap$default(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 252
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private static final setBitmap$lambda$0(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 255
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a  # 0.6f

    goto :goto_33

    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000  # 0.25f

    :goto_33
    mul-float v0, v0, v1

    .line 257
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getRadio()F

    move-result v1

    div-float v1, v0, v1

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    div-float/2addr v5, v4

    .line 260
    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    float-to-int v7, v2

    float-to-int v8, v5

    add-float/2addr v2, v0

    float-to-int v2, v2

    add-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v6, v7, v8, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    if-nez p2, :cond_a8

    .line 271
    iget v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    const/16 v6, 0x232

    const/16 v7, 0x384

    const v8, 0x440c8000  # 562.0f

    const/high16 v9, 0x44610000  # 900.0f

    const/high16 v10, 0x45000000  # 2048.0f

    cmpl-float v11, v5, v10

    if-ltz v11, :cond_8e

    div-float/2addr v10, v5

    mul-float v2, v2, v10

    .line 274
    iget-boolean v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    if-eqz v5, :cond_86

    cmpg-float v5, v2, v8

    if-gez v5, :cond_a8

    .line 277
    invoke-direct {p0, v6, p1, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->generateNewImageByNewHeight(ILandroid/graphics/Bitmap;F)V

    goto :goto_a8

    :cond_86
    cmpg-float v5, v2, v9

    if-gez v5, :cond_a8

    .line 282
    invoke-direct {p0, v7, p1, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->generateNewImageByNewHeight(ILandroid/graphics/Bitmap;F)V

    goto :goto_a8

    :cond_8e
    cmpl-float v11, v2, v10

    if-ltz v11, :cond_a8

    div-float/2addr v10, v2

    mul-float v5, v5, v10

    .line 289
    iget-boolean v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    if-eqz v2, :cond_a1

    cmpg-float v2, v5, v9

    if-gez v2, :cond_a8

    .line 292
    invoke-direct {p0, v7, p1, v5}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->generateNewImageByNewWidth(ILandroid/graphics/Bitmap;F)V

    goto :goto_a8

    :cond_a1
    cmpg-float v2, v5, v8

    if-gez v2, :cond_a8

    .line 297
    invoke-direct {p0, v6, p1, v5}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->generateNewImageByNewWidth(ILandroid/graphics/Bitmap;F)V

    .line 303
    :cond_a8
    :goto_a8
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    div-float/2addr p1, v2

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getRadio()F

    move-result v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_c2

    .line 304
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    div-float p1, v0, p1

    .line 305
    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    mul-float v1, v1, p1

    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    .line 306
    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    goto :goto_db

    .line 307
    :cond_c2
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    div-float/2addr p1, v0

    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getRadio()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_db

    .line 308
    iget p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    div-float p1, v1, p1

    .line 309
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    .line 310
    iput v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    .line 313
    :cond_db
    :goto_db
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    float-to-int v1, v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_fa

    .line 317
    iget-object v6, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 318
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 319
    iget v8, v6, Landroid/graphics/Rect;->right:I

    .line 320
    iget v9, v6, Landroid/graphics/Rect;->top:I

    .line 321
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    move-object v5, p0

    .line 316
    invoke-direct/range {v5 .. v10}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->rangeDstBitmapRect(Landroid/graphics/Rect;IIII)V

    .line 323
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->checkScaleRange()V

    goto :goto_122

    .line 325
    :cond_fa
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    sub-float/2addr p1, p2

    div-float/2addr p1, v4

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetX:F

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    sub-float/2addr p1, p2

    div-float/2addr p1, v4

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetY:F

    .line 328
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetX:F

    float-to-int p2, p2

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetY:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 331
    :goto_122
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static final transformHorizontal$lambda$4(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 407
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 408
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 409
    invoke-static {v0, v3, v4, v1, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->flipImage(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isPoorMemory:Z

    if-eqz v1, :cond_28

    .line 413
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 415
    :cond_28
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 416
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    .line 420
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    .line 421
    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 417
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 423
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 337
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 425
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 344
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 345
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 425
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v4}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_71
    return-void
.end method

.method private static final transformRotate$lambda$6(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 434
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 435
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x5a

    .line 436
    invoke-static {v0, v3, v1, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->rotateImage(Landroid/graphics/Bitmap;IFF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isPoorMemory:Z

    if-eqz v1, :cond_28

    .line 440
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 442
    :cond_28
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 443
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_3f
    return-void
.end method

.method private static final transformVertical$lambda$2(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 380
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 381
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 382
    invoke-static {v0, v4, v3, v1, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->flipImage(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isPoorMemory:Z

    if-eqz v1, :cond_28

    .line 386
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 388
    :cond_28
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    .line 389
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, -0x40800000  # -1.0f

    .line 393
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    .line 394
    iget-object v5, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 390
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 396
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 337
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 397
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 398
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 344
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 345
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v4}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_71
    return-void
.end method


# virtual methods
.method public final computeOffset()Landroid/graphics/PointF;
    .registers 6

    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    const/high16 v2, 0x44610000  # 900.0f

    const v3, 0x440c8000  # 562.0f

    if-eqz v1, :cond_10

    const/high16 v1, 0x44610000  # 900.0f

    goto :goto_13

    :cond_10
    const v1, 0x440c8000  # 562.0f

    :goto_13
    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageWidth:F

    div-float/2addr v0, v1

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    if-eqz v4, :cond_25

    const v2, 0x440c8000  # 562.0f

    :cond_25
    invoke-static {v1, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v1

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imageHeight:F

    div-float/2addr v1, v2

    .line 472
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    .line 473
    invoke-static {v1, v2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result v1

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    .line 476
    invoke-static {v2, v3}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    .line 479
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public final computeScale()F
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getBitmapReference()Ljava/lang/ref/SoftReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public final getFinalBitmap()Landroid/graphics/Bitmap;
    .registers 6

    .line 449
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 451
    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    const/high16 v2, 0x44610000  # 900.0f

    const v3, 0x440c8000  # 562.0f

    if-eqz v1, :cond_20

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 453
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 454
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_30

    .line 456
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 457
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 458
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 460
    :goto_30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->computeScale()F

    move-result v2

    .line 461
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    mul-float v3, v3, v2

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    mul-float v4, v4, v2

    float-to-int v1, v3

    float-to-int v2, v4

    .line 463
    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 60
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    :cond_20
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 68
    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bgColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 69
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->srcXFerMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 70
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dp1:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_1cf

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_68

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2a

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1a

    goto/16 :goto_20a

    .line 185
    :cond_1a
    iget-object v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    .line 186
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 187
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 188
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 189
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    .line 184
    invoke-direct/range {v2 .. v7}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->rangeDstBitmapRect(Landroid/graphics/Rect;IIII)V

    goto/16 :goto_20a

    .line 103
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_20a

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    invoke-direct {p0, v0, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->distance(FF)F

    move-result p1

    .line 104
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDistance:F

    .line 107
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    neg-int v0, v0

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    neg-int v2, v2

    .line 108
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 111
    sget-object p1, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    goto/16 :goto_20a

    .line 115
    :cond_68
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isMoveType()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 119
    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetX:F

    .line 120
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetY:F

    .line 122
    iget-object v4, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    .line 123
    iget p1, v4, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    float-to-int v5, p1

    .line 124
    iget p1, v4, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int v7, p1

    .line 125
    iget p1, v4, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    float-to-int v6, v2

    .line 126
    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int v8, v0

    move-object v3, p0

    .line 127
    invoke-direct/range {v3 .. v8}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->rangeDstBitmapRect(Landroid/graphics/Rect;IIII)V

    goto/16 :goto_1cb

    .line 129
    :cond_a8
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isScaleType()Z

    move-result v0

    if-eqz v0, :cond_1cb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v2, :cond_1cb

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v2, p1

    .line 130
    invoke-direct {p0, v0, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->distance(FF)F

    move-result p1

    .line 132
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDistance:F

    div-float/2addr p1, v0

    .line 130
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 135
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    const v2, 0x4011a2b4

    const v3, 0x40693965

    if-eqz v0, :cond_12a

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float v4, v4, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr v4, v0

    .line 137
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    cmpl-float v0, v4, p1

    if-ltz v0, :cond_fd

    .line 139
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 143
    :cond_fd
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    mul-float v0, v0, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    sub-float/2addr v0, p1

    .line 144
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_17a

    .line 146
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 147
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_17a

    .line 148
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    goto :goto_17a

    .line 152
    :cond_12a
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float v4, v4, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr v4, v0

    .line 153
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    cmpl-float v0, v4, p1

    if-ltz v0, :cond_14e

    .line 155
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 159
    :cond_14e
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    mul-float v0, v0, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float p1, p1, v3

    sub-float/2addr v0, p1

    .line 160
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_17a

    .line 162
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 163
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_17a

    .line 164
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 169
    :cond_17a
    :goto_17a
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v4, p1

    const/high16 p1, 0x3f800000  # 1.0f

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_199

    .line 171
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    .line 174
    :cond_199
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->scale:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 175
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 176
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 177
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 178
    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->stagePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 181
    :cond_1cb
    :goto_1cb
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_20a

    .line 90
    :cond_1cf
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    sget-object v2, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->SCALE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    if-ne v0, v2, :cond_1d9

    .line 91
    sget-object v0, Lcom/codemao/toolssdk/image_selector/widget/TouchType;->MOVE:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    iput-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->currentDrawType:Lcom/codemao/toolssdk/image_selector/widget/TouchType;

    .line 94
    :cond_1d9
    invoke-direct {p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isMoveType()Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 95
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetX:F

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetX:F

    .line 96
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->offsetY:F

    iput v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetY:F

    .line 97
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->startPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    .line 98
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->dstBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    iget-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preDstBitmapRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetX:F

    float-to-int v0, v0

    neg-int v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->preOffsetY:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_20a
    :goto_20a
    return v1
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setBitmapReference(Ljava/lang/ref/SoftReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->bitmapReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public final setImagePath(Ljava/lang/String;)V
    .registers 5

    .line 488
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->imagePath:Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 491
    invoke-static {p0, p1, v0, v1, v2}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->setBitmap$default(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/graphics/Bitmap;ZILjava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public final setLandscape(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;->isLandscape:Z

    return-void
.end method

.method public final transformHorizontal()V
    .registers 2

    .line 405
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final transformRotate()V
    .registers 2

    .line 432
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final transformVertical()V
    .registers 2

    .line 378
    new-instance v0, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method
