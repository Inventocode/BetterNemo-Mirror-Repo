.class public final Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;
.super Landroid/widget/FrameLayout;
.source "KnCameraCoverView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKnCameraCoverView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KnCameraCoverView.kt\ncom/codemao/toolssdk/func/camera/KnCameraCoverView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,104:1\n441#2:105\n441#2:106\n*S KotlinDebug\n*F\n+ 1 KnCameraCoverView.kt\ncom/codemao/toolssdk/func/camera/KnCameraCoverView\n*L\n45#1:105\n62#1:106\n*E\n"
.end annotation


# instance fields
.field private coverHeight:F

.field private coverWidth:F

.field private isActor:Z

.field private isLandscape:Z

.field private webRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isActor:Z

    const p1, 0x3f1fbe77  # 0.624f

    .line 23
    iput p1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->webRate:F

    return-void
.end method

.method private final getCoverWidth()V
    .registers 6

    .line 26
    iget-boolean v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isActor:Z

    if-eqz v0, :cond_14

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    goto :goto_71

    .line 29
    :cond_14
    iget-boolean v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isLandscape:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_5e

    const/high16 v0, 0x42f00000  # 120.0f

    .line 30
    iput v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    .line 32
    iget v2, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->webRate:F

    mul-float v2, v2, v0

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverHeight:F

    .line 34
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "显示宽度:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",高度:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",coverHeight:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverHeight:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    goto :goto_71

    .line 36
    :cond_5e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->webRate:F

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    :goto_71
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "#80000000"

    const-string v1, "canvas"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 44
    :try_start_a
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 441
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-boolean v2, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isActor:Z

    if-nez v2, :cond_ae

    iget-boolean v2, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isLandscape:Z

    if-eqz v2, :cond_ae

    .line 49
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->getCoverWidth()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, p1

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 61
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 441
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 62
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 68
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    iget v4, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverHeight:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverHeight:F

    sub-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x41400000  # 12.0f

    .line 74
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 82
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "横版:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    goto :goto_108

    .line 86
    :cond_ae
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->getCoverWidth()V

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    sub-float/2addr v0, v2

    .line 88
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover宽度:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 89
    iget v5, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->coverWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, p1

    move v3, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f0} :catch_f1

    goto :goto_108

    :catch_f1
    move-exception p1

    .line 93
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "蒙层异常:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    :goto_108
    return-void
.end method

.method public final setOptions(Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 98
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isScene()Z

    move-result v2

    if-ne v2, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_16

    .line 99
    iput-boolean v1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isActor:Z

    .line 100
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isLandscape()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/toolssdk/func/camera/KnCameraCoverView;->isLandscape:Z

    :cond_16
    return-void
.end method
