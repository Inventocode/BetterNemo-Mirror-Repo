.class Lcn/codemao/android/sketch/view/WheelSelect;
.super Ljava/lang/Object;
.source "WheelColorView.java"


# instance fields
.field private fontColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private radius:F

.field private rect:Landroid/graphics/RectF;

.field private rectbg:Landroid/graphics/RectF;

.field private startX:I


# direct methods
.method public constructor <init>(IIIILandroid/content/Context;)V
    .registers 8

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rectbg:Landroid/graphics/RectF;

    .line 630
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rect:Landroid/graphics/RectF;

    .line 633
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000  # 20.0f

    .line 636
    invoke-static {p5, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int p2, v0, p2

    .line 637
    div-int/lit8 p2, p2, 0x2

    .line 638
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->startX:I

    .line 640
    iput p4, p0, Lcn/codemao/android/sketch/view/WheelSelect;->fontColor:I

    .line 641
    iget-object p4, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rectbg:Landroid/graphics/RectF;

    sub-int/2addr p1, p2

    int-to-float p2, p1

    iput p2, p4, Landroid/graphics/RectF;->left:F

    const/4 p2, 0x0

    .line 642
    iput p2, p4, Landroid/graphics/RectF;->top:F

    add-int/2addr p1, v0

    int-to-float p1, p1

    .line 643
    iput p1, p4, Landroid/graphics/RectF;->right:F

    int-to-float p1, p3

    .line 644
    iput p1, p4, Landroid/graphics/RectF;->bottom:F

    const/high16 p1, 0x40400000  # 3.0f

    .line 646
    invoke-static {p5, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 648
    iget-object p2, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rect:Landroid/graphics/RectF;

    int-to-float p4, p1

    iput p4, p2, Landroid/graphics/RectF;->top:F

    .line 649
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rectbg:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p4

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 650
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p4

    iput v0, p2, Landroid/graphics/RectF;->right:F

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 651
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 652
    iget-object p1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000  # 2.0f

    .line 653
    invoke-static {p5, p1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->radius:F

    return-void
.end method


# virtual methods
.method public getSelRectF()Landroid/graphics/RectF;
    .registers 2

    .line 677
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStartX()I
    .registers 2

    .line 662
    iget v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->startX:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 668
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    const v1, -0x33000001  # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rectbg:Landroid/graphics/RectF;

    iget v1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->radius:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 671
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    iget-object v0, p0, Lcn/codemao/android/sketch/view/WheelSelect;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setFontColor(I)V
    .registers 2

    .line 657
    iput p1, p0, Lcn/codemao/android/sketch/view/WheelSelect;->fontColor:I

    return-void
.end method
