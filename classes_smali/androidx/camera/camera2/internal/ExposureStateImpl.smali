.class Landroidx/camera/camera2/internal/ExposureStateImpl;
.super Ljava/lang/Object;
.source "ExposureStateImpl.java"


# instance fields
.field private mExposureCompensation:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;I)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mLock:Ljava/lang/Object;

    .line 42
    iput p2, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mExposureCompensation:I

    return-void
.end method


# virtual methods
.method public getExposureCompensationIndex()I
    .registers 3

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget v1, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mExposureCompensation:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setExposureCompensationIndex(I)V
    .registers 3

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    iput p1, p0, Landroidx/camera/camera2/internal/ExposureStateImpl;->mExposureCompensation:I

    .line 55
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
