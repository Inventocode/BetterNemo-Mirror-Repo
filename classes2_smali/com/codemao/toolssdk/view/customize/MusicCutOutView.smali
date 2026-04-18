.class public final Lcom/codemao/toolssdk/view/customize/MusicCutOutView;
.super Landroid/view/View;
.source "MusicCutOutView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;,
        Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;
    }
.end annotation


# instance fields
.field private final arrowColor:I

.field private final arrowHeight:F

.field private final arrowWidth:F

.field private final bgMarginHorizontal:F

.field private bgMarginTop:F

.field private final bgPaddingHorizontal:F

.field private final bgPaint:Landroid/graphics/Paint;

.field private final bgRectF:Landroid/graphics/RectF;

.field private countFactor:D

.field private currentAnimator:Landroid/animation/ValueAnimator;

.field private currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

.field private final cutoutColor:I

.field private final cutoutMaskPaint:Landroid/graphics/Paint;

.field private final cutoutPaint:Landroid/graphics/Paint;

.field private final cutoutRectF:Landroid/graphics/RectF;

.field private final defaultItemMargin:F

.field private final dp1:F

.field private final dp8:F

.field private final drawVolumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final headColor:I

.field private final headWidth:F

.field private isCatchLeft:Z

.field private isCatchRight:Z

.field private itemMargin:F

.field private final itemPaint:Landroid/graphics/Paint;

.field private final itemRectF:Landroid/graphics/RectF;

.field private final itemWidth:F

.field private final maskColor:I

.field private maxCount:I

.field private playedIndexLocation:F

.field private playingIndex:F

.field private final playingLinePaint:Landroid/graphics/Paint;

.field private final preCutOutRectF:Landroid/graphics/RectF;

.field private final roundMargin:F

.field private final roundWidth:F

.field private seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

.field private final startPoint:Landroid/graphics/PointF;

.field private final tan50:D

.field private totalSeconds:F

.field private volumeDrawBgHeight:F

