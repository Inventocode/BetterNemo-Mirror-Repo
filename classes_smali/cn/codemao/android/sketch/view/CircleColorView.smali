.class public Lcn/codemao/android/sketch/view/CircleColorView;
.super Landroid/view/View;
.source "CircleColorView.java"


# instance fields
.field private SHOW_GOU:Z

.field private autoDismiss:Z

.field private bitmapGou:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field private color:I

.field private handler:Landroid/os/Handler;

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private rectGF:Landroid/graphics/RectF;

.field private ringRadius:F

.field private selColor:I

.field private strokeWidth:I

.field private unselColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/view/CircleColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/CircleColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->SHOW_GOU:Z

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->autoDismiss:Z

    .line 39
    iput p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->color:I

    const p2, 0x4d8c77ff  # 2.945843E8f

    .line 44
    iput p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->unselColor:I

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->selColor:I

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->strokeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CircleColorView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->SHOW_GOU:Z

    return-void
.end method

.method private checkBitmap()V
    .registers 6

    .line 242
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 243
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->icon_choose:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    const/high16 v0, 0x41600000  # 14.0f

    .line 244
    iget v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->ringRadius:F

    mul-float v1, v1, v0

    const/high16 v0, 0x41500000  # 13.0f

    div-float/2addr v1, v0

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->rectGF:Landroid/graphics/RectF;

    .line 246
    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerY:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    sub-float v3, v2, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 247
    iget v3, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerX:F

    add-float v4, v3, v1

    iput v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    .line 248
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    .line 249
    iput v3, v0, Landroid/graphics/RectF;->left:F

    :cond_3b
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .registers 7

    .line 219
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CircleColorView;->isDrawColor()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 221
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_19

    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->selColor:I

    goto :goto_1b

    :cond_19
    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->unselColor:I

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerX:F

    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerY:F

    iget v3, p0, Lcn/codemao/android/sketch/view/CircleColorView;->ringRadius:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget-object v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget v1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerX:F

    iget v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerY:F

    iget v3, p0, Lcn/codemao/android/sketch/view/CircleColorView;->radius:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_55

    .line 235
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->SHOW_GOU:Z

    if-eqz v0, :cond_55

    .line 236
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/CircleColorView;->checkBitmap()V

    .line 237
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->rectGF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_55
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 122
    iget v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->color:I

    return v0
.end method

.method public isDrawColor()Z
    .registers 2

    .line 173
    iget v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->color:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isShowGou()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->SHOW_GOU:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 100
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->icon_choose:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    :cond_19
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 113
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 114
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 115
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->bitmapGou:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_12
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/CircleColorView;->drawCircle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, p3

    sub-int/2addr p1, p4

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    int-to-float p4, p1

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p4, v0

    int-to-float p3, p3

    add-float/2addr p4, p3

    .line 146
    iput p4, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerX:F

    int-to-float p3, p2

    div-float/2addr p3, v0

    int-to-float p4, v1

    add-float/2addr p3, p4

    .line 147
    iput p3, p0, Lcn/codemao/android/sketch/view/CircleColorView;->centerY:F

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->ringRadius:F

    .line 149
    iget p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->strokeWidth:I

    shr-int/lit8 p3, p2, 0x1

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->ringRadius:F

    .line 151
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->paint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->ringRadius:F

    iget p2, p0, Lcn/codemao/android/sketch/view/CircleColorView;->strokeWidth:I

    shr-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->radius:F

    return-void
.end method

.method public setAutoDismiss()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->autoDismiss:Z

    .line 85
    new-instance v0, Lcn/codemao/android/sketch/view/CircleColorView$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/CircleColorView$1;-><init>(Lcn/codemao/android/sketch/view/CircleColorView;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setColor(I)V
    .registers 5

    .line 160
    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->color:I

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 163
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->autoDismiss:Z

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1a
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 195
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStokeWidth(I)V
    .registers 3

    .line 127
    iget v0, p0, Lcn/codemao/android/sketch/view/CircleColorView;->strokeWidth:I

    if-lez v0, :cond_f

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->strokeWidth:I

    :cond_f
    return-void
.end method

.method public setUnselColor(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->unselColor:I

    return-void
.end method

.method public showGou(Z)V
    .registers 2

    .line 182
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/CircleColorView;->SHOW_GOU:Z

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
