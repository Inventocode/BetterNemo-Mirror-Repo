.class public Lcn/codemao/android/sketch/view/RoundView;
.super Landroid/view/View;
.source "RoundView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/RoundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/RoundView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->rectF:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x4dffffff  # 5.3687088E8f

    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/RoundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 47
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 48
    iget-object p1, p0, Lcn/codemao/android/sketch/view/RoundView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcn/codemao/android/sketch/view/RoundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
