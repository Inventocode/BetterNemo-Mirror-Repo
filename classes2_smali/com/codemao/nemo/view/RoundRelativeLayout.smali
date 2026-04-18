.class public Lcom/codemao/nemo/view/RoundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RoundRelativeLayout.java"


# instance fields
.field private bottomLeftRadius:F

.field private bottomRightRadius:F

.field private imagePaint:Landroid/graphics/Paint;

.field private roundPaint:Landroid/graphics/Paint;

.field private topLeftRadius:F

.field private topRightRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/RoundRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_14

    const/high16 p1, 0x41000000  # 8.0f

    .line 37
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    .line 38
    iput p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topLeftRadius:F

    .line 39
    iput p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topRightRadius:F

    .line 40
    iput p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomLeftRadius:F

    .line 41
    iput p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomRightRadius:F

    .line 43
    :cond_14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->imagePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private drawBottomLeft(Landroid/graphics/Canvas;)V
    .registers 9

    .line 93
    iget v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 94
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 95
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, v0

    .line 96
    iget v3, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomLeftRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    iget v3, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomLeftRadius:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomLeftRadius:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float v4, v4, v5

    invoke-direct {v3, v1, v6, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v2, v3, v0, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3c
    return-void
.end method

.method private drawBottomRight(Landroid/graphics/Canvas;)V
    .registers 10

    .line 107
    iget v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 110
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    int-to-float v2, v2

    .line 111
    iget v4, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomRightRadius:F

    sub-float v4, v2, v4

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    iget v4, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomRightRadius:F

    sub-float v4, v0, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->bottomRightRadius:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    sub-float v7, v2, v7

    mul-float v5, v5, v6

    sub-float v5, v0, v5

    invoke-direct {v4, v7, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 115
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_45
    return-void
.end method

.method private drawTopLeft(Landroid/graphics/Canvas;)V
    .registers 8

    .line 66
    iget v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 68
    iget v2, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topLeftRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget v2, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topLeftRadius:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topLeftRadius:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v5, v3, v4

    mul-float v3, v3, v4

    invoke-direct {v2, v1, v1, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, -0x3d4c0000  # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 73
    iget-object v1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_33
    return-void
.end method

.method private drawTopRight(Landroid/graphics/Canvas;)V
    .registers 9

    .line 79
    iget v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 80
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 81
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, v0

    .line 82
    iget v3, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topRightRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    iget v3, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topRightRadius:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->topRightRadius:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float v4, v4, v5

    invoke-direct {v3, v6, v1, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, -0x3d4c0000  # -90.0f

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/codemao/nemo/view/RoundRelativeLayout;->imagePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 56
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundRelativeLayout;->drawTopLeft(Landroid/graphics/Canvas;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundRelativeLayout;->drawTopRight(Landroid/graphics/Canvas;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundRelativeLayout;->drawBottomLeft(Landroid/graphics/Canvas;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/RoundRelativeLayout;->drawBottomRight(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
