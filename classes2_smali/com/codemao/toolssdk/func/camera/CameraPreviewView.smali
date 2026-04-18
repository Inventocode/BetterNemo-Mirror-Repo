.class public final Lcom/codemao/toolssdk/func/camera/CameraPreviewView;
.super Landroid/widget/FrameLayout;
.source "CameraPreviewView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCameraPreviewView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPreviewView.kt\ncom/codemao/toolssdk/func/camera/CameraPreviewView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,163:1\n441#2:164\n*S KotlinDebug\n*F\n+ 1 CameraPreviewView.kt\ncom/codemao/toolssdk/func/camera/CameraPreviewView\n*L\n80#1:164\n*E\n"
.end annotation


# instance fields
.field private closeListener:Landroid/view/View$OnClickListener;

.field private final context:Landroid/content/Context;

.field private final cornerRadiusPx:F

.field private final density:F

.field private final option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;


# direct methods
.method public static synthetic $r8$lambda$pkDQwS2Spn2u3fug2boQ1TydzQk(Lcom/codemao/toolssdk/view/MaskOverlayView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->setupOverlayView$lambda$8$lambda$5$lambda$4(Lcom/codemao/toolssdk/view/MaskOverlayView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y31UKnzGlajTXEMvFcV4SF4T6nI(Landroid/view/View;Landroid/view/View;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->setupOverlayView$lambda$8$lambda$7(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Landroid/view/View$OnClickListener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    .line 26
    iput-object p3, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->closeListener:Landroid/view/View$OnClickListener;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->density:F

    .line 31
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getRadius()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_2c

    :cond_2a
    const/high16 p2, 0x41a00000  # 20.0f

    :goto_2c
    mul-float p2, p2, p1

    iput p2, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->cornerRadiusPx:F

    .line 34
    sget p1, Lcom/codemao/toolssdk/R$id;->toolsdk_camera_preview_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 35
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->setupOverlayView()V

    return-void
.end method

.method private final drawMaskAndBorder(Landroid/graphics/Canvas;)V
    .registers 12

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getOverlayRectF(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    iget-object v2, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getOverlayRectFStroke(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    iget-object v3, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getStrokeRadius(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v6, v3

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v7, v3

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, p1

    .line 69
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v3

    .line 79
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const-string v4, "#80000000"

    .line 441
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 80
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v8, v4

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 87
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_68

    .line 90
    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 92
    :cond_68
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 94
    :goto_6b
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 98
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40800000  # 4.0f

    .line 99
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, -0x1

    .line 100
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x41a00000  # 20.0f

    aput v9, v7, v8

    const/high16 v8, 0x41200000  # 10.0f

    aput v8, v7, v3

    invoke-direct {v4, v7, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    if-lez v6, :cond_9c

    .line 105
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_bb

    .line 107
    :cond_9c
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a0

    goto :goto_bb

    :catch_a0
    move-exception p1

    .line 112
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "绘制半透明遮罩和虚线边框失败："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    :goto_bb
    return-void
.end method

.method private final setupOverlayView()V
    .registers 14

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_camera_preview_overlay:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    sget v1, Lcom/codemao/toolssdk/R$id;->camera_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_25

    :cond_24
    move-object v3, v5

    :goto_25
    const/4 v4, 0x0

    if-eqz v3, :cond_64

    .line 124
    iget-object v6, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v9}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getCloseTop()Ljava/lang/Float;

    move-result-object v9

    const/high16 v10, 0x41400000  # 12.0f

    if-eqz v9, :cond_42

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_44

    :cond_42
    const/high16 v9, 0x41400000  # 12.0f

    :goto_44
    invoke-virtual {v6, v7, v9}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 125
    iget-object v7, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v8}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getCloseRight()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_5d

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :cond_5d
    invoke-virtual {v7, v2, v10}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 122
    invoke-virtual {v3, v4, v6, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 129
    :cond_64
    sget v2, Lcom/codemao/toolssdk/R$id;->overlay_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/codemao/toolssdk/view/MaskOverlayView;

    if-eqz v6, :cond_8c

    const-string v2, "findViewById<MaskOverlayView>(R.id.overlay_view)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v6, v4}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setMaskColor(I)V

    .line 133
    new-instance v2, Lcom/codemao/toolssdk/func/camera/CameraPreviewView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v6}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/MaskOverlayView;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    .line 137
    invoke-static/range {v6 .. v12}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setDashedBorder$default(Lcom/codemao/toolssdk/view/MaskOverlayView;ZIF[FILjava/lang/Object;)V

    .line 139
    :cond_8c
    sget v2, Lcom/codemao/toolssdk/R$id;->tips:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v6, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_9d

    move-object v5, v3

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    :cond_9d
    if-eqz v5, :cond_bf

    .line 144
    iget-object v3, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "this.context"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-virtual {v6}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->getTextBottom()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_b7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_b8

    :cond_b7
    const/4 v6, 0x0

    :goto_b8
    invoke-virtual {v3, v2, v6}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 140
    invoke-virtual {v5, v4, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    :cond_bf
    new-instance v2, Lcom/codemao/toolssdk/func/camera/CameraPreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_ce

    goto :goto_d3

    :cond_ce
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_d3
    return-void
.end method

.method private static final setupOverlayView$lambda$8$lambda$5$lambda$4(Lcom/codemao/toolssdk/view/MaskOverlayView;)V
    .registers 5

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/view/MaskOverlayView;->setTransparentRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method private static final setupOverlayView$lambda$8$lambda$7(Landroid/view/View;Landroid/view/View;)Z
    .registers 2

    .line 148
    sget p1, Lcom/codemao/toolssdk/R$id;->camera_rotation:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_d

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :try_start_5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 43
    iget v5, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->cornerRadiusPx:F

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    .line 48
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->drawMaskAndBorder(Landroid/graphics/Canvas;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    goto :goto_65

    :catch_47
    move-exception v0

    .line 54
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "绘制圆角失败："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_65
    return-void
.end method

.method public final getPreviewView()Landroidx/camera/view/PreviewView;
    .registers 3

    .line 156
    sget v0, Lcom/codemao/toolssdk/R$id;->preview_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.preview_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/camera/view/PreviewView;

    return-object v0
.end method

.method public final setCloseListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraPreviewView;->closeListener:Landroid/view/View$OnClickListener;

    return-void
.end method
