.class public Lcom/codemao/nemo/view/ShadowView;
.super Landroid/view/View;
.source "ShadowView.java"


# instance fields
.field private cornerRadius:F

.field private paint:Landroid/graphics/Paint;

.field private shadowColor:I

.field private shadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/ShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/view/ShadowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget-object p3, Lcom/codemao/nemo/R$styleable;->ShadowView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_26

    const/4 p4, 0x2

    .line 39
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    .line 40
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/codemao/nemo/view/ShadowView;->cornerRadius:F

    const/4 p4, -0x1

    .line 41
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    iput p4, p0, Lcom/codemao/nemo/view/ShadowView;->shadowColor:I

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_31

    :cond_26
    const/high16 p1, 0x41200000  # 10.0f

    .line 44
    iput p1, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    .line 45
    iput p3, p0, Lcom/codemao/nemo/view/ShadowView;->cornerRadius:F

    const p1, -0x777778

    .line 46
    iput p1, p0, Lcom/codemao/nemo/view/ShadowView;->shadowColor:I

    :goto_31
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_5c

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    .line 52
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object p1, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/nemo/view/ShadowView;->shadowColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object p1, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    iget p4, p0, Lcom/codemao/nemo/view/ShadowView;->shadowColor:I

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_5c
    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/nemo/view/ShadowView;->cornerRadius:F

    return v0
.end method

.method public getShadowRadius()F
    .registers 2

    .line 71
    iget v0, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget v2, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    sub-float v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/ShadowView;->shadowRadius:F

    sub-float v4, v0, v1

    iget v6, p0, Lcom/codemao/nemo/view/ShadowView;->cornerRadius:F

    iget-object v7, p0, Lcom/codemao/nemo/view/ShadowView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
