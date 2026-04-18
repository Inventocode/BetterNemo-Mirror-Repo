.class public Lcn/codemao/android/sketch/view/CutOutImageView;
.super Landroid/view/View;
.source "CutOutImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;,
        Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;,
        Lcn/codemao/android/sketch/view/CutOutImageView$UndoUnitState;,
        Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;,
        Lcn/codemao/android/sketch/view/CutOutImageView$Offset;,
        Lcn/codemao/android/sketch/view/CutOutImageView$DrawPathOrder;,
        Lcn/codemao/android/sketch/view/CutOutImageView$TouchState;
    }
.end annotation


# instance fields
.field private bitmapDstRect:Landroid/graphics/Rect;

.field private bitmapSrcRect:Landroid/graphics/Rect;

.field private bufferBitmap:Landroid/graphics/Bitmap;

.field private bufferCanvas:Landroid/graphics/Canvas;

.field private cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

.field private cutImageCallback:Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

.field isOnPan:Z

.field private final lastBitmapDstRect:Landroid/graphics/Rect;

.field private midPoint:Landroid/graphics/PointF;

.field private mode:I

.field private final paint:Landroid/graphics/Paint;

.field private startDis:F

.field private final startPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/CutOutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->isOnPan:Z

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->paint:Landroid/graphics/Paint;

    .line 63
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->mode:I

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startPoint:Landroid/graphics/PointF;

    .line 97
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/CutOutImageView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;
    .registers 1

    .line 32
    iget-object p0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/CutOutImageView;)Landroid/graphics/Rect;
    .registers 1

    .line 32
    iget-object p0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/CutOutImageView;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/CutOutImageView;->notifyListeners()V

    return-void
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/CutOutImageView;)Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;
    .registers 1

    .line 32
    iget-object p0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutImageCallback:Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    return-object p0
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .registers 6

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private init()V
    .registers 2

    .line 101
    new-instance v0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;-><init>(Lcn/codemao/android/sketch/view/CutOutImageView;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    return-void
.end method

.method private mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .registers 6

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    div-float/2addr v0, v3

    .line 249
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private notifyListeners()V
    .registers 1

    .line 1448
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public clipBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1456
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->clipImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 126
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->draw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    if-nez p1, :cond_54

    .line 112
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 113
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    .line 114
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-double v0, p2

    iput-wide v0, p1, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenHeight:D

    .line 115
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-double v0, p2

    iput-wide v0, p1, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->screenWidth:D

    .line 116
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->init()V

    .line 117
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_54

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bufferCanvas:Landroid/graphics/Canvas;

    :cond_54
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_208

    if-eq v0, v1, :cond_1f6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    const/4 v3, 0x5

    if-eq v0, v3, :cond_16

    const/4 p1, 0x6

    if-eq v0, p1, :cond_202

    goto/16 :goto_23e

    .line 224
    :cond_16
    iput v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->mode:I

    .line 226
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startDis:F

    .line 228
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    goto/16 :goto_23e

    .line 145
    :cond_26
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->isOnPan:Z

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_44

    .line 146
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    new-instance v2, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v2, p0, v3, p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;-><init>(Lcn/codemao/android/sketch/view/CutOutImageView;FF)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->onPanUpdate(Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;)V

    goto/16 :goto_23e

    .line 150
    :cond_44
    iget v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->mode:I

    if-ne v0, v1, :cond_80

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_23e

    .line 155
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v0, v6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p1, v4, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_23e

    :cond_80
    if-ne v0, v2, :cond_23e

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_23e

    .line 164
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 165
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CutOutImageView;->mid(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 166
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    .line 167
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    const/high16 v3, 0x41200000  # 10.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_23e

    .line 170
    iget v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startDis:F

    div-float/2addr v0, v3

    .line 177
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_ce

    .line 178
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 180
    :cond_ce
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000  # 0.5f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_f7

    .line 181
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    :cond_f7
    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_178

    .line 184
    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v3

    mul-float v4, v4, v0

    .line 185
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    .line 186
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float v0, v0, v4

    .line 187
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    mul-float v6, v6, v4

    .line 188
    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v4, v4, v3

    .line 189
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    mul-float v7, v7, v3

    .line 191
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    add-float/2addr v8, v2

    float-to-int v0, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    add-float/2addr v8, p1

    float-to-int v4, v8

    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    add-float/2addr v8, v2

    float-to-int v2, v8

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    add-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {v3, v0, v4, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1f2

    .line 196
    :cond_178
    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v0

    mul-float v4, v4, v3

    .line 197
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 198
    iget-object v3, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    mul-float v3, v3, v4

    .line 199
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v6, v5

    mul-float v6, v6, v4

    .line 200
    iget-object v4, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v4, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v4, v4, v0

    .line 201
    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    mul-float v7, v7, v0

    .line 203
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    add-float/2addr v8, v2

    float-to-int v3, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    add-float/2addr v8, p1

    float-to-int v4, v8

    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v6

    add-float/2addr v8, v2

    float-to-int v2, v8

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v7

    add-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {v0, v3, v4, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    :goto_1f2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_23e

    .line 214
    :cond_1f6
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->isOnPan:Z

    if-eqz p1, :cond_1ff

    .line 215
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->onPanEnd()V

    .line 217
    :cond_1ff
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_202
    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->mode:I

    .line 220
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->isOnPan:Z

    goto :goto_23e

    :cond_208
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->midPoint:Landroid/graphics/PointF;

    .line 138
    iput v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->mode:I

    .line 139
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 140
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->lastBitmapDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    new-instance v2, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v2, p0, v3, p1}, Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;-><init>(Lcn/codemao/android/sketch/view/CutOutImageView;FF)V

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->onPanStart(Lcn/codemao/android/sketch/view/CutOutImageView$PanEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->isOnPan:Z

    :cond_23e
    :goto_23e
    return v1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    iput-object p1, v0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCutImageCallback(Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;)V
    .registers 2

    .line 1452
    iput-object p1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutImageCallback:Lcn/codemao/android/sketch/view/CutOutImageView$CutImageCallback;

    return-void
.end method

.method public undo()V
    .registers 3

    .line 1460
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undo()V

    .line 1461
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->cutActorImageController:Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;

    iget-object v0, v0, Lcn/codemao/android/sketch/view/CutOutImageView$CutActorImageController;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1462
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CutOutImageView;->bitmapDstRect:Landroid/graphics/Rect;

    .line 1463
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1b
    return-void
.end method
