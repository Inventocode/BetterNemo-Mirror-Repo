.class public Landroidx/camera/core/processing/SettableSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "SettableSurface.java"


# instance fields
.field mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumerToNotify:Landroidx/camera/core/processing/SurfaceOutputImpl;

.field private final mCropRect:Landroid/graphics/Rect;

.field private mHasConsumer:Z

.field private mHasProvider:Z

.field private final mMirroring:Z

.field private mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

.field private mRotationDegrees:I

.field private final mSensorToBufferTransform:Landroid/graphics/Matrix;

.field private final mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:I


# direct methods
.method public static synthetic $r8$lambda$11w0wxFmnHIqstFbWVR241LuVcA(Landroidx/camera/core/processing/SettableSurface;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->lambda$close$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FcsZ0-Z5_W_4w-OjWeuMfYHbm98(Landroidx/camera/core/impl/DeferrableSurface;)V
    .registers 1

    invoke-static {p0}, Landroidx/camera/core/processing/SettableSurface;->lambda$setProvider$1(Landroidx/camera/core/impl/DeferrableSurface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mc5GP3qlr0Re5REt0tq3C54Co8I(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroidx/camera/core/processing/SettableSurface;->lambda$createSurfaceOutputFuture$2(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NdB3S7il6unqK5fq6KLjGATrgRI(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/SettableSurface;->lambda$new$0(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V
    .registers 9

    .line 109
    invoke-direct {p0, p2, p3}, Landroidx/camera/core/impl/DeferrableSurface;-><init>(Landroid/util/Size;I)V

    const/4 p3, 0x0

    .line 90
    iput-boolean p3, p0, Landroidx/camera/core/processing/SettableSurface;->mHasProvider:Z

    .line 92
    iput-boolean p3, p0, Landroidx/camera/core/processing/SettableSurface;->mHasConsumer:Z

    .line 110
    iput p1, p0, Landroidx/camera/core/processing/SettableSurface;->mTargets:I

    .line 111
    iput-object p4, p0, Landroidx/camera/core/processing/SettableSurface;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 113
    iput-object p6, p0, Landroidx/camera/core/processing/SettableSurface;->mCropRect:Landroid/graphics/Rect;

    .line 114
    iput p7, p0, Landroidx/camera/core/processing/SettableSurface;->mRotationDegrees:I

    .line 115
    iput-boolean p8, p0, Landroidx/camera/core/processing/SettableSurface;->mMirroring:Z

    .line 116
    new-instance p1, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/processing/SettableSurface;Landroid/util/Size;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SettableSurface;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private synthetic lambda$close$3()V
    .registers 2

    .line 291
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mConsumerToNotify:Landroidx/camera/core/processing/SurfaceOutputImpl;

    if-eqz v0, :cond_a

    .line 292
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->requestClose()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mConsumerToNotify:Landroidx/camera/core/processing/SurfaceOutputImpl;

    :cond_a
    return-void
.end method

.method private synthetic lambda$createSurfaceOutputFuture$2(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZLandroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v1, p0

    .line 268
    invoke-static/range {p6 .. p6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :try_start_4
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V
    :try_end_7
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_4 .. :try_end_7} :catch_39

    .line 274
    new-instance v0, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 275
    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v4

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v5

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v6

    move-object v2, v0

    move-object/from16 v3, p6

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Landroidx/camera/core/processing/SurfaceOutputImpl;-><init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V

    .line 277
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/processing/SettableSurface;)V

    .line 278
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 277
    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 279
    iput-object v0, v1, Landroidx/camera/core/processing/SettableSurface;->mConsumerToNotify:Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 280
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :catch_39
    move-exception v0

    move-object v2, v0

    .line 272
    invoke-static {v2}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/util/Size;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iput-object p2, p0, Landroidx/camera/core/processing/SettableSurface;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SettableFuture size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " hashCode: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$setProvider$1(Landroidx/camera/core/impl/DeferrableSurface;)V
    .registers 1

    .line 184
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->decrementUseCount()V

    .line 185
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method private notifyTransformationInfoUpdate()V
    .registers 5

    .line 391
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    if-eqz v0, :cond_10

    .line 392
    iget-object v1, p0, Landroidx/camera/core/processing/SettableSurface;->mCropRect:Landroid/graphics/Rect;

    iget v2, p0, Landroidx/camera/core/processing/SettableSurface;->mRotationDegrees:I

    const/4 v3, -0x1

    .line 393
    invoke-static {v1, v2, v3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->of(Landroid/graphics/Rect;II)Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Landroidx/camera/core/SurfaceRequest;->updateTransformationInfo(Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 289
    invoke-super {p0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 290
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/core/processing/SettableSurface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createSurfaceOutputFuture(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/SurfaceOutput$GlTransformOptions;",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            "IZ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/SurfaceOutput;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 264
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->mHasConsumer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Consumer can only be linked once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 265
    iput-boolean v1, p0, Landroidx/camera/core/processing/SettableSurface;->mHasConsumer:Z

    .line 266
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v8, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V

    .line 281
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 266
    invoke-static {v0, v8, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;
    .registers 3

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, v0}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroid/util/Range;)Landroidx/camera/core/SurfaceRequest;

    move-result-object p1

    return-object p1
.end method

.method public createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Landroid/util/Range;)Landroidx/camera/core/SurfaceRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/SurfaceRequest;"
        }
    .end annotation

    .line 224
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 226
    new-instance v0, Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {p0}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/camera/core/SurfaceRequest;-><init>(Landroid/util/Size;Landroidx/camera/core/impl/CameraInternal;ZLandroid/util/Range;)V

    .line 229
    :try_start_d
    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/processing/SettableSurface;->setProvider(Landroidx/camera/core/impl/DeferrableSurface;)V
    :try_end_14
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_d .. :try_end_14} :catch_1a

    .line 234
    iput-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mProviderSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 235
    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->notifyTransformationInfoUpdate()V

    return-object v0

    :catch_1a
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "Surface is somehow already closed"

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 362
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()I
    .registers 2

    .line 318
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedStreamFormat()I

    move-result v0

    return v0
.end method

.method public getMirroring()Z
    .registers 2

    .line 401
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->mMirroring:Z

    return v0
.end method

.method public getRotationDegrees()I
    .registers 2

    .line 369
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->mRotationDegrees:I

    return v0
.end method

.method public getSensorToBufferTransform()Landroid/graphics/Matrix;
    .registers 2

    .line 338
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .registers 2

    .line 311
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getPrescribedSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()I
    .registers 2

    .line 303
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->mTargets:I

    return v0
.end method

.method protected provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mSurfaceFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public setProvider(Landroidx/camera/core/impl/DeferrableSurface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 181
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/processing/SettableSurface;->setProvider(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 182
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->incrementUseCount()V

    .line 183
    invoke-virtual {p0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroidx/camera/core/processing/SettableSurface$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 186
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 183
    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setProvider(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 142
    iget-boolean v0, p0, Landroidx/camera/core/processing/SettableSurface;->mHasProvider:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Provider can only be linked once."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 143
    iput-boolean v1, p0, Landroidx/camera/core/processing/SettableSurface;->mHasProvider:Z

    .line 144
    iget-object v0, p0, Landroidx/camera/core/processing/SettableSurface;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {p1, v0}, Landroidx/camera/core/impl/utils/futures/Futures;->propagate(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method

.method public setRotationDegrees(I)V
    .registers 3

    .line 381
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 382
    iget v0, p0, Landroidx/camera/core/processing/SettableSurface;->mRotationDegrees:I

    if-ne v0, p1, :cond_8

    return-void

    .line 385
    :cond_8
    iput p1, p0, Landroidx/camera/core/processing/SettableSurface;->mRotationDegrees:I

    .line 386
    invoke-direct {p0}, Landroidx/camera/core/processing/SettableSurface;->notifyTransformationInfoUpdate()V

    return-void
.end method
