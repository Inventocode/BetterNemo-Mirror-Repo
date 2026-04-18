.class public Lcom/codemao/creativecenter/customview/CreativeScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CreativeScaleImageView.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/paint/ScaleControll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;
    }
.end annotation


# instance fields
.field private bitmapWidth:I

.field private isClick:Z

.field private isScaling:Z

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

.field private onImageClick:Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;

.field private scale:F

.field private startX:F

.field private startY:F

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x40800000  # 4.0f

    .line 17
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->maxScale:F

    const/high16 p2, 0x3f800000  # 1.0f

    .line 18
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    const/16 p2, -0x270f

    .line 25
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->bitmapWidth:I

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 26
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->values:[F

    .line 36
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40800000  # 4.0f

    .line 17
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->maxScale:F

    const/high16 p2, 0x3f800000  # 1.0f

    .line 18
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    const/16 p2, -0x270f

    .line 25
    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->bitmapWidth:I

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 26
    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->values:[F

    .line 41
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 45
    new-instance v0, Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcn/codemao/android/sketch/utils/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    return-void
.end method


# virtual methods
.method caculateWidth()V
    .registers 4

    .line 89
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->matrix:Landroid/graphics/Matrix;

    .line 90
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 93
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 95
    iput v2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->bitmapWidth:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->caculateWidth()V

    .line 81
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->onImageClick:Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;

    if-eqz p1, :cond_37

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->bitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;->onLeftChange(I)V

    :cond_37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1a

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v3, :cond_1a

    .line 106
    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    .line 109
    :cond_1a
    iget-boolean v4, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    if-eqz v4, :cond_27

    .line 110
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_27
    if-eqz v0, :cond_8a

    const/4 p1, 0x0

    if-eq v0, v3, :cond_68

    const/4 v4, 0x2

    if-eq v0, v4, :cond_30

    goto :goto_96

    .line 118
    :cond_30
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->startX:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_65

    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->startY:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_65

    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    if-eqz v0, :cond_65

    goto :goto_96

    .line 121
    :cond_65
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    goto :goto_96

    .line 126
    :cond_68
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    if-eqz v0, :cond_7a

    .line 127
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_85

    .line 128
    iput v1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_85

    .line 132
    :cond_7a
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    if-eqz v0, :cond_85

    .line 133
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->onImageClick:Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;

    if-eqz v0, :cond_85

    .line 134
    invoke-interface {v0, p0}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;->onClick(Landroid/view/View;)V

    .line 137
    :cond_85
    :goto_85
    iput-boolean v3, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isClick:Z

    .line 138
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->isScaling:Z

    goto :goto_96

    .line 114
    :cond_8a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->startX:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->startY:F

    :goto_96
    return v3
.end method

.method public resetScale()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    .line 70
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    const/16 v0, -0x270f

    .line 71
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->bitmapWidth:I

    return-void
.end method

.method public setMaxScale(F)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->maxScale:F

    return-void
.end method

.method public setOnImageClick(Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->onImageClick:Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;

    return-void
.end method

.method public setScale(F)V
    .registers 5

    .line 58
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    mul-float v1, v0, p1

    .line 59
    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->maxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    div-float p1, v2, v0

    :cond_c
    mul-float v0, v0, p1

    .line 62
    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 64
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->onImageClick:Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;

    if-eqz p1, :cond_1c

    .line 65
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeScaleImageView;->scale:F

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/customview/CreativeScaleImageView$OnImageClick;->onScaleChange(F)V

    :cond_1c
    return-void
.end method
