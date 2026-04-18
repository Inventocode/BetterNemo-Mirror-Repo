.class public final Landroidx/camera/core/ImageAnalysis;
.super Landroidx/camera/core/UseCase;
.source "ImageAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageAnalysis$Builder;,
        Landroidx/camera/core/ImageAnalysis$Defaults;,
        Landroidx/camera/core/ImageAnalysis$OutputImageFormat;,
        Landroidx/camera/core/ImageAnalysis$BackpressureStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

.field private static final DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;


# instance fields
.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field final mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;


# direct methods
.method public static synthetic $r8$lambda$oTj_uUjtBmoxiUQD_sDJ5PfYTz8(Landroidx/camera/core/ImageAnalysis;Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/ImageAnalysis;->lambda$createPipeline$1(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qYfLQgKUsjs4t0wwgvwG8_sJ0ZY(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/camera/core/ImageAnalysis;->lambda$createPipeline$0(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Landroidx/camera/core/ImageAnalysis$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/ImageAnalysis$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    const/4 v0, 0x0

    .line 190
    sput-object v0, Landroidx/camera/core/ImageAnalysis;->DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;

    return-void
.end method

.method private isFlipWH(Landroidx/camera/core/impl/CameraInternal;)Z
    .registers 4

    .line 514
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->isOutputImageRotationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 515
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static synthetic lambda$createPipeline$0(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .registers 2

    .line 341
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    if-eqz p1, :cond_8

    .line 343
    invoke-virtual {p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    :cond_8
    return-void
.end method

.method private synthetic lambda$createPipeline$1(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .registers 6

    .line 352
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    const/4 p1, 0x0

    .line 354
    throw p1
.end method

.method private tryUpdateRelativeRotation()V
    .registers 2

    .line 714
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 716
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method clearPipeline()V
    .registers 2

    .line 376
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 377
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v0, :cond_d

    .line 378
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    :cond_d
    return-void
.end method

.method createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .registers 14

    .line 277
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 280
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->highPriorityExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 279
    invoke-interface {p2, v0}, Landroidx/camera/core/internal/ThreadConfig;->getBackgroundExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 283
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getBackpressureStrategy()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getImageQueueDepth()I

    move-result v1

    move v7, v1

    goto :goto_20

    :cond_1e
    const/4 v1, 0x4

    const/4 v7, 0x4

    .line 286
    :goto_20
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 287
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 288
    invoke-virtual {p2}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageReaderProxyProvider()Landroidx/camera/core/ImageReaderProxyProvider;

    move-result-object v3

    .line 289
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v6

    const-wide/16 v8, 0x0

    .line 288
    invoke-interface/range {v3 .. v9}, Landroidx/camera/core/ImageReaderProxyProvider;->newInstance(IIIIJ)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    goto :goto_57

    .line 292
    :cond_42
    new-instance v1, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 294
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 295
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 296
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v5

    .line 293
    invoke-static {v3, v4, v5, v7}, Landroidx/camera/core/ImageReaderProxys;->createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 300
    :goto_57
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/camera/core/ImageAnalysis;->isFlipWH(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v3

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    if-eqz v3, :cond_6f

    .line 301
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v5

    goto :goto_73

    :cond_6f
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    :goto_73
    if-eqz v3, :cond_7a

    .line 302
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    goto :goto_7e

    :cond_7a
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 303
    :goto_7e
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x23

    if-ne v6, v7, :cond_89

    const/4 v6, 0x1

    goto :goto_8b

    :cond_89
    const/16 v6, 0x23

    .line 306
    :goto_8b
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    if-ne v9, v8, :cond_99

    .line 307
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOutputImageFormat()I

    move-result v9

    if-ne v9, v7, :cond_99

    const/4 v7, 0x1

    goto :goto_9a

    :cond_99
    const/4 v7, 0x0

    .line 308
    :goto_9a
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v9

    if-ne v9, v8, :cond_bd

    .line 309
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v8

    if-eqz v8, :cond_b0

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    move-result v8

    if-nez v8, :cond_be

    :cond_b0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 310
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOnePixelShiftEnabled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v2, 0x0

    :cond_be
    :goto_be
    const/4 v4, 0x0

    if-nez v7, :cond_c6

    if-eqz v2, :cond_c4

    goto :goto_c6

    :cond_c4
    move-object v2, v4

    goto :goto_d3

    .line 317
    :cond_c6
    :goto_c6
    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy;

    .line 322
    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getMaxImages()I

    move-result v7

    .line 318
    invoke-static {v5, v3, v6, v7}, Landroidx/camera/core/ImageReaderProxys;->createIsolatedReader(IIII)Landroidx/camera/core/impl/ImageReaderProxy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/core/SafeCloseImageReaderProxy;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;)V

    :goto_d3
    if-nez v2, :cond_115

    .line 327
    invoke-direct {p0}, Landroidx/camera/core/ImageAnalysis;->tryUpdateRelativeRotation()V

    .line 329
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mImageAnalysisAbstractAnalyzer:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    invoke-virtual {v1, v3, v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 332
    invoke-static {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 334
    iget-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v3, :cond_e8

    .line 335
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 337
    :cond_e8
    new-instance v3, Landroidx/camera/core/impl/ImmediateSurface;

    invoke-virtual {v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v4

    .line 338
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getImageFormat()I

    move-result v5

    invoke-direct {v3, v4, p3, v5}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;Landroid/util/Size;I)V

    iput-object v3, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 339
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    .line 346
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 339
    invoke-interface {v3, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 348
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysis;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 351
    new-instance v1, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageAnalysis;Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)V

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    return-object v0

    .line 324
    :cond_115
    throw v4
.end method

.method public getBackpressureStrategy()I
    .registers 3

    .line 533
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getBackpressureStrategy(I)I

    move-result v0

    return v0
.end method

.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 657
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->IMAGE_ANALYSIS:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_13

    .line 662
    sget-object p1, Landroidx/camera/core/ImageAnalysis;->DEFAULT_CONFIG:Landroidx/camera/core/ImageAnalysis$Defaults;

    invoke-virtual {p1}, Landroidx/camera/core/ImageAnalysis$Defaults;->getConfig()Landroidx/camera/core/impl/ImageAnalysisConfig;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/camera/core/impl/Config$-CC;->mergeConfigs(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    move-result-object p2

    :cond_13
    if-nez p2, :cond_17

    const/4 p1, 0x0

    goto :goto_1f

    .line 666
    :cond_17
    invoke-virtual {p0, p2}, Landroidx/camera/core/ImageAnalysis;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    :goto_1f
    return-object p1
.end method

.method public getImageQueueDepth()I
    .registers 3

    .line 566
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getImageQueueDepth(I)I

    move-result v0

    return v0
.end method

.method public getOnePixelShiftEnabled()Ljava/lang/Boolean;
    .registers 3

    .line 603
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    sget-object v1, Landroidx/camera/core/ImageAnalysis;->DEFAULT_ONE_PIXEL_SHIFT_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getOnePixelShiftEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOutputImageFormat()I
    .registers 3

    .line 582
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->getOutputImageFormat(I)I

    move-result v0

    return v0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 689
    invoke-static {p1}, Landroidx/camera/core/ImageAnalysis$Builder;->fromConfig(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isOutputImageRotationEnabled()Z
    .registers 3

    .line 593
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 594
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 593
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/ImageAnalysisConfig;->isOutputImageRotationEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .registers 2

    const/4 v0, 0x0

    .line 677
    throw v0
.end method

.method public onDetached()V
    .registers 2

    .line 643
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->clearPipeline()V

    const/4 v0, 0x0

    .line 644
    throw v0
.end method

.method protected onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysis;->getOnePixelShiftEnabled()Ljava/lang/Boolean;

    move-result-object p2

    .line 253
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class v0, Landroidx/camera/core/internal/compat/quirk/OnePixelShiftQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    if-nez p2, :cond_10

    goto :goto_13

    .line 257
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    :goto_13
    const/4 p1, 0x0

    .line 255
    throw p1
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .registers 4

    .line 701
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageAnalysisConfig;

    .line 703
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Landroidx/camera/core/ImageAnalysis;->createPipeline(Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    return-object p1
.end method

.method public setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V
    .registers 2

    .line 509
    invoke-super {p0, p1}, Landroidx/camera/core/UseCase;->setSensorToBufferTransformMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x0

    .line 510
    throw p1
.end method

.method public setViewPortCropRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 497
    invoke-super {p0, p1}, Landroidx/camera/core/UseCase;->setViewPortCropRect(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 498
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAnalysis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
