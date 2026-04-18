.class Lcn/codemao/android/sketch/view/WheelItem;
.super Ljava/lang/Object;
.source "WheelColorView.java"


# instance fields
.field private fontColor:I

.field private height:I

.field private mPaint:Landroid/graphics/Paint;

.field private padding:I

.field private rect:Landroid/graphics/RectF;

.field private startX:F

.field private width:I


# direct methods
.method public constructor <init>(FIIII)V
    .registers 8

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    .line 555
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->mPaint:Landroid/graphics/Paint;

    .line 558
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelItem;->startX:F

    .line 559
    iput p2, p0, Lcn/codemao/android/sketch/view/WheelItem;->width:I

    .line 560
    iput p3, p0, Lcn/codemao/android/sketch/view/WheelItem;->height:I

    .line 561
    iput p4, p0, Lcn/codemao/android/sketch/view/WheelItem;->fontColor:I

    .line 562
    iput p5, p0, Lcn/codemao/android/sketch/view/WheelItem;->padding:I

    const/4 p1, 0x0

    .line 564
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/WheelItem;->adjust(F)V

    return-void
.end method


# virtual methods
.method public adjust(F)V
    .registers 5

    .line 573
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->startX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->startX:F

    .line 574
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 575
    iget v1, p0, Lcn/codemao/android/sketch/view/WheelItem;->padding:I

    int-to-float v2, v1

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 576
    iget v2, p0, Lcn/codemao/android/sketch/view/WheelItem;->width:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 577
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->height:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public containsPoint(FF)Z
    .registers 4

    .line 615
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getFontColor()I
    .registers 2

    .line 606
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->fontColor:I

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .registers 2

    .line 581
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStartX()F
    .registers 2

    .line 585
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->startX:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 610
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/view/WheelItem;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setFontColor(I)V
    .registers 2

    .line 602
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelItem;->fontColor:I

    return-void
.end method

.method public setStartX(F)V
    .registers 5

    .line 594
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelItem;->startX:F

    .line 595
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelItem;->rect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 596
    iget v1, p0, Lcn/codemao/android/sketch/view/WheelItem;->padding:I

    int-to-float v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 597
    iget v2, p0, Lcn/codemao/android/sketch/view/WheelItem;->width:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 598
    iget p1, p0, Lcn/codemao/android/sketch/view/WheelItem;->height:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
