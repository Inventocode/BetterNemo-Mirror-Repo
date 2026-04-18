.class public Lcn/codemao/android/sketch/view/VerticalSeekBar;
.super Landroid/view/View;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;
    }
.end annotation


# instance fields
.field TouchSlop:I

.field private centerX:I

.field private downY:F

.field private height:I

.field private iamgePaint:Landroid/graphics/Paint;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationY:F

.field private mDestRect:Landroid/graphics/RectF;

.field protected mThumb:Landroid/graphics/Bitmap;

.field private maxProgress:I

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private progressWidth:I

.field private rectF:Landroid/graphics/RectF;

.field private selF:Landroid/graphics/RectF;

.field private selectColor:I

.field private thumbHeight:I

.field private thumbWidth:I

.field private traceColor:I

.field private traceWidth:I

.field private unSelectColor:I

.field private unselF:Landroid/graphics/RectF;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x28

    .line 38
    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->maxProgress:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 39
    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->TouchSlop:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->listeners:Ljava/util/List;

    .line 74
    sget-object v0, Lcn/codemao/android/sketch/R$styleable;->VerticalSeekBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceWidth:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40c00000  # 6.0f

    invoke-static {p2, p3}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    .line 77
    sget p2, Lcn/codemao/android/sketch/R$styleable;->VerticalSeekBar_vs_barbg:I

    const p3, 0x1f6547a9

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->unSelectColor:I

    .line 78
    sget p2, Lcn/codemao/android/sketch/R$styleable;->VerticalSeekBar_vs_traceColor:I

    const/high16 p3, 0x1a000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceColor:I

    .line 79
    sget p2, Lcn/codemao/android/sketch/R$styleable;->VerticalSeekBar_vs_progressbg:I

    const p3, -0x4c6b8327

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->selectColor:I

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/VerticalSeekBar;->init()V

    return-void
.end method

.method private fixLocationY()V
    .registers 5

    .line 189
    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    iget v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbHeight:I

    shr-int/lit8 v2, v1, 0x1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_11

    shr-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    .line 190
    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    goto :goto_22

    .line 191
    :cond_11
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    shr-int/lit8 v3, v1, 0x1

    sub-int v3, v2, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_22

    shr-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, v0

    int-to-float v0, v2

    .line 192
    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    :cond_22
    :goto_22
    return-void
.end method

.method private init()V
    .registers 5

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    .line 91
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->iamgePaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->icon_thumb:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41b00000  # 22.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_47

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_45

    .line 98
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    :cond_45
    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    .line 103
    :cond_47
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbHeight:I

    .line 104
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbWidth:I

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f000000  # 0.5f

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public addOnSlideChangeListener(Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 274
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 275
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public getProgress()I
    .registers 2

    .line 260
    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    float-to-int v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 265
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    :cond_7
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 210
    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbHeight:I

    int-to-float v1, v0

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v1, v1, v2

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->maxProgress:I

    int-to-float v3, v2

    iget v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    mul-float v3, v3, v0

    int-to-float v0, v2

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    .line 215
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 220
    iget-object v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    iget-object v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->unSelectColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->selF:Landroid/graphics/RectF;

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    iget v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 226
    iget-object v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 227
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->selF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 228
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v3

    int-to-float v3, v3

    .line 230
    iget-object v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 231
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->selectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->unselF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 234
    iget v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 235
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 236
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v3

    int-to-float v3, v3

    .line 238
    iget-object v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    iget-object v1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    sub-float v3, v2, v0

    iput v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    .line 242
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 243
    iget-object v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->iamgePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->width:I

    .line 118
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    .line 119
    iget p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    div-int/lit8 p2, p1, 0x2

    .line 120
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    .line 121
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->rectF:Landroid/graphics/RectF;

    .line 122
    iget p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    iget p3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    shr-int/lit8 p3, p3, 0x1

    sub-int/2addr p2, p3

    iget p3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceWidth:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 123
    iget-object p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p2, p3

    iget p4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceWidth:I

    int-to-float v0, p4

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 124
    iget-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->rectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->centerX:I

    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progressWidth:I

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p2, v0

    add-int/2addr p2, p4

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 125
    iget p2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    int-to-float p2, p2

    iget-object p4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr p4, p3

    sub-float/2addr p2, p4

    iget p3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->traceWidth:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 126
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->selF:Landroid/graphics/RectF;

    .line 127
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->unselF:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8c

    if-eq v0, v1, :cond_6e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6e

    goto/16 :goto_9a

    .line 150
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->downY:F

    sub-float/2addr v0, v2

    .line 152
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->TouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9a

    .line 153
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    .line 155
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/VerticalSeekBar;->fixLocationY()V

    .line 157
    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->maxProgress:I

    int-to-float v2, v0

    iget v3, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->locationY:F

    iget v4, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->thumbHeight:I

    shr-int/lit8 v5, v4, 0x1

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v3, v4

    int-to-float v0, v0

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    const/4 v0, 0x0

    .line 159
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->downY:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 164
    iget-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_57
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;

    .line 165
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    float-to-int v2, v2

    invoke-virtual {v0, p0, v2}, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;->onProgress(Lcn/codemao/android/sketch/view/VerticalSeekBar;I)V

    goto :goto_57

    .line 167
    :cond_6a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_9a

    :cond_6e
    const/high16 p1, 0x3f000000  # 0.5f

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;

    .line 178
    iget v2, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    float-to-int v2, v2

    invoke-virtual {v0, p0, v2}, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;->onStop(Lcn/codemao/android/sketch/view/VerticalSeekBar;I)V

    goto :goto_79

    :cond_8c
    const/high16 v0, 0x3f800000  # 1.0f

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->downY:F

    :cond_9a
    :goto_9a
    return v1
.end method

.method public setProgress(I)V
    .registers 3

    .line 252
    iget v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    if-nez v0, :cond_a

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->height:I

    :cond_a
    int-to-float p1, p1

    .line 255
    iput p1, p0, Lcn/codemao/android/sketch/view/VerticalSeekBar;->progress:F

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
