.class public Lcom/codemao/nemo/view/ShareCardEditView;
.super Landroid/view/View;
.source "ShareCardEditView.java"


# instance fields
.field private backGroundPaint:Landroid/graphics/Paint;

.field private canvasBottom:F

.field private canvasDx:F

.field private canvasDy:F

.field private canvasHeight:F

.field private canvasLeft:F

.field private canvasRect:Landroid/graphics/RectF;

.field private canvasRight:F

.field private canvasTop:F

.field private canvasWidth:F

.field private cavasPaint:Landroid/graphics/Paint;

.field private context:Landroid/content/Context;

.field private finalShareBitmap:Landroid/graphics/Bitmap;

.field private finalShareCavas:Landroid/graphics/Canvas;

.field private isInit:Z

.field private isScaling:Z

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

.field private orientation:I

.field private outEdgeBitmap:Landroid/graphics/Bitmap;

.field private outEdgeBitmapRect:Landroid/graphics/Rect;

.field private outEdgeRect:Landroid/graphics/RectF;

.field private scale:F

.field private srcRect:Landroid/graphics/Rect;

.field private stageHeight:F

.field private stageRect:Landroid/graphics/RectF;

.field private stageWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x44250000  # 660.0f

    .line 40
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    const/high16 p2, 0x43e60000  # 460.0f

    .line 41
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 44
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    .line 53
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isInit:Z

    .line 61
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->orientation:I

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ShareCardEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x44250000  # 660.0f

    .line 40
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    const/high16 p2, 0x43e60000  # 460.0f

    .line 41
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 44
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    .line 53
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isInit:Z

    .line 61
    iput p2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->orientation:I

    .line 77
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ShareCardEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 225
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 226
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1a

    .line 229
    :cond_12
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private fitCanvasSizeAndLocation()V
    .registers 8

    .line 197
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1f

    .line 198
    iput v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    mul-float v1, v1, v2

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllScale(F)V

    goto :goto_4a

    .line 200
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllScale(F)V

    .line 207
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_59

    :goto_57
    sub-float/2addr v1, v3

    goto :goto_63

    .line 209
    :cond_59
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_62

    goto :goto_57

    :cond_62
    const/4 v1, 0x0

    .line 213
    :goto_63
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_6e

    sub-float v4, v3, v5

    goto :goto_78

    .line 215
    :cond_6e
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_78

    sub-float v4, v0, v2

    .line 219
    :cond_78
    :goto_78
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    .line 220
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 221
    invoke-direct {p0, v1, v4, v0}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllOffset(FFZ)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->context:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance v0, Lcom/codemao/nemo/util/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcom/codemao/nemo/util/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    .line 85
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    .line 86
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->cavasPaint:Landroid/graphics/Paint;

    .line 88
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->cavasPaint:Landroid/graphics/Paint;

    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    return-void
.end method

.method private initBackGroundBitmap()V
    .registers 9

    .line 127
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->orientation:I

    const v1, 0x7f0e008c

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    const/4 v5, 0x1

    if-ne v0, v5, :cond_e7

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    .line 130
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasTop:F

    .line 135
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasBottom:F

    .line 136
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    const v1, 0x438f8000  # 287.0f

    mul-float v1, v1, v0

    const/high16 v3, 0x43960000  # 300.0f

    div-float/2addr v1, v3

    const/high16 v5, 0x438e0000  # 284.0f

    mul-float v0, v0, v5

    div-float/2addr v0, v3

    .line 141
    iget-object v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 142
    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 143
    iget v6, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    div-float/2addr v6, v3

    iget v7, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    div-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v7, v6, v2

    if-ltz v7, :cond_7b

    mul-float v3, v3, v6

    float-to-int v2, v3

    int-to-float v3, v2

    mul-float v5, v5, v6

    :goto_78
    float-to-int v2, v5

    int-to-float v5, v2

    goto :goto_90

    .line 148
    :cond_7b
    iget v6, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    div-float v6, v3, v6

    iget v7, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    div-float v7, v5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_90

    div-float/2addr v3, v6

    float-to-int v2, v3

    int-to-float v3, v2

    div-float/2addr v5, v6

    goto :goto_78

    .line 155
    :cond_90
    :goto_90
    iget v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasLeft:F

    .line 156
    iget v6, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v4

    iput v6, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasTop:F

    add-float/2addr v3, v2

    .line 157
    iput v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRight:F

    add-float/2addr v5, v6

    .line 158
    iput v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasBottom:F

    .line 159
    iget-object v7, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    .line 162
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x25

    div-int/lit16 v3, v3, 0x12c

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 164
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    const v0, 0x3f666666  # 0.9f

    mul-float v0, v0, v1

    .line 165
    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    .line 166
    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    const v0, 0x3d23d70a  # 0.04f

    mul-float v1, v1, v0

    add-float/2addr v3, v1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    .line 169
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    add-float/2addr v1, v0

    iget v4, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    add-float/2addr v4, v3

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1b4

    .line 171
    :cond_e7
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    .line 173
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, v3, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    const v0, 0x3f143958  # 0.579f

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    const/high16 v0, 0x44610000  # 900.0f

    mul-float v1, v1, v0

    const v0, 0x440c8000  # 562.0f

    div-float/2addr v1, v0

    .line 175
    iput v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasLeft:F

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasTop:F

    .line 178
    iget v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasLeft:F

    iget v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    add-float/2addr v5, v3

    iput v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRight:F

    add-float/2addr v1, v0

    .line 179
    iput v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasBottom:F

    .line 180
    iget-object v6, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v0, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    const v1, 0x3f7c6a7f  # 0.986f

    mul-float v1, v1, v0

    const v3, 0x3b83126f  # 0.004f

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    .line 183
    iget-object v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iput v6, v3, Landroid/graphics/RectF;->right:F

    .line 184
    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 186
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3edf3b64  # 0.436f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const v1, 0x3d8b4396  # 0.068f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    sub-float/2addr v0, v3

    .line 190
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const v3, 0x3caebc41  # 0.02133f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    .line 191
    iget-object v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageWidth:F

    sub-float v4, v0, v4

    add-float/2addr v0, v2

    iget v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageHeight:F

    add-float/2addr v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v3, v4, v1, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1b4
    return-void
