.class public Lcom/nemo/commonui/xpopup/widget/CheckView;
.super Landroid/view/View;
.source "CheckView.java"


# instance fields
.field color:I

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/nemo/commonui/xpopup/widget/CheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/widget/CheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->color:I

    .line 45
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->path:Landroid/graphics/Path;

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000  # 2.0f

    .line 31
    invoke-static {p1, p3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->color:I

    if-nez v0, :cond_8

    return-void

    .line 51
    :cond_8
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .registers 3

    .line 40
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->color:I

    .line 41
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
