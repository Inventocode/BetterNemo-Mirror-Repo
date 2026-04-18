.class public Lcom/codemao/nemo/view/NewWorkColorTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "NewWorkColorTextView.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/NewWorkColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40000000  # 2.0f

    .line 38
    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    const/high16 p3, 0x40c00000  # 6.0f

    .line 39
    invoke-static {p1, p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 40
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->paint:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 77
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setBGColor(I)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/view/NewWorkColorTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public setBGColor(Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 52
    :cond_7
    :try_start_7
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/NewWorkColorTextView;->setBGColor(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void
.end method
