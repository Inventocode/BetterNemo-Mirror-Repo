.class public Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;
.super Landroid/view/View;
.source "WebViewProgressBar.java"


# instance fields
.field private itemHeight:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 23
    iput p3, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progress:I

    const/4 p3, 0x5

    .line 24
    iput p3, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->itemHeight:I

    const/4 p3, 0x0

    .line 27
    iput p3, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progressColor:I

    .line 39
    sget-object p3, Lcom/codemao/toolssdk/R$styleable;->toolsdk_WebViewProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 40
    sget p3, Lcom/codemao/toolssdk/R$styleable;->toolsdk_WebViewProgressBar_toolsdk_progress_color:I

    const-string v0, "#C5B0FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progressColor:I

    .line 41
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->initPaint(Landroid/content/Context;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;)V
    .registers 4

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    .line 47
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000  # 2.0f

    .line 48
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->itemHeight:I

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 52
    iget-object p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progressColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progress:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float v5, v0, v1

    iget v0, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->itemHeight:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 67
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_b

    .line 70
    iput p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->itemHeight:I

    :cond_b
    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->progress:I

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
