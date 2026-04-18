.class public Landroidx/camera/core/CameraEffect;
.super Ljava/lang/Object;
.source "CameraEffect.java"


# instance fields
.field private final mProcessorExecutor:Ljava/util/concurrent/Executor;

.field private final mSurfaceProcessor:Landroidx/camera/core/SurfaceProcessor;

.field private final mTargets:I


# virtual methods
.method public getProcessorExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 131
    iget-object v0, p0, Landroidx/camera/core/CameraEffect;->mProcessorExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getSurfaceProcessor()Landroidx/camera/core/SurfaceProcessor;
    .registers 2

    .line 141
    iget-object v0, p0, Landroidx/camera/core/CameraEffect;->mSurfaceProcessor:Landroidx/camera/core/SurfaceProcessor;

    return-object v0
.end method

.method public getTargets()I
    .registers 2

    .line 121
    iget v0, p0, Landroidx/camera/core/CameraEffect;->mTargets:I

    return v0
.end method
