.class public Lcn/codemao/android/sketch/view/ShareEditView;
.super Landroid/view/View;
.source "ShareEditView.java"


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

.field private movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

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
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x44250000  # 660.0f

    .line 32
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    const/high16 p2, 0x43e60000  # 460.0f

    .line 33
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isScaling:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 36
    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isInit:Z

    .line 47
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->orientation:I

    .line 58
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x44250000  # 660.0f

    .line 32
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    const/high16 p2, 0x43e60000  # 460.0f

    .line 33
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isScaling:Z

    const/high16 p3, 0x3f800000  # 1.0f

    .line 36
    iput p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    const/4 p3, 0x0

    .line 39
    iput p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    iput p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 p3, 0x1

    .line 40
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isInit:Z

    .line 47
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->orientation:I

    .line 63
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 190
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 191
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fitCanvasSizeAndLocation()V
    .registers 8

    .line 165
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v3, v1, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1f

    .line 166
    iput v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    mul-float v1, v1, v2

    .line 167
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllScale(F)V

    goto :goto_4a

    .line 168
    :cond_1f
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    .line 169
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    .line 170
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllScale(F)V

    .line 173
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_59

    :goto_57
    sub-float/2addr v1, v3

    goto :goto_63

    .line 175
    :cond_59
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_62

    goto :goto_57

    :cond_62
    const/4 v1, 0x0

    .line 178
    :goto_63
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_6e

    sub-float v4, v3, v5

    goto :goto_78

    .line 180
    :cond_6e
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_78

    sub-float v4, v0, v2

    .line 183
    :cond_78
    :goto_78
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    .line 184
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    add-float/2addr v0, v4

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v1, v4, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllOffset(FFZ)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->context:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    new-instance v0, Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcn/codemao/android/sketch/utils/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    .line 72
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->cavasPaint:Landroid/graphics/Paint;

    .line 75
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->cavasPaint:Landroid/graphics/Paint;

    const/16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    return-void
.end method

.method private initBackGroundBitmap()V
    .registers 9

    .line 109
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->orientation:I

    const v1, 0x3b83126f  # 0.004f

    const v2, 0x440c8000  # 562.0f

    const/high16 v3, 0x44610000  # 900.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, 0x1

    if-ne v0, v6, :cond_f9

    .line 110
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/codemao/android/sketch/R$mipmap;->ic_share_edit_edge:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    .line 112
    iget-object v6, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    const v0, 0x3f3851ec  # 0.72f

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    mul-float v4, v4, v3

    div-float/2addr v4, v2

    .line 114
    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasHeight:F

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasLeft:F

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasHeight:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasTop:F

    .line 117
    iget v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasLeft:F

    iget v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    add-float/2addr v4, v3

    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRight:F

    add-float/2addr v2, v0

    .line 118
    iput v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasBottom:F

    .line 119
    iget-object v6, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    const v2, -0x429a9fbe  # -0.056f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 121
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iput v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasTop:F

    .line 122
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasBottom:F

    .line 123
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    const v3, 0x3f7126e9  # 0.942f

    mul-float v3, v3, v0

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    .line 125
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->right:F

    iput v6, v1, Landroid/graphics/RectF;->right:F

    .line 126
    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v0

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 128
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const v1, -0x42820c4a  # -0.062f

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f051eb8  # 0.52f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    .line 132
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const v1, 0x3ce56042  # 0.028f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 134
    iget-object v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    add-float/2addr v2, v1

    const/high16 v4, 0x40400000  # 3.0f

    add-float/2addr v2, v4

    iget v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    add-float/2addr v4, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1c2

    .line 136
    :cond_f9
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/codemao/android/sketch/R$mipmap;->ic_share_edit_edge_landscape:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    .line 138
    iget-object v6, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    const v0, 0x3f143958  # 0.579f

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    mul-float v4, v4, v3

    div-float/2addr v4, v2

    .line 140
    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasHeight:F

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasLeft:F

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasHeight:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasTop:F

    .line 143
    iget v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasLeft:F

    iget v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    add-float/2addr v4, v3

    iput v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRight:F

    add-float/2addr v2, v0

    .line 144
    iput v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasBottom:F

    .line 145
    iget-object v6, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    const v2, 0x3f7c6a7f  # 0.986f

    mul-float v2, v2, v0

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 149
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 150
    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 152
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3edf3b64  # 0.436f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    .line 156
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const v1, 0x3d8b4396  # 0.068f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    .line 157
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const v2, 0x3caebc41  # 0.02133f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    .line 158
    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageWidth:F

    sub-float v3, v0, v3

    const/high16 v4, 0x3f800000  # 1.0f

    add-float/2addr v0, v4

    iget v5, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageHeight:F

    add-float/2addr v5, v1

    add-float/2addr v5, v4

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1c2
    return-void
