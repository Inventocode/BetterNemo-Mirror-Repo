.class public Landroidx/camera/core/processing/SurfaceProcessorNode;
.super Ljava/lang/Object;
.source "SurfaceProcessorNode.java"


# instance fields
.field final mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

.field private final mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

.field private mOutputEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field final mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;


# direct methods
.method public static synthetic $r8$lambda$dltsF3EuIPfUFmgekIUwAI1v36g(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/processing/SurfaceProcessorNode;->lambda$setupSurfaceUpdatePipeline$0(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_j9NILyKjS2RbHFVg6caXcbm50(Landroidx/camera/core/processing/SurfaceProcessorNode;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->lambda$release$1()V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 85
    iput-object p2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 86
    iput-object p3, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    return-void
.end method

.method private createOutputSurface(Landroidx/camera/core/processing/SettableSurface;)Landroidx/camera/core/processing/SettableSurface;
    .registers 16

    .line 110
    sget-object v0, Landroidx/camera/core/processing/SurfaceProcessorNode$2;->$SwitchMap$androidx$camera$core$SurfaceOutput$GlTransformOptions:[I

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 142
    new-instance v0, Landroidx/camera/core/processing/SettableSurface;

    .line 143
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v3

    .line 144
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v4

    .line 145
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v5

    .line 146
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x0

    .line 149
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 150
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v9

    .line 151
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/camera/core/processing/SettableSurface;-><init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V

    goto :goto_a4

    .line 154
    :cond_34
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown GlTransformOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 112
    :cond_4d
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v3

    .line 118
    invoke-static {v2}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 119
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    goto :goto_75

    .line 120
    :cond_71
    invoke-static {v1}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v4

    :goto_75
    move-object v7, v4

    .line 123
    new-instance v9, Landroid/graphics/Matrix;

    .line 124
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-direct {v9, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 125
    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v4, v2, v3}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object v0

    .line 127
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 129
    new-instance v0, Landroidx/camera/core/processing/SettableSurface;

    .line 130
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getTargets()I

    move-result v6

    .line 132
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getFormat()I

    move-result v8

    const/4 v10, 0x0

    .line 136
    invoke-static {v7}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroidx/camera/core/processing/SettableSurface;-><init>(ILandroid/util/Size;ILandroid/graphics/Matrix;ZLandroid/graphics/Rect;IZ)V

    :goto_a4
    return-object v0
.end method

.method private synthetic lambda$release$1()V
    .registers 3

    .line 206
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mOutputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_1c

    .line 207
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/SettableSurface;

    .line 209
    invoke-virtual {v1}, Landroidx/camera/core/processing/SettableSurface;->close()V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method private static synthetic lambda$setupSurfaceUpdatePipeline$0(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .registers 4

    .line 191
    invoke-virtual {p3}, Landroidx/camera/core/SurfaceRequest$TransformationInfo;->getRotationDegrees()I

    move-result p3

    invoke-interface {p0}, Landroidx/camera/core/SurfaceOutput;->getRotationDegrees()I

    move-result p0

    sub-int/2addr p3, p0

    .line 192
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result p0

    if-eqz p0, :cond_10

    neg-int p3, p3

    .line 195
    :cond_10
    invoke-static {p3}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/camera/core/processing/SettableSurface;->setRotationDegrees(I)V

    return-void
.end method

.method private sendSurfacesToProcessorWhenReady(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V
    .registers 10

    .line 161
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {p1, v0}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/SurfaceRequest;

    move-result-object v0

    .line 162
    iget-object v2, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mGlTransformOptions:Landroidx/camera/core/SurfaceOutput$GlTransformOptions;

    .line 163
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getRotationDegrees()I

    move-result v5

    .line 164
    invoke-virtual {p1}, Landroidx/camera/core/processing/SettableSurface;->getMirroring()Z

    move-result v6

    move-object v1, p2

    .line 162
    invoke-virtual/range {v1 .. v6}, Landroidx/camera/core/processing/SettableSurface;->createSurfaceOutputFuture(Landroidx/camera/core/SurfaceOutput$GlTransformOptions;Landroid/util/Size;Landroid/graphics/Rect;IZ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/camera/core/processing/SurfaceProcessorNode$1;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/camera/core/processing/SurfaceProcessorNode$1;-><init>(Landroidx/camera/core/processing/SurfaceProcessorNode;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    .line 181
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 162
    invoke-static {v1, v2, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 204
    iget-object v0, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mSurfaceProcessor:Landroidx/camera/core/processing/SurfaceProcessorInternal;

    invoke-interface {v0}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->release()V

    .line 205
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/SurfaceProcessorNode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/camera/core/processing/SurfaceProcessorNode$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/processing/SurfaceProcessorNode;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setupSurfaceUpdatePipeline(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/SurfaceOutput;)V
    .registers 7

    .line 187
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/processing/SurfaceProcessorNode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p1, p3}, Landroidx/camera/core/processing/SurfaceProcessorNode$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    invoke-virtual {p2, v0, v1}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    return-void
.end method

.method public transform(Landroidx/camera/core/processing/SurfaceEdge;)Landroidx/camera/core/processing/SurfaceEdge;
    .registers 5

    .line 96
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 97
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    const-string v0, "Multiple input stream not supported yet."

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/SettableSurface;

    .line 101
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->createOutputSurface(Landroidx/camera/core/processing/SettableSurface;)Landroidx/camera/core/processing/SettableSurface;

    move-result-object v0

    .line 102
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->sendSurfacesToProcessorWhenReady(Landroidx/camera/core/processing/SettableSurface;Landroidx/camera/core/processing/SettableSurface;)V

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/processing/SurfaceEdge;->create(Ljava/util/List;)Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/processing/SurfaceProcessorNode;->mOutputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object p1
.end method
