.class public final Lcom/qiniu/android/utils/AsyncRun;
.super Ljava/lang/Object;
.source "AsyncRun.java"


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static final mainThreadHandler:Landroid/os/Handler;

.field private static threadPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/qiniu/android/utils/AsyncRun;->mainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    .line 19
    sput v0, Lcom/qiniu/android/utils/AsyncRun;->threadPoolSize:I

    .line 20
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/AsyncRun;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static runInBack(Ljava/lang/Runnable;)V
    .registers 2

    .line 46
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static runInMain(Ljava/lang/Runnable;)V
    .registers 3

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 24
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 26
    :cond_e
    sget-object v0, Lcom/qiniu/android/utils/AsyncRun;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void
.end method
