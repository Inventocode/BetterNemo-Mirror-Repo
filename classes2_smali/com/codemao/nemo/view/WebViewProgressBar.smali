.class public Lcom/codemao/nemo/view/WebViewProgressBar;
.super Landroid/view/View;
.source "WebViewProgressBar.java"


# instance fields
.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private isDismissing:Z

.field private isLand:Z

.field private mPaint:Landroid/graphics/Paint;

.field private progress:I

.field private progressColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->isLand:Z

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progress:I

    .line 94
    new-instance p1, Lcom/codemao/nemo/view/WebViewProgressBar$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/WebViewProgressBar$1;-><init>(Lcom/codemao/nemo/view/WebViewProgressBar;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 38
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/WebViewProgressBar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->isLand:Z

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progress:I

    .line 94
    new-instance p1, Lcom/codemao/nemo/view/WebViewProgressBar$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/WebViewProgressBar$1;-><init>(Lcom/codemao/nemo/view/WebViewProgressBar;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 44
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/WebViewProgressBar;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/nemo/view/WebViewProgressBar;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->isDismissing:Z

    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/codemao/nemo/R$styleable;->WebViewProgressBar:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->isLand:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    const-string p1, "#ff6f60dd"

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progressColor:I

    .line 60
    iget-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-boolean v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->isLand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progress:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6f

    .line 86
    :cond_3c
    iget-object v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progress:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_6f
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 5

    monitor-enter p0

    .line 67
    :try_start_1
    iput p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->progress:I

    const/16 v0, 0x50

    if-lt p1, v0, :cond_27

    const-string p1, "alpha"

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 69
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/view/WebViewProgressBar;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 73
    :cond_27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 74
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