.field private final volumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ssay7F2l5q5pFv2ER2qPOrW0TtA(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingState$lambda$0(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000  # 3.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->defaultItemMargin:F

    .line 19
    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41700000  # 15.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41800000  # 16.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x41600000  # 14.0f

    invoke-static {p2, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundWidth:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40800000  # 4.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundMargin:F

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp1:F

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp8:F

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemRectF:Landroid/graphics/RectF;

    .line 31
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingLinePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutMaskPaint:Landroid/graphics/Paint;

    .line 38
    sget-object v6, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    iput-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const-string v6, "#FFFFE289"

    .line 42
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headColor:I

    const-string v6, "#FFA59256"

    .line 43
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowColor:I

    const-string v6, "#4DF7CD45"

    .line 44
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutColor:I

    const-string v7, "#0A000000"

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maskColor:I

    const/high16 v8, -0x40800000  # -1.0f

    .line 48
    iput v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    .line 49
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    iput-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->startPoint:Landroid/graphics/PointF;

    .line 52
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->preCutOutRectF:Landroid/graphics/RectF;

    const-wide v8, 0x3fe921fb54442d18L  # 0.7853981633974483

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->tan50:D

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    .line 54
    iput-wide v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->countFactor:D

    const-string v8, "#FF865DFF"

    .line 66
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "#FFEFF3FB"

    .line 72
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const-string v1, "#FFFF5DBE"

    .line 82
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000  # 3.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->defaultItemMargin:F

    .line 19
    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41700000  # 15.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41800000  # 16.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41600000  # 14.0f

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundWidth:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40800000  # 4.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40a00000  # 5.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundMargin:F

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x3f800000  # 1.0f

    invoke-static {p2, p3}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp1:F

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x41000000  # 8.0f

    invoke-static {p3, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp8:F

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemRectF:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingLinePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutMaskPaint:Landroid/graphics/Paint;

    .line 38
    sget-object v5, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    iput-object v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const-string v5, "#FFFFE289"

    .line 42
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headColor:I

    const-string v5, "#FFA59256"

    .line 43
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowColor:I

    const-string v5, "#4DF7CD45"

    .line 44
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutColor:I

    const-string v6, "#0A000000"

    .line 45
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maskColor:I

    const/high16 v7, -0x40800000  # -1.0f

    .line 48
    iput v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    .line 49
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->startPoint:Landroid/graphics/PointF;

    .line 52
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->preCutOutRectF:Landroid/graphics/RectF;

    const-wide v7, 0x3fe921fb54442d18L  # 0.7853981633974483

    .line 53
    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->tan50:D

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    .line 54
    iput-wide v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->countFactor:D

    const-string v7, "#FF865DFF"

    .line 66
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "#FFEFF3FB"

    .line 72
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const-string v0, "#FFFF5DBE"

    .line 82
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final computeSecondPerWidth(F)F
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private final drawHighlight(Landroid/graphics/Canvas;)V
    .registers 11

    .line 189
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    sub-float v4, v2, v1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 195
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 196
    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    add-float v4, v2, v1

    .line 197
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 198
    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 193
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 200
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 205
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    div-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 206
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    add-float v6, v0, v1

    .line 207
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float v7, v1, v0

    .line 208
    iget-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 203
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    add-float v4, v0, v1

    .line 212
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float v5, v1, v0

    .line 213
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 214
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    div-float/2addr v0, v2

    add-float v7, v1, v0

    .line 215
    iget-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    .line 210
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    add-float v4, v0, v1

    .line 220
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    div-float/2addr v0, v2

    sub-float v5, v1, v0

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 222
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float v7, v1, v0

    .line 223
    iget-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    .line 218
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 227
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float v5, v1, v0

    .line 228
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowWidth:F

    div-float/2addr v1, v2

    add-float v6, v0, v1

    .line 229
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->arrowHeight:F

    div-float/2addr v0, v2

    add-float v7, v1, v0

    .line 230
    iget-object v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    .line 225
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawMaskBg(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    .line 235
    iget-object v1, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutMaskPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maskColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v1, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v1, v1

    iget-wide v3, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->tan50:D

    mul-double v1, v1, v3

    .line 237
    iget-object v3, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-double v3, v5

    sub-double v10, v3, v1

    .line 240
    iget-object v3, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x0

    move-object/from16 v4, p1

    .line 239
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 242
    :goto_2b
    iget-object v5, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    const/4 v7, 0x3

    cmpg-double v9, v10, v5

    if-gtz v9, :cond_5b

    .line 243
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_4e

    double-to-float v13, v10

    .line 246
    iget-object v5, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v14, v5, Landroid/graphics/RectF;->top:F

    add-double v8, v10, v1

    double-to-float v15, v8

    .line 248
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 249
    iget-object v8, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v8

    .line 244
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    .line 253
    iget v5, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp8:F

    int-to-float v7, v7

    mul-float v5, v5, v7

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v10, v5

    goto :goto_2b

    .line 255
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 258
    iget-object v4, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v11, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v11

    add-double/2addr v4, v1

    .line 260
    iget-object v8, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    iget v10, v8, Landroid/graphics/RectF;->top:F

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v13, 0x0

    move-object/from16 v8, p1

    .line 259
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 262
    :goto_72
    iget-object v8, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    cmpl-double v10, v4, v8

    if-ltz v10, :cond_9d

    .line 263
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_90

    sub-double v8, v4, v1

    double-to-float v11, v8

    .line 266
    iget-object v8, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v12, v8, Landroid/graphics/RectF;->top:F

    double-to-float v13, v4

    .line 268
    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    .line 269
    iget-object v15, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    .line 264
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_90
    add-int/lit8 v3, v3, 0x1

    .line 273
    iget v8, v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp8:F

    int-to-float v9, v7

    mul-float v8, v8, v9

    const/4 v6, 0x2

    int-to-float v9, v6

    div-float/2addr v8, v9

    float-to-double v8, v8

    sub-double/2addr v4, v8

    goto :goto_72

    .line 275
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 436
    iget p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds(F)F

    move-result p0

    return p0
.end method

.method public static synthetic getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 458
    iget p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills(F)I

    move-result p0

    return p0
.end method

.method public static synthetic getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 442
    iget p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    :cond_6
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills(F)I

    move-result p0

    return p0
.end method

.method private final initCutoutRect()V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    .line 116
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v2, v3

    .line 117
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 118
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v3

    .line 119
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 115
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private final notifySeekChange()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    if-eqz v1, :cond_e

    invoke-interface {v1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;->onSeekChange(F)V

    :cond_e
    return-void
.end method

.method private static final playingState$lambda$0(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 485
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingIndex:F

    .line 486
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v0

    .line 487
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic reTidyData$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 310
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->reTidyData(Z)V

    return-void
.end method


# virtual methods
.method public final addAllVolumeData(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_f

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_f
    return-void
.end method

.method public final changeCountFactor(D)V
    .registers 3

    .line 307
    iput-wide p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->countFactor:D

    return-void
.end method

.method public final clearVolumeList()V
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final cutoutState()V
    .registers 2

    .line 463
    sget-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    .line 464
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 465
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final getCutoutSeconds(F)F
    .registers 4

    .line 437
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->computeSecondPerWidth(F)F

    move-result p1

    .line 438
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    float-to-double v0, v1

    .line 439
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final getEndMills(F)I
    .registers 5

    .line 459
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->computeSecondPerWidth(F)F

    move-result p1

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getSeekChangeListener()Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    return-object v0
.end method

.method public final getStartMills(F)I
    .registers 5

    .line 443
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->computeSecondPerWidth(F)F

    move-result p1

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final getTotalSeconds()F
    .registers 2

    .line 57
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeDrawBgHeight:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginTop:F

    add-float/2addr v0, v2

    .line 126
    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v2, v3

    .line 128
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 131
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 132
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float v6, v3, v4

    .line 135
    iget v7, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginTop:F

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    sub-float v8, v3, v4

    .line 137
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeDrawBgHeight:F

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginTop:F

    add-float v9, v3, v4

    .line 138
    iget-object v10, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 133
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v3

    .line 140
    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    if-le v4, v5, :cond_69

    .line 141
    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    iget v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    add-float/2addr v4, v5

    neg-float v4, v4

    iget-object v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    :cond_69
    iget-object v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawVolumeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .line 144
    iget v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeDrawBgHeight:F

    mul-float v5, v5, v6

    const v7, 0x3f59999a  # 0.85f

    mul-float v8, v6, v7

    cmpl-float v8, v5, v8

    if-lez v8, :cond_8e

    mul-float v5, v6, v7

    :cond_8e
    const v7, 0x3c23d70a  # 0.01f

    mul-float v8, v6, v7

    cmpg-float v8, v5, v8

    if-gez v8, :cond_99

    mul-float v5, v6, v7

    :cond_99
    div-float/2addr v5, v1

    .line 152
    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemRectF:Landroid/graphics/RectF;

    neg-float v7, v5

    add-float/2addr v7, v0

    .line 153
    iget v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    add-float/2addr v8, v2

    add-float v9, v5, v0

    .line 152
    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v10, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v2

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    iget v5, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    iget v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    add-float/2addr v5, v6

    add-float/2addr v2, v5

    goto :goto_6f

    .line 158
    :cond_b5
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    iget v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    .line 161
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-ne v0, v1, :cond_ce

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    .line 162
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_e6

    :cond_ce
    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v0, v8, v0

    if-nez v0, :cond_d6

    const/4 v0, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    if-nez v0, :cond_e6

    .line 167
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingLinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    .line 166
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    :cond_e6
    :goto_e6
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    sget-object v2, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-eq v0, v2, :cond_ee

    if-ne v0, v1, :cond_12d

    .line 173
    :cond_ee
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->dp1:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 177
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 180
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawMaskBg(Landroid/graphics/Canvas;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->drawHighlight(Landroid/graphics/Canvas;)V

    :cond_12d
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    .line 99
    iget p3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget p4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr p4, p3

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float p4, p4, v0

    sub-float p4, p1, p4

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->defaultItemMargin:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    add-float/2addr v1, v2

    div-float/2addr p4, v1

    float-to-int p4, p4

    .line 98
    iput p4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    .line 100
    iget p4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundWidth:F

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->roundMargin:F

    mul-float v0, v0, v1

    add-float/2addr v0, p4

    iput v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginTop:F

    int-to-float p2, p2

    const/high16 v2, 0x40000000  # 2.0f

    mul-float p4, p4, v2

    sub-float/2addr p2, p4

    const/high16 p4, 0x40800000  # 4.0f

    mul-float v1, v1, p4

    sub-float/2addr p2, v1

    .line 101
    iput p2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeDrawBgHeight:F

    .line 102
    iget-object p4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    sub-float/2addr p1, p3

    add-float/2addr p2, v0

    invoke-virtual {p4, p3, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->initCutoutRect()V

    .line 109
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_45

    .line 110
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->reTidyData(Z)V

    :cond_45
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_ba

    if-eq v0, v4, :cond_a6

    if-eq v0, v3, :cond_1a

    const/4 p1, 0x3

    if-eq v0, p1, :cond_a6

    goto/16 :goto_126

    .line 388
    :cond_1a
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-ne v0, v1, :cond_126

    .line 389
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->startPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 390
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    int-to-float v2, v3

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    div-float/2addr v0, v2

    const/high16 v2, 0x43fa0000  # 500.0f

    mul-float v0, v0, v2

    .line 391
    iget-boolean v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchLeft:Z

    if-eqz v2, :cond_73

    .line 392
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->preCutOutRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    .line 393
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    add-float v5, p1, v1

    cmpg-float v5, v3, v5

    if-gez v5, :cond_59

    .line 394
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_6b

    .line 395
    :cond_59
    iget p1, v2, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, v0

    cmpg-float v1, v3, v1

    if-gez v1, :cond_66

    .line 396
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iput v3, p1, Landroid/graphics/RectF;->left:F

    goto :goto_6b

    .line 398
    :cond_66
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    sub-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 400
    :goto_6b
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->notifySeekChange()V

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_126

    .line 402
    :cond_73
    iget-boolean v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchRight:Z

    if-eqz v2, :cond_126

    .line 403
    iget-object v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->preCutOutRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    .line 404
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float v5, p1, v1

    cmpl-float v5, v3, v5

    if-lez v5, :cond_8c

    .line 405
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_9e

    .line 406
    :cond_8c
    iget p1, v2, Landroid/graphics/RectF;->left:F

    add-float v1, p1, v0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_99

    .line 407
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iput v3, p1, Landroid/graphics/RectF;->right:F

    goto :goto_9e

    .line 409
    :cond_99
    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    add-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 411
    :goto_9e
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->notifySeekChange()V

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_126

    .line 417
    :cond_a6
    iget-boolean p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchLeft:Z

    if-nez p1, :cond_ae

    iget-boolean p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchRight:Z

    if-eqz p1, :cond_126

    .line 418
    :cond_ae
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    if-eqz p1, :cond_126

    invoke-static {p0, v2, v4, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;->onSeekEnd(F)V

    goto :goto_126

    .line 372
    :cond_ba
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    const v5, 0x4415c000  # 599.0f

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_c4

    return v4

    .line 373
    :cond_c4
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    sget-object v5, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CutoutState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-eq v0, v5, :cond_ce

    sget-object v5, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    if-ne v0, v5, :cond_126

    .line 374
    :cond_ce
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v5, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 375
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->preCutOutRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    .line 376
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchRight:Z

    .line 377
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchLeft:Z

    .line 378
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->startPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    int-to-float v3, v3

    mul-float v7, v6, v3

    sub-float v7, v5, v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_10c

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_10c

    .line 379
    iput-boolean v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchLeft:Z

    .line 380
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    if-eqz p1, :cond_126

    invoke-static {p0, v2, v4, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;->onSeekStart(F)V

    goto :goto_126

    .line 381
    :cond_10c
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v0

    if-ltz v5, :cond_126

    mul-float v6, v6, v3

    add-float/2addr v0, v6

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_126

    .line 382
    iput-boolean v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->isCatchRight:Z

    .line 383
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    if-eqz p1, :cond_126

    invoke-static {p0, v2, v4, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;->onSeekStart(F)V

    :cond_126
    :goto_126
    return v4
.end method

.method public final playingState()V
    .registers 6

    .line 476
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 477
    :cond_7
    sget-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->PlayingState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 478
    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 479
    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 480
    invoke-static {p0, v1, v2, v3}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getEndMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v4

    invoke-static {p0, v1, v2, v3}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-long v1, v4

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 483
    new-instance v1, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final pushVolumeData(FZ)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    const/4 p1, 0x0

    .line 281
    :cond_6
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_14

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_14
    return-void
.end method

.method public final reTidyData(Z)V
    .registers 16

    .line 311
    iget v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    if-gtz v0, :cond_5

    return-void

    .line 315
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->defaultItemMargin:F

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    add-float/2addr v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    .line 316
    iget-wide v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->countFactor:D

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    sub-float/2addr v0, v1

    .line 317
    iput v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    .line 319
    iget-wide v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->countFactor:D

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    const/4 v0, 0x0

    const/4 v7, 0x1

    cmpg-double v8, v3, v5

    if-nez v8, :cond_4a

    const/4 v3, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    if-eqz v3, :cond_51

    .line 320
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->defaultItemMargin:F

    iput v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    .line 322
    :cond_51
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    neg-float v1, v1

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_5c

    const/high16 v1, -0x3f800000  # -4.0f

    .line 323
    iput v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    .line 326
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgMarginHorizontal:F

    iget v4, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v3, v4

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemWidth:F

    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->itemMargin:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 325
    iput v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 331
    iget-object v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget v3, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8b
    if-ge v4, v3, :cond_11f

    int-to-float v6, v4

    .line 335
    iget v8, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float v6, v6, v8

    const/4 v8, 0x0

    .line 337
    iget v9, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->maxCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-le v9, v10, :cond_f1

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    cmpg-double v13, v11, v9

    if-nez v13, :cond_ad

    const/4 v11, 0x1

    goto :goto_ae

    :cond_ad
    const/4 v11, 0x0

    :goto_ae
    if-nez v11, :cond_f1

    .line 338
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v5, v11

    .line 339
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 340
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e6

    .line 341
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    int-to-float v10, v5

    sub-float v10, v6, v10

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float/2addr v8, v5

    mul-float v10, v10, v8

    add-float/2addr v9, v10

    goto :goto_113

    .line 343
    :cond_e6
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_113

    :cond_f1
    float-to-int v9, v6

    if-gt v5, v9, :cond_10b

    move v10, v5

    .line 347
    :goto_f5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_106

    .line 348
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    add-float/2addr v8, v11

    :cond_106
    if-eq v10, v9, :cond_10b

    add-int/lit8 v10, v10, 0x1

    goto :goto_f5

    :cond_10b
    int-to-float v9, v7

    add-float/2addr v9, v6

    int-to-float v5, v5

    sub-float/2addr v9, v5

    float-to-int v5, v9

    int-to-float v5, v5

    div-float v9, v8, v5

    :goto_113
    float-to-int v5, v6

    .line 355
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8b

    .line 358
    :cond_11f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->clearVolumeList()V

    .line 359
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->volumeList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez p1, :cond_12c

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12c
    return-void
.end method

.method public final resetData()V
    .registers 2

    .line 299
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->initCutoutRect()V

    .line 300
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 301
    :cond_a
    sget-object v0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;->CollectionState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->currentState:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$DrawState;

    .line 302
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->clearVolumeList()V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final resetPlayedIndex()V
    .registers 2

    const/high16 v0, -0x40800000  # -1.0f

    .line 295
    iput v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    return-void
.end method

.method public final setEndMills(I)V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    int-to-float p1, p1

    .line 454
    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->computeSecondPerWidth(F)F

    move-result v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 453
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSeekChangeListener(Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->seekChangeListener:Lcom/codemao/toolssdk/view/customize/MusicCutOutView$SeekChangeListener;

    return-void
.end method

.method public final setStartMills(I)V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    int-to-float p1, p1

    .line 448
    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->computeSecondPerWidth(F)F

    move-result v1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->bgPaddingHorizontal:F

    add-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 447
    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 449
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTotalSeconds(F)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->totalSeconds:F

    return-void
.end method

.method public final updatePlayingIndex(F)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-static {p0, v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getStartMills$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    invoke-static {p0, v0, v1, v2}, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->getCutoutSeconds$default(Lcom/codemao/toolssdk/view/customize/MusicCutOutView;FILjava/lang/Object;)F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playingIndex:F

    .line 470
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->headWidth:F

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->cutoutRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v0

    .line 471
    iput p1, p0, Lcom/codemao/toolssdk/view/customize/MusicCutOutView;->playedIndexLocation:F

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
