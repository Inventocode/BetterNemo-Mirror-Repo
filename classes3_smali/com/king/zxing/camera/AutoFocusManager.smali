.class final Lcom/king/zxing/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;
    }
.end annotation


# static fields
.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private focusing:Z

.field private outstandingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private stopped:Z

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/king/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "auto"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, "macro"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/king/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "preferences_auto_focus"

    const/4 v1, 0x1

    .line 53
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Lcom/king/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 54
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Lcom/king/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current focus mode \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'; use auto focus? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/king/zxing/camera/AutoFocusManager;->start()V

    return-void
.end method

.method private declared-synchronized autoFocusAgainLater()V
    .registers 4

    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1f

    .line 67
    new-instance v0, Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;

    invoke-direct {v0, p0}, Lcom/king/zxing/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/king/zxing/camera/AutoFocusManager;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    .line 69
    :try_start_e
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    iput-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_18
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_21

    goto :goto_1f

    :catch_19
    move-exception v0

    :try_start_1a
    const-string v1, "Could not request auto focus"

    .line 72
    invoke-static {v1, v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    .line 75
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancelOutstandingTask()V
    .registers 3

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_16

    .line 96
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_13

    .line 97
    iget-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_13
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 101
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3

    monitor-enter p0

    const/4 p1, 0x0

    .line 61
    :try_start_2
    iput-boolean p1, p0, Lcom/king/zxing/camera/AutoFocusManager;->focusing:Z

    .line 62
    invoke-direct {p0}, Lcom/king/zxing/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 63
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 78
    :try_start_1
    iget-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    .line 80
    iget-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->stopped:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->focusing:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    if-nez v0, :cond_22

    .line 82
    :try_start_10
    iget-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->focusing:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_18} :catch_19
    .catchall {:try_start_10 .. :try_end_18} :catchall_24

    goto :goto_22

    :catch_19
    move-exception v0

    :try_start_1a
    const-string v1, "Unexpected exception while focusing"

    .line 86
    invoke-static {v1, v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-direct {p0}, Lcom/king/zxing/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_24

    .line 92
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 104
    :try_start_2
    iput-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->stopped:Z

    .line 105
    iget-boolean v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_17

    .line 106
    invoke-direct {p0}, Lcom/king/zxing/camera/AutoFocusManager;->cancelOutstandingTask()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_19

    .line 109
    :try_start_b
    iget-object v0, p0, Lcom/king/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    goto :goto_17

    :catch_11
    move-exception v0

    :try_start_12
    const-string v1, "Unexpected exception while cancelling focusing"

    .line 112
    invoke-static {v1, v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    .line 115
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
