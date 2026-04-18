.class final Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CameraManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvailabilityCallbackExecutorWrapper"
.end annotation


# instance fields
.field private mDisabled:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;

.field final mWrappedCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;


# direct methods
.method public static synthetic $r8$lambda$56FTf5EKACVzet6KPCuIRXgw1Vo(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->lambda$onCameraAccessPrioritiesChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$KpgS7AIbmFNiaGs-1pVigV7EgbE(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->lambda$onCameraAvailable$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aa-E8e61WmNzAJjm3siG1mUQx1Y(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->lambda$onCameraUnavailable$2(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4

    .line 292
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mDisabled:Z

    .line 293
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 294
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method private synthetic lambda$onCameraAccessPrioritiesChanged$0()V
    .registers 2

    .line 310
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/ApiCompat$Api29Impl;->onCameraAccessPrioritiesChanged(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method private synthetic lambda$onCameraAvailable$1(Ljava/lang/String;)V
    .registers 3

    .line 320
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCameraUnavailable$2(Ljava/lang/String;)V
    .registers 3

    .line 329
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .registers 4

    .line 308
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mDisabled:Z

    if-nez v1, :cond_11

    .line 310
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 313
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 5

    .line 318
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mDisabled:Z

    if-nez v1, :cond_11

    .line 320
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 322
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5

    .line 327
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mDisabled:Z

    if-nez v1, :cond_11

    .line 329
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 331
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method setDisabled()V
    .registers 3

    .line 300
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 301
    :try_start_4
    iput-boolean v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;->mDisabled:Z

    .line 302
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
