.class public final Lcom/codemao/toolssdk/func/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;
    }
.end annotation


# instance fields
.field private camera:Landroidx/camera/core/Camera;

.field private final cameraExecutor:Ljava/util/concurrent/ExecutorService;

.field private cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private capture:Landroidx/camera/core/ImageCapture;

.field private captureRotation:Ljava/lang/Integer;

.field private commonStateListener:Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;

.field private final context:Landroid/content/Context;

.field private lensFacing:I

.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final prepareListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private preview:Landroidx/camera/core/Preview;

.field private final previewView:Landroidx/camera/view/PreviewView;


# direct methods
.method public static synthetic $r8$lambda$b1OYn1dLVYaDtMF8CkcKfY3f5-0(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->_init_$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4I-1db7wNZ3t6UGaH2ye_-VwAQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCamera$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/camera/view/PreviewView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 32
    iput-object p3, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    .line 33
    iput-object p4, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->prepareListener:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x1

    .line 41
    iput p2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lensFacing:I

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    invoke-static {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    const-string p3, "getInstance(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p3, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 66
    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 57
    invoke-interface {p2, p3, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/codemao/toolssdk/func/camera/CameraHelper;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cameraProviderFuture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :try_start_a
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 60
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v0, "获取cameraProvider"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->prepareListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCameraInternal()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_22

    goto :goto_39

    :catch_22
    move-exception p1

    const/16 v0, 0x3e8

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取cameraProvider异常:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->onError(ILjava/lang/String;)V

    :goto_39
    return-void
.end method

.method public static synthetic changeRotation$default(Lcom/codemao/toolssdk/func/camera/CameraHelper;IIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 256
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->changeRotation(II)V

    return-void
.end method

.method private final getCapture()Landroidx/camera/core/ImageCapture;
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture:Landroidx/camera/core/ImageCapture;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v0}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v0

    .line 87
    :cond_12
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture:Landroidx/camera/core/ImageCapture;

    .line 90
    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->captureRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_57

    if-nez v0, :cond_1b

    goto :goto_25

    .line 91
    :cond_1b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 92
    :goto_25
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->isFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->captureRotation:Ljava/lang/Integer;

    if-nez v0, :cond_30

    goto :goto_3f

    :cond_30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3f

    .line 93
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture:Landroidx/camera/core/ImageCapture;

    if-nez v0, :cond_3b

    goto :goto_3f

    :cond_3b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 95
    :cond_3f
    :goto_3f
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "拍照设置方向："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->captureRotation:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 97
    :cond_57
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture:Landroidx/camera/core/ImageCapture;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getPreview(Landroidx/camera/view/PreviewView;)Landroidx/camera/core/Preview;
    .registers 6

    .line 71
    sget-object v0, Landroidx/camera/view/PreviewView$ImplementationMode;->COMPATIBLE:Landroidx/camera/view/PreviewView$ImplementationMode;

    invoke-virtual {p1, v0}, Landroidx/camera/view/PreviewView;->setImplementationMode(Landroidx/camera/view/PreviewView$ImplementationMode;)V

    .line 72
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 73
    sget-object v1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "启动预览，preview方向:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->preview:Landroidx/camera/core/Preview;

    if-nez v0, :cond_37

    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 74
    :cond_37
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->preview:Landroidx/camera/core/Preview;

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getSelector(I)Landroidx/camera/core/CameraSelector;
    .registers 3

    .line 82
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object p1

    const-string v0, "Builder().requireLensFacing(lensFacing).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final onError(ILjava/lang/String;)V
    .registers 4

    .line 348
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/func/camera/CameraLog;->e(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->commonStateListener:Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;->onCameraError(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method private final startCamera(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const/16 p1, 0x3e9

    const-string p2, "cameraProvider为空,无法启用摄像头"

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->onError(ILjava/lang/String;)V

    return v0

    .line 112
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 115
    invoke-direct {p0, p4}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getSelector(I)Landroidx/camera/core/CameraSelector;

    move-result-object p4

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/camera/core/UseCase;

    .line 116
    invoke-direct {p0, p3}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getPreview(Landroidx/camera/view/PreviewView;)Landroidx/camera/core/Preview;

    move-result-object p3

    aput-object p3, v1, v0

    .line 117
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCapture()Landroidx/camera/core/ImageCapture;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 113
    invoke-virtual {p1, p2, p4, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->camera:Landroidx/camera/core/Camera;

    if-eqz p1, :cond_40

    .line 119
    invoke-interface {p1}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-interface {p1}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_40

    sget-object p3, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;

    new-instance p4, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3}, Lcom/codemao/toolssdk/func/camera/CameraHelper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 167
    :cond_40
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->commonStateListener:Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;->onCameraReady()V

    .line 168
    :cond_47
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string p2, "摄像头启动成功"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4e} :catch_4f

    return v2

    :catch_4f
    move-exception p1

    const/4 p2, 0x0

    .line 171
    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->camera:Landroidx/camera/core/Camera;

    const/16 p2, 0x3ea

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "摄像头启用失败:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->onError(ILjava/lang/String;)V

    return v0
.end method

.method private static final startCamera$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final startCameraInternal()Z
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    iget v3, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lensFacing:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCamera(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final capture(Lkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroidx/camera/core/ImageProxy;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCapture()Landroidx/camera/core/ImageCapture;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/codemao/toolssdk/func/camera/CameraHelper$capture$1;

    invoke-direct {v2, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper$capture$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/ImageCapture;->takePicture(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;)V

    return-void
.end method

.method public final captureFile(Landroid/content/Context;Lkotlin/jvm/functions/Function3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CTCameraUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->isFrontFacing()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/func/camera/CTCameraUtils;->getCacheOptions(Landroid/content/Context;Z)Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object p1

    .line 238
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "开始拍照，结果为照片文件"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCapture()Landroidx/camera/core/ImageCapture;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    .line 242
    new-instance v2, Lcom/codemao/toolssdk/func/camera/CameraHelper$captureFile$1;

    invoke-direct {v2, p2}, Lcom/codemao/toolssdk/func/camera/CameraHelper$captureFile$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 239
    invoke-virtual {v0, p1, v1, v2}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method

.method public final changeRotation(II)V
    .registers 9

    .line 261
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_1a

    .line 262
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    if-eqz v0, :cond_25

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 264
    :cond_25
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "父布局宽高："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_56

    const/4 v5, 0x3

    if-eq p1, v5, :cond_53

    if-eq p1, v3, :cond_50

    const/4 v5, 0x0

    goto :goto_58

    :cond_50
    const/high16 v5, 0x43870000  # 270.0f

    goto :goto_58

    :cond_53
    const/high16 v5, 0x43340000  # 180.0f

    goto :goto_58

    :cond_56
    const/high16 v5, 0x42b40000  # 90.0f

    :goto_58
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setRotation(F)V

    if-eq p1, v4, :cond_8b

    if-eq p1, v3, :cond_60

    goto :goto_b5

    .line 278
    :cond_60
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_73

    :cond_6d
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_73
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_88

    :cond_82
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_88
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_b5

    .line 273
    :cond_8b
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9e

    :cond_98
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_9e
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 274
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b3

    :cond_ad
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_b3
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    :goto_b5
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 283
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 284
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->captureRotation:Ljava/lang/Integer;

    .line 285
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCapture()Landroidx/camera/core/ImageCapture;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/camera/core/ImageCapture;->setTargetRotation(I)V

    .line 287
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "修改当前拍照方向为:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final changeRotation2(F)V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->relayoutPreviewView(F)V

    .line 294
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    return-void
.end method

.method public final close()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 328
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->commonStateListener:Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper$CameraStateListener;->onCameraClose()V

    :cond_e
    return-void
.end method

.method public final destroy()V
    .registers 2

    .line 357
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->close()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 359
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->camera:Landroidx/camera/core/Camera;

    .line 360
    iput-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->capture:Landroidx/camera/core/ImageCapture;

    .line 361
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final getCurrentLensFacing()I
    .registers 2

    .line 332
    iget v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lensFacing:I

    return v0
.end method

.method public final getCurrentRotation()I
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->preview:Landroidx/camera/core/Preview;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/camera/core/Preview;->getTargetRotation()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final getPreviewViewRotation()F
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    return v0
.end method

.method public final isFrontFacing()Z
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->getCurrentLensFacing()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final relayoutPreviewView(F)V
    .registers 7

    .line 298
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_1a

    .line 299
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    if-eqz v0, :cond_25

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_25
    const/high16 v0, 0x42b40000  # 90.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-eqz v0, :cond_5d

    .line 303
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_45

    :cond_3f
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_45
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5a

    :cond_54
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_5a
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_91

    :cond_5d
    const/high16 v0, 0x41d80000  # 27.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_64

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    :goto_65
    if-eqz v3, :cond_91

    .line 308
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7a

    :cond_74
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_7a
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz v2, :cond_89

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8f

    :cond_89
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_8f
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 313
    iget-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final start()Z
    .registers 2

    .line 214
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCameraInternal()Z

    move-result v0

    return v0
.end method

.method public final stopPreview()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    :cond_7
    return-void
.end method

.method public final switch()Z
    .registers 3

    .line 318
    iget v0, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lensFacing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    .line 317
    :cond_6
    iput v1, p0, Lcom/codemao/toolssdk/func/camera/CameraHelper;->lensFacing:I

    .line 319
    invoke-direct {p0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCameraInternal()Z

    move-result v0

    return v0
.end method
