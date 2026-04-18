.class public Lcn/codemao/android/sketch/xpopup/widget/BlankView;
.super Landroid/view/View;
.source "BlankView.java"


# instance fields
.field public color:I

.field private paint:Landroid/graphics/Paint;

.field public radius:I

.field private rect:Landroid/graphics/RectF;

.field public strokeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->radius:I

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->color:I

    const-string p1, "#DDDDDD"

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->strokeColor:I

    .line 22
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->radius:I

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->color:I

    const-string p1, "#DDDDDD"

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->strokeColor:I

    .line 27
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/widget/BlankView;->rect:Landroid/graphics/RectF;

    return-void
.end method
