.class public Lcom/codemao/nemo/view/CircleEditView;
.super Landroid/view/View;
.source "CircleEditView.java"


# instance fields
.field private backGroundPaint:Landroid/graphics/Paint;

.field private bottomPath:Landroid/graphics/Path;

.field private canvasBottom:F

.field private canvasDx:F

.field private canvasDy:F

.field private canvasLeft:F

.field private canvasRect:Landroid/graphics/RectF;

.field private canvasRight:F

.field private canvasTop:F

.field private finalShareBitmap:Landroid/graphics/Bitmap;

.field private finalShareCavas:Landroid/graphics/Canvas;

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

.field private topPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CircleEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 36
    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CircleEditView;->isInit:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CircleEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CircleEditView;->isScaling:Z

    const/high16 p2, 0x3f800000  # 1.0f

    .line 36
    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    iput p2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CircleEditView;->isInit:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CircleEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 206
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 207
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method private fitCanvasSizeAndLocation()V
    .registers 8

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->normalWitdh:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1f

    .line 170
    iput v2, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    mul-float v1, v1, v2

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/CircleEditView;->updateAllScale(F)V

    goto :goto_81

    .line 175
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_41

    :cond_3f
    const/high16 v0, 0x3f800000  # 1.0f

    .line 178
    :goto_41
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5f

    .line 179
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v1, v2

    :cond_5f
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_6f

    .line 182
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/CircleEditView;->normalWitdh:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    goto :goto_7a

    .line 184
    :cond_6f
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/CircleEditView;->normalHeight:F

    div-float/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    .line 186
    :goto_7a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllScale(F)V

    .line 189
    :goto_81
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_90

    :goto_8e
    sub-float/2addr v1, v3

    goto :goto_9a

    .line 191
    :cond_90
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_99

    goto :goto_8e

    :cond_99
    const/4 v1, 0x0

    .line 194
    :goto_9a
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_a5

    sub-float v4, v3, v5

    goto :goto_af

    .line 196
    :cond_a5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_af

    sub-float v4, v0, v2

    .line 199
    :cond_af
    :goto_af
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    .line 200
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v1, v4, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllOffset(FFZ)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->backGroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    new-instance v0, Lcom/codemao/nemo/util/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcom/codemao/nemo/util/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->stagePaint:Landroid/graphics/Paint;

    .line 72
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->stagePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->stagePaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->stagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->pngResetPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->pngResetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initBackGroundBitmap()V
    .registers 11

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f70a3d7  # 0.94f

    mul-float v2, v2, v0

    const v3, 0x3f4ccccd  # 0.8f

    mul-float v3, v3, v1

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    .line 118
    :goto_1a
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    sub-float v6, v1, v2

    div-float/2addr v6, v5

    .line 119
    iput v6, v3, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    .line 120
    iput v4, v3, Landroid/graphics/RectF;->right:F

    sub-float v4, v1, v6

    .line 121
    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 122
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    div-float v6, v1, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43340000  # 180.0f

    invoke-virtual {v3, v7, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 127
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 132
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    .line 133
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    const/high16 v9, -0x3ccc0000  # -180.0f

    invoke-virtual {v3, v7, v8, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 137
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 140
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 141
    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 142
    iget-object v4, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v2, v3

    div-float/2addr v2, v4

    .line 155
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v3, v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float v4, v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 159
    iput v3, p0, Lcom/codemao/nemo/view/CircleEditView;->normalWitdh:F

    .line 160
    iput v2, p0, Lcom/codemao/nemo/view/CircleEditView;->normalHeight:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    .line 161
    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasLeft:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 162
    iput v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasTop:F

    add-float/2addr v3, v0

    .line 163
    iput v3, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRight:F

    add-float/2addr v2, v1

    .line 164
    iput v2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasBottom:F

    .line 165
    iget-object v4, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateAllOffset(FFZ)V
    .registers 4

    .line 240
    iget-object p3, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private updateAllScale(F)V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

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

    .line 249
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->normalWitdh:F

    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->normalHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_34

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 251
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->normalWitdh:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    .line 252
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllScale(F)V

    goto :goto_5f

    .line 255
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5f

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->normalHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllScale(F)V

    .line 261
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_6e

    :goto_6c
    sub-float/2addr v1, v3

    goto :goto_78

    .line 263
    :cond_6e
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_77

    goto :goto_6c

    :cond_77
    const/4 v1, 0x0

    .line 266
    :goto_78
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_82

    sub-float/2addr v3, v5

    goto :goto_8e

    .line 268
    :cond_82
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_8d

    sub-float v3, v0, v2

    goto :goto_8e

    :cond_8d
    const/4 v3, 0x0

    .line 271
    :goto_8e
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    .line 272
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v1, v3, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllOffset(FFZ)V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x43960000  # 300.0f

    div-float v0, v1, v0

    .line 276
    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    .line 277
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v5

    .line 278
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v0

    .line 279
    iget-object v5, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v0

    mul-float v3, v3, v0

    mul-float v6, v6, v0

    add-float/2addr v2, v3

    add-float/2addr v5, v6

    .line 284
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 286
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_da

    sub-float/2addr v1, v2

    .line 287
    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 290
    :cond_da
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_fb

    .line 291
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x12c

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    .line 292
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareCavas:Landroid/graphics/Canvas;

    .line 293
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 295
    :cond_fb
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->pngResetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 296
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;
    .registers 6

    .line 302
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasLeft:F

    iget v2, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasTop:F

    iget v3, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRight:F

    iget v4, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasBottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 303
    iget v1, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 304
    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 305
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 307
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 308
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    .line 309
    new-instance v0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    neg-float v2, v2

    neg-float v1, v1

    iget v3, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    invoke-direct {v0, v2, v1, v3}, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;-><init>(FFF)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 84
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CircleEditView;->isInit:Z

    if-eqz v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 86
    invoke-direct {p0}, Lcom/codemao/nemo/view/CircleEditView;->initBackGroundBitmap()V

    :cond_b
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CircleEditView;->isInit:Z

    .line 90
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->pngResetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CircleEditView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->topPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->bottomPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/codemao/nemo/view/CircleEditView;->stagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_b

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CircleEditView;->isInit:Z

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_18

    .line 219
    iput-boolean v1, p0, Lcom/codemao/nemo/view/CircleEditView;->isScaling:Z

    .line 222
    :cond_18
    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    iget-boolean v2, p0, Lcom/codemao/nemo/view/CircleEditView;->isScaling:Z

    if-eqz v2, :cond_2e

    .line 224
    iget-object v2, p0, Lcom/codemao/nemo/view/CircleEditView;->movePathUtils:Lcom/codemao/nemo/util/MovePathUtils;

    invoke-virtual {v2}, Lcom/codemao/nemo/util/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2e
    if-eq v0, v1, :cond_31

    goto :goto_3a

    .line 228
    :cond_31
    invoke-direct {p0}, Lcom/codemao/nemo/view/CircleEditView;->fitCanvasSizeAndLocation()V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CircleEditView;->isScaling:Z

    :goto_3a
    return v1
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/view/CircleEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/codemao/nemo/view/CircleEditView;->srcRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setOffset(FF)V
    .registers 4

    .line 325
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDx:F

    .line 326
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/CircleEditView;->updateAllOffset(FFZ)V

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 319
    iget v0, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/codemao/nemo/view/CircleEditView;->scale:F

    .line 320
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CircleEditView;->updateAllScale(F)V

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