.end method

.method private updateAllOffset(FFZ)V
    .registers 4

    .line 258
    iget-object p3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private updateAllScale(F)V
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    return-void
.end method


# virtual methods
.method public getFinalBackGroundBitmap()Landroid/graphics/Bitmap;
    .registers 8

    .line 266
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 267
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    .line 268
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllScale(F)V

    .line 273
    :cond_2b
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_3a

    :goto_38
    sub-float/2addr v1, v3

    goto :goto_44

    .line 275
    :cond_3a
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_43

    goto :goto_38

    :cond_43
    const/4 v1, 0x0

    .line 279
    :goto_44
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_4e

    sub-float/2addr v3, v5

    goto :goto_5a

    .line 281
    :cond_4e
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_59

    sub-float v3, v0, v2

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    .line 285
    :goto_5a
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    .line 286
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 287
    invoke-direct {p0, v1, v3, v0}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllOffset(FFZ)V

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 289
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x43c30000  # 390.0f

    div-float v0, v1, v0

    .line 290
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    .line 291
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v5

    .line 292
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v0

    .line 293
    iget-object v5, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v0

    mul-float v3, v3, v0

    mul-float v6, v6, v0

    add-float/2addr v2, v3

    add-float/2addr v5, v6

    .line 298
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 299
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_a6

    sub-float/2addr v1, v2

    .line 300
    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 303
    :cond_a6
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c7

    .line 304
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x186

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    .line 305
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareCavas:Landroid/graphics/Canvas;

    .line 306
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 309
    :cond_c7
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->orientation:I

    return v0
.end method

.method public getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;
    .registers 6

    .line 314
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasLeft:F

    iget v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasTop:F

    iget v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRight:F

    iget v4, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasBottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 315
    iget v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 316
    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 317
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 318
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 319
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    .line 320
    new-instance v0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    neg-float v2, v2

    neg-float v1, v1

    iget v3, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    invoke-direct {v0, v2, v1, v3}, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;-><init>(FFF)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    .line 94
    iget-boolean v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->isInit:Z

    if-eqz v1, :cond_1f

    .line 95
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/codemao/nemo/view/ShareCardEditView;->initBackGroundBitmap()V

    .line 99
    :cond_d
    iget v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllScale(F)V

    .line 100
    iget v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    iget v2, v0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllOffset(FFZ)V

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/codemao/nemo/view/ShareCardEditView;->fitCanvasSizeAndLocation()V

    .line 102
    iput-boolean v3, v0, Lcom/codemao/nemo/view/ShareCardEditView;->isInit:Z

    .line 105
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/codemao/nemo/view/ShareCardEditView;->drawBackground(Landroid/graphics/Canvas;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000  # 2.0f

    sub-float v8, v1, v2

    iget-object v9, v0, Lcom/codemao/nemo/view/ShareCardEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 107
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float v12, v3, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float v13, v3, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v14, v1, v2

    iget-object v15, v0, Lcom/codemao/nemo/view/ShareCardEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float v5, v3, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v2

    iget-object v9, v0, Lcom/codemao/nemo/view/ShareCardEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v14, v1

    iget-object v15, v0, Lcom/codemao/nemo/view/ShareCardEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_93

    .line 111
    iget-object v1, v0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/codemao/nemo/view/ShareCardEditView;->outEdgeRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_18

    .line 237
    iput-boolean v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isScaling:Z

    .line 240
    :cond_18
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    iget-boolean v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isScaling:Z

    if-eqz v2, :cond_2e

    .line 242
    iget-object v2, p0, Lcom/codemao/nemo/view/ShareCardEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2e
    if-eq v0, v1, :cond_31

    goto :goto_3a

    .line 247
    :cond_31
    invoke-direct {p0}, Lcom/codemao/nemo/view/ShareCardEditView;->fitCanvasSizeAndLocation()V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isScaling:Z

    :goto_3a
    return v1
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 116
    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->srcRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->isInit:Z

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOffset(FF)V
    .registers 4

    .line 336
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDx:F

    .line 337
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 338
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllOffset(FFZ)V

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 347
    iput p1, p0, Lcom/codemao/nemo/view/ShareCardEditView;->orientation:I

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 330
    iget v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/ShareCardEditView;->scale:F

    .line 331
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/ShareCardEditView;->updateAllScale(F)V

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
