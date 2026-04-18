.class public Lcom/codemao/nemo/view/SortDialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SortDialogLinearLayout.java"


# instance fields
.field private bottomLeftRadius:F

.field private bottomRightRadius:F

.field private imagePaint:Landroid/graphics/Paint;

.field private roundPaint:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokeRectf:Landroid/graphics/RectF;

.field private topLeftRadius:F

.field private topRightRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/SortDialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_14

    const/high16 p2, 0x40800000  # 4.0f

    .line 40
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    .line 41
    iput p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topLeftRadius:F

    .line 42
    iput p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topRightRadius:F

    .line 43
    iput p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomLeftRadius:F

    .line 44
    iput p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomRightRadius:F

    .line 46
    :cond_14
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 47
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->imagePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokePaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object p1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokeRectf:Landroid/graphics/RectF;

    return-void
.end method

.method private drawBottomLeft(Landroid/graphics/Canvas;)V
    .registers 9

    .line 111
    iget v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 113
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, v0

    .line 114
    iget v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomLeftRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    iget v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomLeftRadius:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomLeftRadius:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float v4, v4, v5

    invoke-direct {v3, v1, v6, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v2, v3, v0, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3c
    return-void
.end method

.method private drawBottomRight(Landroid/graphics/Canvas;)V
    .registers 10

    .line 125
    iget v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 128
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    int-to-float v2, v2

    .line 129
    iget v4, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomRightRadius:F

    sub-float v4, v2, v4

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget v4, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomRightRadius:F

    sub-float v4, v0, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->bottomRightRadius:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    sub-float v7, v2, v7

    mul-float v5, v5, v6

    sub-float v5, v0, v5

    invoke-direct {v4, v7, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 133
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_45
    return-void
.end method

.method private drawTopLeft(Landroid/graphics/Canvas;)V
    .registers 8

    .line 84
    iget v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    .line 85
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 86
    iget v2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topLeftRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 87
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    iget v2, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topLeftRadius:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topLeftRadius:F

    const/high16 v4, 0x40000000  # 2.0f

    mul-float v5, v3, v4

    mul-float v3, v3, v4

    invoke-direct {v2, v1, v1, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, -0x3d4c0000  # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 91
    iget-object v1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_33
    return-void
.end method

.method private drawTopRight(Landroid/graphics/Canvas;)V
    .registers 9

    .line 97
    iget v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3c

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .line 99
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, v0

    .line 100
    iget v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topRightRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 101
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topRightRadius:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->topRightRadius:F

    const/high16 v5, 0x40000000  # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float v4, v4, v5

    invoke-direct {v3, v6, v1, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, -0x3d4c0000  # -90.0f

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->imagePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/SortDialogLinearLayout;->drawTopLeft(Landroid/graphics/Canvas;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/SortDialogLinearLayout;->drawTopRight(Landroid/graphics/Canvas;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/SortDialogLinearLayout;->drawBottomLeft(Landroid/graphics/Canvas;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/SortDialogLinearLayout;->drawBottomRight(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokeRectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokeRectf:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000  # 4.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/codemao/nemo/view/SortDialogLinearLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
