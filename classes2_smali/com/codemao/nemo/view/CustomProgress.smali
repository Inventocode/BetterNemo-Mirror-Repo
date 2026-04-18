.class public final Lcom/codemao/nemo/view/CustomProgress;
.super Landroid/view/View;
.source "CustomProgress.kt"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private clipColor:Ljava/lang/Integer;

.field private final defaultPadding:F

.field private lineHight:F

.field private final paint:Landroid/graphics/Paint;

.field private progress:I

.field private startX:F

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000  # 12.0f

    .line 31
    iput v0, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x41400000  # 12.0f

    .line 31
    iput p3, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 42
    sget-object v1, Lcom/codemao/nemo/R$styleable;->CustomProgress:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    const/4 p2, 0x1

    if-eqz p1, :cond_1d

    const-string v1, "#FF6732"

    .line 45
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 43
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :goto_1e
    iput-object v1, p0, Lcom/codemao/nemo/view/CustomProgress;->clipColor:Ljava/lang/Integer;

    if-eqz p1, :cond_31

    const/4 v0, 0x0

    const-string v1, "#F49C61"

    .line 49
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_31
    iput-object v0, p0, Lcom/codemao/nemo/view/CustomProgress;->backgroundColor:Ljava/lang/Integer;

    const/high16 v0, 0x41200000  # 10.0f

    if-eqz p1, :cond_3c

    const/4 v1, 0x2

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    :cond_3c
    iput v0, p0, Lcom/codemao/nemo/view/CustomProgress;->strokeWidth:F

    if-eqz p1, :cond_43

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/nemo/view/CustomProgress;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final getProgress()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/nemo/view/CustomProgress;->progress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/codemao/nemo/view/CustomProgress;->backgroundColor:Ljava/lang/Integer;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_2d

    .line 78
    iget v3, p0, Lcom/codemao/nemo/view/CustomProgress;->startX:F

    .line 79
    iget v4, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v0, v1

    .line 81
    iget v6, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 82
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 77
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/codemao/nemo/view/CustomProgress;->clipColor:Ljava/lang/Integer;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget v0, p0, Lcom/codemao/nemo/view/CustomProgress;->progress:I

    if-eqz v0, :cond_68

    if-eqz p1, :cond_68

    .line 87
    iget v2, p0, Lcom/codemao/nemo/view/CustomProgress;->startX:F

    .line 88
    iget v3, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/view/CustomProgress;->startX:F

    sub-float/2addr v0, v1

    iget v4, p0, Lcom/codemao/nemo/view/CustomProgress;->progress:I

    int-to-float v4, v4

    mul-float v0, v0, v4

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float v4, v0, v1

    .line 90
    iget v5, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 91
    iget-object v6, p0, Lcom/codemao/nemo/view/CustomProgress;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 86
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_68
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/4 p2, 0x2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 72
    iget p1, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/codemao/nemo/view/CustomProgress;->startX:F

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/CustomProgress;->lineHight:F

    .line 66
    iget p1, p0, Lcom/codemao/nemo/view/CustomProgress;->defaultPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/CustomProgress;->startX:F

    return-void
.end method

.method public final setProgress(I)V
    .registers 3

    const/16 v0, 0x64

    if-le p1, v0, :cond_6

    const/16 p1, 0x64

    .line 36
    :cond_6
    iput p1, p0, Lcom/codemao/nemo/view/CustomProgress;->progress:I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
