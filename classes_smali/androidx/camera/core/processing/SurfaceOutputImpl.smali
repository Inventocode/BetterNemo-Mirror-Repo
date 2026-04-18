.class final Landroidx/camera/core/processing/SurfaceOutputImpl;
.super Ljava/lang/Object;
.source "SurfaceOutputImpl.java"

# interfaces
.implements Landroidx/camera/core/SurfaceOutput;


# instance fields
.field private final mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseFutureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/core/SurfaceOutput$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mGlTransform:[F

.field private final mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field private final mInputCropRect:Landroid/graphics/Rect;

.field private final mInputSize:Landroid/util/Size;

.field private mIsClosed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMirroring:Z

.field private final mRotationDegrees:I


# direct methods
.method public static synthetic $r8$lambda$cpUdw5PmI40xm1R4FCMseskUltk(Landroidx/camera/core/processing/SurfaceOutputImpl;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceOutputImpl;->lambda$requestClose$1(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWwPzjnuAf6cQIuERfD2O176eSg(Landroidx/camera/core/processing/SurfaceOutputImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceOutputImpl;->lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/view/Surface;IILandroid/util/Size;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)V
    .registers 10

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 73
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    .line 106
    iput-object p5, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 107
    iput-object p6, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInputSize:Landroid/util/Size;

    .line 108
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInputCropRect:Landroid/graphics/Rect;

    .line 109
    iput-boolean p9, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mMirroring:Z

    .line 111
    sget-object p2, Landroidx/camera/core/SurfaceOutput$GlTransformOptions;->APPLY_CROP_ROTATE_AND_MIRRORING:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    if-ne p5, p2, :cond_2a

    .line 112
    iput p8, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    .line 113
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceOutputImpl;->calculateGlTransform()V

    goto :goto_2c

    .line 117
    :cond_2a
    iput p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    .line 120
    :goto_2c
    new-instance p1, Landroidx/camera/core/processing/SurfaceOutputImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/core/processing/SurfaceOutputImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/processing/SurfaceOutputImpl;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private calculateGlTransform()V
    .registers 10

    .line 279
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 282
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 283
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    const/high16 v4, -0x40800000  # -1.0f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 286
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    iget v5, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000  # 0.5f

    invoke-static {v0, v5, v6, v6}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    .line 289
    iget-boolean v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mMirroring:Z

    if-eqz v0, :cond_2d

    .line 290
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    invoke-static {v0, v1, v3, v2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 291
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    invoke-static {v0, v1, v4, v3, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 296
    :cond_2d
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInputSize:Landroid/util/Size;

    iget v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    invoke-static {v0, v4}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    .line 297
    iget-object v4, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInputSize:Landroid/util/Size;

    invoke-static {v4}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v4

    .line 298
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v5

    iget v6, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    iget-boolean v7, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mMirroring:Z

    .line 297
    invoke-static {v4, v5, v6, v7}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v4

    .line 299
    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mInputCropRect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 303
    iget v4, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 304
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    .line 305
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 306
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 307
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    .line 309
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    invoke-static {v0, v1, v4, v6, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 310
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mGlTransform:[F

    invoke-static {v0, v1, v7, v5, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFutureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p1, "SurfaceOutputImpl close future complete"

    return-object p1
.end method

.method private synthetic lambda$requestClose$1(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .line 165
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Consumer;

    const/4 v0, 0x0

    .line 166
    invoke-static {v0, p0}, Landroidx/camera/core/SurfaceOutput$Event;->of(ILandroidx/camera/core/SurfaceOutput;)Landroidx/camera/core/SurfaceOutput$Event;

    move-result-object v0

    .line 165
    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCloseFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mCloseFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public getRotationDegrees()I
    .registers 2

    .line 206
    iget v0, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mRotationDegrees:I

    return v0
.end method

.method public requestClose()V
    .registers 5

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 152
    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_8
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mEventListener:Landroidx/core/util/Consumer;

    if-nez v2, :cond_11

    goto :goto_1b

    .line 157
    :cond_11
    iget-boolean v3, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mIsClosed:Z

    if-nez v3, :cond_1b

    .line 158
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceOutputImpl;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    .line 162
    :goto_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_31

    if-eqz v2, :cond_30

    .line 165
    :try_start_1f
    new-instance v1, Landroidx/camera/core/processing/SurfaceOutputImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroidx/camera/core/processing/SurfaceOutputImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/processing/SurfaceOutputImpl;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception v0

    const-string v1, "SurfaceOutputImpl"

    const-string v2, "Processor executor closed. Close request not posted."

    .line 171
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    return-void

    :catchall_31
    move-exception v0

    .line 162
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method
