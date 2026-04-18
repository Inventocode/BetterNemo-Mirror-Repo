.class public Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BezierCircleFooter.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# instance fields
.field private arrorBottomLeft:F

.field private arrorBottomRight:F

.field arrowBottom:Landroid/graphics/Path;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapH:F

.field private bitmapW:F

.field private centerX:I

.field private isDragging:Z

.field private isRelease:Z

.field protected mBackPaint:Landroid/graphics/Paint;

.field protected mFinishRatio:F

.field protected mHeadHeight:I

.field protected mOffset:I

.field protected mPath:Landroid/graphics/Path;

.field protected mWaveHeight:F

.field protected mWavePulling:Z

.field private maxOffset:I

.field private maxWallHeight:F

.field private mtemp:Landroid/graphics/Paint;

.field private nextPageName:Ljava/lang/String;

.field private pathPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private recycle:Landroidx/recyclerview/widget/RecyclerView;

.field private smartRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field private textPaint:Landroid/graphics/Paint;

.field private textY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    const-string p1, "大家的知识库"

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->nextPageName:Ljava/lang/String;

    .line 57
    iput-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWavePulling:Z

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    const/high16 p1, 0x44160000  # 600.0f

    .line 65
    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapW:F

    const/high16 p1, 0x42c80000  # 100.0f

    .line 66
    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    const/high16 p2, 0x43480000  # 200.0f

    .line 68
    iput p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textY:F

    .line 169
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    .line 102
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0805e1

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 107
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 108
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mBackPaint:Landroid/graphics/Paint;

    const p2, -0x160f0a

    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mBackPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mtemp:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mtemp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    const v0, -0x7d5c41

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000  # 14.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    const v0, -0x433123

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 129
    iget-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/content/Context;)V
    .registers 4

    .line 89
    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->recycle:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    iput-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->smartRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;)Landroid/graphics/RectF;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private drawArrow(Landroid/graphics/Canvas;II)V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 177
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    if-lt p2, v0, :cond_30

    sub-int v0, p2, v0

    int-to-float v0, v0

    const/16 v1, 0xe

    .line 178
    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_23

    .line 179
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result v1

    goto :goto_3a

    .line 181
    :cond_23
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    add-int/lit8 v1, p3, 0xe

    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result v1

    goto :goto_3a

    .line 184
    :cond_30
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result v1

    :goto_3a
    add-float/2addr v0, v1

    .line 189
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float p2, v1

    add-int/lit8 p3, p3, 0x7

    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p3

    add-float/2addr p2, p3

    .line 192
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrorBottomLeft:F

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float v1, v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrorBottomRight:F

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrowBottom:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->pathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBitmap(Landroid/graphics/Canvas;I)V
    .registers 12

    int-to-float v0, p2

    .line 269
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2e

    if-gt p2, v1, :cond_2e

    .line 270
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    int-to-float v2, v2

    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    sub-float/2addr v2, v4

    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 271
    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float v6, v5

    iget v7, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapW:F

    div-float v8, v7, v3

    sub-float/2addr v6, v8

    int-to-float v5, v5

    div-float/2addr v7, v3

    add-float/2addr v5, v7

    add-float/2addr v4, v1

    invoke-virtual {v2, v6, v1, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    :cond_2e
    iget-boolean v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->isDragging:Z

    if-nez v1, :cond_5b

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5b

    iget-boolean v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->isRelease:Z

    if-nez v0, :cond_5b

    .line 276
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float v2, v1

    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapW:F

    div-float v5, v4, v3

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    add-float v6, p2, v5

    int-to-float v1, v1

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    add-float/2addr p2, v5

    invoke-virtual {v0, v2, v6, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    :cond_5b
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;I)V
    .registers 6

    .line 288
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textY:F

    add-float/2addr v0, v1

    .line 291
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_32

    .line 292
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "松开小手查看"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->nextPageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4d

    .line 294
    :cond_32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "继续上滑查看"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->nextPageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    :goto_4d
    iget p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float p2, p2

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mtemp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getHorPx(I)F
    .registers 3

    int-to-float p1, p1

    const v0, 0x43bb8000  # 375.0f

    div-float/2addr p1, v0

    .line 230
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method

.method private getVerPx(I)F
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42ae0000  # 87.0f

    div-float/2addr p1, v0

    .line 235
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 309
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->drawWave(Landroid/graphics/Canvas;II)V

    .line 310
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->drawBitmap(Landroid/graphics/Canvas;I)V

    .line 311
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->drawText(Landroid/graphics/Canvas;I)V

    .line 313
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->drawArrow(Landroid/graphics/Canvas;II)V

    .line 314
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->drawArrow(Landroid/graphics/Canvas;II)V

    .line 316
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawWave(Landroid/graphics/Canvas;II)V
    .registers 10

    .line 241
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWaveHeight:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_ae

    .line 242
    iget p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->maxWallHeight:F

    const/high16 v2, 0x40000000  # 2.0f

    cmpl-float v3, v0, p3

    if-ltz v3, :cond_61

    sub-float/2addr v0, p3

    div-float/2addr v0, v2

    .line 244
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 245
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p3, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    div-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->maxWallHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p3, p2, v2, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 249
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 250
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c1

    .line 252
    :cond_61
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 253
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    div-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWaveHeight:F

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 257
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 258
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c1

    :cond_ae
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-float v2, v0

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_c1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 164
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .registers 5

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 375
    fill-array-data p1, :array_26

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 376
    new-instance p2, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$3;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 385
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 386
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x320

    return p1

    nop

    :array_26
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .registers 4

    return-void
.end method

.method public onMoving(ZFIII)V
    .registers 6

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 206
    iput-boolean p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->isRelease:Z

    .line 208
    :cond_5
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->isDragging:Z

    if-eqz p1, :cond_12

    .line 212
    iget p4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->maxOffset:I

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    goto :goto_14

    .line 214
    :cond_12
    iput p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    .line 217
    :goto_14
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->recycle:Landroidx/recyclerview/widget/RecyclerView;

    iget p4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    if-nez p1, :cond_23

    .line 219
    iget-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWavePulling:Z

    if-eqz p1, :cond_36

    :cond_23
    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWavePulling:Z

    .line 223
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    iget p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    sub-int/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000  # 2.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mWaveHeight:F

    .line 225
    :cond_36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .registers 11

    const/4 p1, 0x1

    .line 329
    iput-boolean p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->isRelease:Z

    .line 330
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 331
    iget v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    sub-int v2, p2, v1

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    int-to-float v1, v1

    const/4 v5, 0x0

    aput v1, v4, v5

    int-to-float v1, p2

    aput v1, v4, p1

    .line 332
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 337
    new-instance v6, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;

    invoke-direct {v6, p0, p2, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;II)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x1f4

    .line 345
    invoke-virtual {v4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 349
    new-instance p2, Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->rect:Landroid/graphics/RectF;

    invoke-direct {p2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 350
    iget p3, p2, Landroid/graphics/RectF;->top:F

    sub-float p3, v1, p3

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_5e

    new-array v3, v3, [F

    .line 352
    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mOffset:I

    int-to-float v4, v4

    aput v4, v3, v5

    aput v1, v3, p1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 355
    new-instance v1, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;

    invoke-direct {v1, p0, v2, p3, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;FFLandroid/graphics/RectF;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x5dc

    .line 365
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 366
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5e
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 137
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    .line 140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e6d9168  # 0.232f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    const/16 p1, 0x64

    .line 142
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->maxWallHeight:F

    const/16 p1, 0xd5

    .line 144
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getHorPx(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapW:F

    const/16 p1, 0x22

    .line 145
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->bitmapH:F

    const/16 p1, 0x34

    .line 147
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->textY:F

    const/16 p1, 0xbe

    .line 150
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->maxOffset:I

    .line 152
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float p1, p1

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getHorPx(I)F

    move-result p3

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrorBottomLeft:F

    .line 153
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->centerX:I

    int-to-float p1, p1

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getHorPx(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->arrorBottomRight:F

    .line 155
    iget p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mHeadHeight:I

    int-to-float p1, p1

    const/4 p2, 0x7

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->getVerPx(I)F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSizeChanged: TriggerRate = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BezierCircleHeader"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->smartRefreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p2, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setFooterTriggerRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public setNextPageName(Ljava/lang/String;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->nextPageName:Ljava/lang/String;

    return-void
.end method

.method public setNoMoreData(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
