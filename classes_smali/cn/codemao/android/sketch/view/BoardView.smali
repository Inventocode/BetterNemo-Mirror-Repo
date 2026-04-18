.class public Lcn/codemao/android/sketch/view/BoardView;
.super Landroid/view/View;
.source "BoardView.java"


# instance fields
.field private clearMode:Landroid/graphics/Xfermode;

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mCanEraser:Z

.field private mDrawSize:I

.field private mDrawingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEraserSize:I

.field private mLastX:F

.field private mLastY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/BoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mCanEraser:Z

    .line 54
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/BoardView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 61
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/16 v0, 0xa

    .line 62
    iput v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mDrawSize:I

    const/16 v1, 0x28

    .line 63
    iput v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mEraserSize:I

    .line 64
    iget-object v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->clearMode:Landroid/graphics/Xfermode;

    return-void
.end method

.method private initBuffer()V
    .registers 4

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 98
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private saveDrawingPath()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mDrawingList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mDrawingList:Ljava/util/List;

    .line 163
    :cond_b
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 165
    new-instance v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 166
    invoke-virtual {v2, v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPath(Landroid/graphics/Path;)V

    .line 167
    invoke-virtual {v2, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mDrawingList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mCanEraser:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 71
    iget v0, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 144
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5b

    if-eq p1, v2, :cond_4a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_18

    goto :goto_6f

    .line 124
    :cond_18
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastY:F

    add-float v5, v0, v3

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    add-float v7, v1, v4

    div-float/2addr v7, v6

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 126
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_30

    .line 127
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/BoardView;->initBuffer()V

    .line 129
    :cond_30
    iget p1, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    if-nez p1, :cond_39

    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mCanEraser:Z

    if-nez p1, :cond_39

    goto :goto_6f

    .line 132
    :cond_39
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 134
    iput v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastX:F

    .line 135
    iput v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastY:F

    goto :goto_6f

    .line 118
    :cond_4a
    iget p1, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    if-eq p1, v2, :cond_52

    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mCanEraser:Z

    if-eqz p1, :cond_55

    .line 119
    :cond_52
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/BoardView;->saveDrawingPath()V

    .line 121
    :cond_55
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_6f

    .line 109
    :cond_5b
    iput v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastX:F

    .line 110
    iput v1, p0, Lcn/codemao/android/sketch/view/BoardView;->mLastY:F

    .line 111
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_6a

    .line 112
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    .line 115
    :cond_6a
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_6f
    return v2
.end method

.method public setColor(I)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setType(I)V
    .registers 3

    .line 84
    iget v0, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    if-eq v0, p1, :cond_29

    .line 85
    iput p1, p0, Lcn/codemao/android/sketch/view/BoardView;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 87
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mDrawSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_29

    :cond_18
    if-nez p1, :cond_29

    .line 90
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->clearMode:Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    iget-object p1, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mEraserSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_29
    :goto_29
    return-void
.end method

.method public setWitdh(I)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BoardView;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
