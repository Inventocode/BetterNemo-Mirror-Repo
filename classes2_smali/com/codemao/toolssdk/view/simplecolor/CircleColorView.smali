.class public final Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;
.super Landroid/view/View;
.source "CircleColorView.kt"


# instance fields
.field private color:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#FFFFFF"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->color:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->paint:Landroid/graphics/Paint;

    .line 28
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#FFFFFF"

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->color:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->paint:Landroid/graphics/Paint;

    .line 28
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->color:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_1e
    return-void
.end method

.method public final setColor(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->color:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
