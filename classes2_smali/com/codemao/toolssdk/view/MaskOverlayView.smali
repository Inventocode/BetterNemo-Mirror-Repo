.class public final Lcom/codemao/toolssdk/view/MaskOverlayView;
.super Landroid/view/View;
.source "MaskOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;,
        Lcom/codemao/toolssdk/view/MaskOverlayView$Circle;,
        Lcom/codemao/toolssdk/view/MaskOverlayView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaskOverlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaskOverlayView.kt\ncom/codemao/toolssdk/view/MaskOverlayView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,269:1\n441#2:270\n*S KotlinDebug\n*F\n+ 1 MaskOverlayView.kt\ncom/codemao/toolssdk/view/MaskOverlayView\n*L\n27#1:270\n*E\n"
.end annotation


# instance fields
.field private borderColor:I

.field private final borderPaint:Landroid/graphics/Paint;

.field private borderWidth:F

.field private cornerRadius:F

.field private dashPattern:[F

.field private maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private final rectF:Landroid/graphics/RectF;

.field private showDashedBorder:Z

.field private transparentCircle:Lcom/codemao/toolssdk/view/MaskOverlayView$Circle;

.field private transparentRect:Landroid/graphics/RectF;

.field private transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/view/MaskOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 24
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->rectF:Landroid/graphics/RectF;

    const-string p2, "#80000000"

    .line 441
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 27
    iput p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->maskColor:I

    .line 49
    sget-object p2, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    const/4 p2, -0x1

    .line 66
    iput p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderColor:I

    const/high16 p2, 0x40800000  # 4.0f

    .line 73
    iput p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderWidth:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 80
    fill-array-data p2, :array_5e

    iput-object p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->dashPattern:[F

    .line 94
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderWidth:F

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderColor:I

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance p1, Landroid/graphics/DashPathEffect;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->dashPattern:[F

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :array_5e
    .array-data 4
        0x41a00000  # 20.0f
        0x41200000  # 10.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 15
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/view/MaskOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final drawDashedBorder(Landroid/graphics/Canvas;)V
    .registers 8

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_50

    .line 145
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_50

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 150
    new-instance v2, Landroid/graphics/RectF;

    .line 151
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    .line 152
    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    .line 153
    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    .line 154
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    .line 150
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    iget v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->cornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4b

    .line 159
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->cornerRadius:F

    iget-object v2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_50

    .line 163
    :cond_4b
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public static synthetic setDashedBorder$default(Lcom/codemao/toolssdk/view/MaskOverlayView;ZIF[FILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, -0x1

    :cond_5
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/high16 p3, 0x40800000  # 4.0f

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 246
    fill-array-data p4, :array_1a

    .line 242
    :cond_15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setDashedBorder(ZIF[F)V

    return-void

    nop

    :array_1a
    .array-data 4
        0x41a00000  # 20.0f
        0x41200000  # 10.0f
    .end array-data
.end method


# virtual methods
.method public final getBorderColor()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderColor:I

    return v0
.end method

.method public final getBorderWidth()F
    .registers 2

    .line 73
    iget v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderWidth:F

    return v0
.end method

.method public final getDashPattern()[F
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->dashPattern:[F

    return-object v0
.end method

.method public final getMaskColor()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->maskColor:I

    return v0
.end method

.method public final getShowDashedBorder()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->showDashedBorder:Z

    return v0
.end method

.method public final getTransparentCircle()Lcom/codemao/toolssdk/view/MaskOverlayView$Circle;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentCircle:Lcom/codemao/toolssdk/view/MaskOverlayView$Circle;

    return-object v0
.end method

.method public final getTransparentType()Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->maskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    sget-object v1, Lcom/codemao/toolssdk/view/MaskOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    goto :goto_5b

    .line 115
    :cond_3c
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_5b

    .line 116
    iget v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->cornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_56

    .line 118
    iget-object v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->cornerRadius:F

    iget-object v2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5b

    .line 122
    :cond_56
    iget-object v1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 134
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 137
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->showDashedBorder:Z

    if-eqz v0, :cond_68

    .line 138
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/MaskOverlayView;->drawDashedBorder(Landroid/graphics/Canvas;)V

    :cond_68
    return-void
.end method

.method public final setBorderColor(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderColor:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBorderWidth(F)V
    .registers 2

    .line 75
    iput p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderWidth:F

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCornerRadius(F)V
    .registers 2

    .line 235
    iput p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->cornerRadius:F

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDashPattern([F)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->dashPattern:[F

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDashedBorder(ZIF[F)V
    .registers 6

    const-string v0, "pattern"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setShowDashedBorder(Z)V

    .line 249
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setBorderColor(I)V

    .line 250
    invoke-virtual {p0, p3}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setBorderWidth(F)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setDashPattern([F)V

    .line 254
    iget-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 256
    iget-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->borderPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/DashPathEffect;

    iget-object p3, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->dashPattern:[F

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setMaskAlpha(I)V
    .registers 3

    const/16 v0, 0xff

    .line 215
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 216
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setMaskColor(I)V

    return-void
.end method

.method public final setMaskColor(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->maskColor:I

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setShowDashedBorder(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->showDashedBorder:Z

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTransparentCircle(Lcom/codemao/toolssdk/view/MaskOverlayView$Circle;)V
    .registers 2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTransparentRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentRect:Landroid/graphics/RectF;

    .line 189
    sget-object p1, Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;->RECTANGLE:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setTransparentType(Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;)V

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTransparentType(Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/codemao/toolssdk/view/MaskOverlayView;->transparentType:Lcom/codemao/toolssdk/view/MaskOverlayView$TransparentType;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