.end method

.method private updateAllOffset(FFZ)V
    .registers 4

    .line 224
    iget-object p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private updateAllScale(F)V
    .registers 5

    .line 230
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

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

    .line 234
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 235
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasWidth:F

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    .line 236
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllScale(F)V

    .line 239
    :cond_2b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v5, v1, v3

    if-lez v5, :cond_3a

    :goto_38
    sub-float/2addr v1, v3

    goto :goto_44

    .line 241
    :cond_3a
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v1, v3

    if-gez v5, :cond_43

    goto :goto_38

    :cond_43
    const/4 v1, 0x0

    .line 244
    :goto_44
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_4e

    sub-float/2addr v3, v5

    goto :goto_5a

    .line 246
    :cond_4e
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_59

    sub-float v3, v0, v2

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    .line 249
    :goto_5a
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    .line 250
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    add-float/2addr v0, v3

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 251
    invoke-direct {p0, v1, v3, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllOffset(FFZ)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 253
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x43c30000  # 390.0f

    div-float v0, v1, v0

    .line 254
    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v6

    .line 255
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v5

    .line 256
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v0

    .line 257
    iget-object v5, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v0

    mul-float v3, v3, v0

    mul-float v6, v6, v0

    add-float/2addr v2, v3

    add-float/2addr v5, v6

    .line 262
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v2, v1

    if-gez v3, :cond_a6

    sub-float/2addr v1, v2

    .line 265
    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 268
    :cond_a6
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c7

    .line 269
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x186

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    .line 270
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareCavas:Landroid/graphics/Canvas;

    .line 271
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 273
    :cond_c7
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareCavas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->srcRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 275
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->finalShareBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 309
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->orientation:I

    return v0
.end method

.method public getShareBitmapEditInfo()Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;
    .registers 6

    .line 279
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasLeft:F

    iget v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasTop:F

    iget v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRight:F

    iget v4, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasBottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    iget v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 281
    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 282
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 284
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 285
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    .line 286
    new-instance v0, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;

    neg-float v2, v2

    neg-float v1, v1

    iget v3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    invoke-direct {v0, v2, v1, v3}, Lcn/codemao/android/sketch/model/ShareBitmapEditInfo;-><init>(FFF)V

    return-object v0
.end method

.method public initOffsetAndScale(FFF)V
    .registers 4

    .line 290
    iput p3, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    .line 291
    iput p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    .line 292
    iput p2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 317
    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    .line 82
    iget-boolean v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->isInit:Z

    if-eqz v1, :cond_1f

    .line 83
    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 84
    invoke-direct/range {p0 .. p0}, Lcn/codemao/android/sketch/view/ShareEditView;->initBackGroundBitmap()V

    .line 86
    :cond_d
    iget v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllScale(F)V

    .line 87
    iget v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    iget v2, v0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllOffset(FFZ)V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcn/codemao/android/sketch/view/ShareEditView;->fitCanvasSizeAndLocation()V

    .line 90
    iput-boolean v3, v0, Lcn/codemao/android/sketch/view/ShareEditView;->isInit:Z

    .line 92
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcn/codemao/android/sketch/view/ShareEditView;->drawBackground(Landroid/graphics/Canvas;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x40000000  # 2.0f

    sub-float v8, v1, v2

    iget-object v9, v0, Lcn/codemao/android/sketch/view/ShareEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 94
    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float v12, v3, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float v13, v3, v2

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v14, v1, v2

    iget-object v15, v0, Lcn/codemao/android/sketch/view/ShareEditView;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    add-float v5, v3, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v2

    iget-object v9, v0, Lcn/codemao/android/sketch/view/ShareEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v12, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v14, v1

    iget-object v15, v0, Lcn/codemao/android/sketch/view/ShareEditView;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v1, v0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeBitmapRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/ShareEditView;->outEdgeRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_18

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_18

    .line 202
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isScaling:Z

    .line 205
    :cond_18
    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isScaling:Z

    if-eqz v2, :cond_2e

    .line 207
    iget-object v2, p0, Lcn/codemao/android/sketch/view/ShareEditView;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2e
    if-eq v0, v1, :cond_31

    goto :goto_3a

    .line 211
    :cond_31
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/ShareEditView;->fitCanvasSizeAndLocation()V

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->isScaling:Z

    :goto_3a
    return v1
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 103
    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->srcRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setOffset(FF)V
    .registers 4

    .line 302
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDx:F

    .line 303
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->canvasDy:F

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllOffset(FFZ)V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 313
    iput p1, p0, Lcn/codemao/android/sketch/view/ShareEditView;->orientation:I

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 296
    iget v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/view/ShareEditView;->scale:F

    .line 297
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/ShareEditView;->updateAllScale(F)V

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
