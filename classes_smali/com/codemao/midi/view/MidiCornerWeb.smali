.class public Lcom/codemao/midi/view/MidiCornerWeb;
.super Landroid/webkit/WebView;
.source "MidiCornerWeb.java"


# instance fields
.field private paint1:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radiusArray:[F

.field private vHeight:I

.field private vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 37
    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/codemao/midi/view/MidiCornerWeb;->radiusArray:[F

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/MidiCornerWeb;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 37
    fill-array-data p3, :array_10

    iput-object p3, p0, Lcom/codemao/midi/view/MidiCornerWeb;->radiusArray:[F

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/MidiCornerWeb;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/midi/view/MidiCornerWeb;->paint1:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object p2, p0, Lcom/codemao/midi/view/MidiCornerWeb;->paint1:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p2, p0, Lcom/codemao/midi/view/MidiCornerWeb;->paint1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/codemao/midi/view/MidiCornerWeb;->paint2:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 p2, 0x41400000  # 12.0f

    .line 65
    invoke-static {p1, p2}, Lcom/codemao/midi/util/MidiScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 67
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/codemao/midi/view/MidiCornerWeb;->setRadius(FFFF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/codemao/midi/view/MidiCornerWeb;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 102
    :cond_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/MidiCornerWeb;->vWidth:I

    .line 88
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/MidiCornerWeb;->vHeight:I

    .line 90
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/view/MidiCornerWeb;->path:Landroid/graphics/Path;

    .line 91
    new-instance p2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/codemao/midi/view/MidiCornerWeb;->vWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/MidiCornerWeb;->vHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/codemao/midi/view/MidiCornerWeb;->radiusArray:[F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public setRadius(FFFF)V
    .registers 7

    .line 74
    iget-object v0, p0, Lcom/codemao/midi/view/MidiCornerWeb;->radiusArray:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 75
    aput p1, v0, v1

    const/4 p1, 0x2

    .line 76
    aput p2, v0, p1

    const/4 p1, 0x3

    .line 77
    aput p2, v0, p1

    const/4 p1, 0x4

    .line 78
    aput p3, v0, p1

    const/4 p1, 0x5

    .line 79
    aput p3, v0, p1

    const/4 p1, 0x6

    .line 80
    aput p4, v0, p1

    const/4 p1, 0x7

    .line 81
    aput p4, v0, p1

    return-void
.end method
