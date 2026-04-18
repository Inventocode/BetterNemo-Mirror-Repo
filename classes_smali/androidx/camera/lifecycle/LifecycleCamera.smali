.class final Landroidx/camera/lifecycle/LifecycleCamera;
.super Ljava/lang/Object;
.source "LifecycleCamera.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/camera/core/Camera;


# instance fields
.field private final mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final mLock:Ljava/lang/Object;

.field private mReleased:Z

.field private mSuspended:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    .line 64
    iput-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mReleased:Z

    .line 71
    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 72
    iput-object p2, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 75
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 76
    invoke-virtual {p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->attachUseCases()V

    goto :goto_2a

    .line 78
    :cond_27
    invoke-virtual {p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->detachUseCases()V

    .line 80
    :goto_2a
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method bind(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v1, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->addUseCases(Ljava/util/Collection;)V

    .line 207
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public getCameraInfo()Landroidx/camera/core/CameraInfo;
    .registers 2

    .line 263
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCameraUseCaseAdapter()Landroidx/camera/core/internal/CameraUseCaseAdapter;
    .registers 2

    .line 194
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    return-object v0
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 3

    .line 188
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 190
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUseCases()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isBound(Landroidx/camera/core/UseCase;)Z
    .registers 4

    .line 175
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    .line 177
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 105
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 106
    :try_start_3
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->removeUseCases(Ljava/util/Collection;)V

    .line 107
    monitor-exit p1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_c

    .line 122
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setActiveResumingMode(Z)V

    :cond_c
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_c

    .line 114
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setActiveResumingMode(Z)V

    :cond_c
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 85
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_3
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mReleased:Z

    if-nez v0, :cond_10

    .line 87
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->attachUseCases()V

    .line 90
    :cond_10
    monitor-exit p1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 95
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_3
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mReleased:Z

    if-nez v0, :cond_10

    .line 97
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v0}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->detachUseCases()V

    .line 100
    :cond_10
    monitor-exit p1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .registers 3

    .line 280
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v0, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    return-void
.end method

.method public suspend()V
    .registers 3

    .line 135
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    if-eqz v1, :cond_9

    .line 137
    monitor-exit v0

    return-void

    .line 140
    :cond_9
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    .line 142
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method unbindAll()V
    .registers 4

    .line 229
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mCameraUseCaseAdapter:Landroidx/camera/core/internal/CameraUseCaseAdapter;

    invoke-virtual {v1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->getUseCases()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->removeUseCases(Ljava/util/Collection;)V

    .line 231
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public unsuspend()V
    .registers 4

    .line 154
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    if-nez v1, :cond_9

    .line 156
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mSuspended:Z

    .line 160
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 161
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 163
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
