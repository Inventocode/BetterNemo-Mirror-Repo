.class public Lcom/codemao/nemo/view/CoverEditView;
.super Landroid/view/View;
.source "CoverEditView.java"


# instance fields
.field private backGroundPaint:Landroid/graphics/Paint;

.field private canvasBottom:F

.field private canvasDx:F

.field private canvasDy:F

.field private canvasLeft:F

.field private canvasRect:Landroid/graphics/RectF;

.field private canvasRight:F

.field private canvasTop:F

.field private finalHeight:F

.field private finalShareBitmap:Landroid/graphics/Bitmap;

.field private finalShareCavas:Landroid/graphics/Canvas;

.field private finalWitdh:F

.field private isInit:Z

.field private isScaling:Z

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

.field private normalHeight:F

.field private normalWitdh:F

.field private pngResetPaint:Landroid/graphics/Paint;

.field private scale:F

.field private srcRect:Landroid/graphics/Rect;

.field private stagePaint:Landroid/graphics/Paint;

.field private stageRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CoverEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 36
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CoverEditView;->isInit:Z

    const/high16 p2, 0x43fa0000  # 500.0f

    .line 45
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    .line 46
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CoverEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CoverEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 36
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CoverEditView;->isInit:Z

    const/high16 p2, 0x43fa0000  # 500.0f

    .line 45
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    .line 46
    iput p2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    .line 77
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CoverEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 207
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 208
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1a

    .line 211
    :cond_12
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private fitCanvasSizeAndLocation()V
    .registers 8

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->normalWitdh:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1f

    .line 172
    iput v2, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    mul-float v1, v1, v2

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/CoverEditView;->updateAllScale(F)V

    goto :goto_81

    .line 177
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_41

    :cond_3f
    const/high16 v0, 0x3f800000  # 1.0f

    .line 180
    :goto_41
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5f

    .line 181
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v1, v2

    :cond_5f
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_6f

    .line 184
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/CoverEditView;->normalWitdh:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    goto :goto_7a

    .line 186
    :cond_6f
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/CoverEditView;->normalHeight:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    .line 188
    :goto_7a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllScale(F)V

    .line 191
    :goto_81
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_90

    :goto_8e
    sub-float/2addr v1, v3

    goto :goto_9a

    .line 193
    :cond_90
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_99

    goto :goto_8e

    :cond_99
    const/4 v1, 0x0

    .line 196
    :goto_9a
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_a5

    sub-float v4, v3, v5

    goto :goto_af

    .line 198
    :cond_a5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_af

    sub-float v4, v0, v2

    .line 201
    :cond_af
    :goto_af
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    .line 202
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, v1, v4, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllOffset(FFZ)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance v0, Lcom/codemao/nemo/util/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcom/codemao/nemo/util/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    .line 85
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->stagePaint:Landroid/graphics/Paint;

    .line 87
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->stagePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->stagePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->pngResetPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->pngResetPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initBackGroundBitmap()V
    .registers 9

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f70a3d7  # 0.94f

    mul-float v2, v2, v0

    .line 128
    iget v3, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    iget v4, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_27

    const v3, 0x3f4ccccd  # 0.8f

    mul-float v3, v3, v1

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_25

    move v3, v2

    goto :goto_2c

    :cond_25
    move v2, v3

    goto :goto_2c

    :cond_27
    const v3, 0x3eef1aa0  # 0.467f

    mul-float v3, v3, v2

    .line 139
    :goto_2c
    iget-object v4, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    sub-float v5, v0, v2

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    sub-float v7, v1, v3

    div-float/2addr v7, v6

    .line 140
    iput v7, v4, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, v5

    .line 141
    iput v5, v4, Landroid/graphics/RectF;->right:F

    sub-float v5, v1, v7

    .line 142
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 145
    iget-object v4, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 146
    iget-object v5, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v4

    div-float/2addr v3, v5

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v4, v4, v2

    float-to-int v3, v4

    int-to-float v3, v3

    mul-float v5, v5, v2

    float-to-int v2, v5

    int-to-float v2, v2

    .line 161
    iput v3, p0, Lcom/codemao/nemo/view/CoverEditView;->normalWitdh:F

    .line 162
    iput v2, p0, Lcom/codemao/nemo/view/CoverEditView;->normalHeight:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 163
    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasLeft:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    .line 164
    iput v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasTop:F

    add-float/2addr v3, v0

    .line 165
    iput v3, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRight:F

    add-float/2addr v2, v1

    .line 166
    iput v2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasBottom:F

    .line 167
    iget-object v4, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateAllOffset(FFZ)V
    .registers 4

    .line 245
    iget-object p3, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private updateAllScale(F)V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

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

    .line 254
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->normalWitdh:F

    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->normalHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->normalWitdh:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllScale(F)V

    goto :goto_5f

    .line 260
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->normalHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllScale(F)V

    .line 266
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_6e

    :goto_6c
    sub-float/2addr v1, v3

    goto :goto_78

    .line 268
    :cond_6e
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_77

    goto :goto_6c

    :cond_77
    const/4 v1, 0x0

    .line 271
    :goto_78
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_82

    sub-float/2addr v3, v5

    goto :goto_8e

    .line 273
    :cond_82
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_8d

    sub-float v3, v0, v2

    goto :goto_8e

    :cond_8d
    const/4 v3, 0x0

    .line 276
    :goto_8e
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    .line 277
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 278
    invoke-direct {p0, v1, v3, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllOffset(FFZ)V

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 280
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 281
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    .line 282
    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v3

    .line 283
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, v0

    .line 284
    iget-object v3, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v0

    mul-float v2, v2, v0

    mul-float v5, v5, v0

    add-float/2addr v1, v2

    add-float/2addr v3, v5

    .line 289
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 291
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_db

    sub-float/2addr v2, v1

    .line 292
    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 295
    :cond_db
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_10a

    .line 296
    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    .line 297
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareCavas:Landroid/graphics/Canvas;

    .line 298
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 301
    :cond_10a
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->pngResetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 302
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/codemao/nemo/view/CoverEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFinalHeight()F
    .registers 2

    .line 63
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    return v0
.end method

.method public getFinalWitdh()F
    .registers 2

    .line 55
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    return v0
.end method

.method public getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;
    .registers 6

    .line 308
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasLeft:F

    iget v2, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasTop:F

    iget v3, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRight:F

    iget v4, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasBottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 309
    iget v1, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 310
    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 311
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 313
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 314
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    .line 315
    new-instance v0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    neg-float v2, v2

    neg-float v1, v1

    iget v3, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    invoke-direct {v0, v2, v1, v3}, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;-><init>(FFF)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    return-void

    .line 101
    :cond_5
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CoverEditView;->isInit:Z

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/view/CoverEditView;->initBackGroundBitmap()V

    :cond_e
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CoverEditView;->isInit:Z

    .line 107
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->pngResetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CoverEditView;->drawBackground(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/codemao/nemo/view/CoverEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->top:F

    iget v11, v0, Landroid/graphics/RectF;->left:F

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcom/codemao/nemo/view/CoverEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/codemao/nemo/view/CoverEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/codemao/nemo/view/CoverEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->stageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->stagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_18

    .line 224
    iput-boolean v1, p0, Lcom/codemao/nemo/view/CoverEditView;->isScaling:Z

    .line 227
    :cond_18
    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    iget-boolean v2, p0, Lcom/codemao/nemo/view/CoverEditView;->isScaling:Z

    if-eqz v2, :cond_2e

    .line 229
    iget-object v2, p0, Lcom/codemao/nemo/view/CoverEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2e
    if-eq v0, v1, :cond_31

    goto :goto_3a

    .line 233
    :cond_31
    invoke-direct {p0}, Lcom/codemao/nemo/view/CoverEditView;->fitCanvasSizeAndLocation()V

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CoverEditView;->isScaling:Z

    :goto_3a
    return v1
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 117
    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CoverEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/codemao/nemo/view/CoverEditView;->srcRect:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFinalHeight(F)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalHeight:F

    return-void
.end method

.method public setFinalWitdh(F)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/codemao/nemo/view/CoverEditView;->finalWitdh:F

    return-void
.end method

.method public setOffset(FF)V
    .registers 4

    .line 331
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDx:F

    .line 332
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 333
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/CoverEditView;->updateAllOffset(FFZ)V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 325
    iget v0, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CoverEditView;->scale:F

    .line 326
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CoverEditView;->updateAllScale(F)V

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
