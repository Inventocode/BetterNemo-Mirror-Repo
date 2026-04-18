.class final Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final MSG_FATAL_ERROR:I = 0x3

.field private static final MSG_FINISH:I = 0x1

.field private static final MSG_IO_EXCEPTION:I = 0x2

.field private static final MSG_START:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private canceled:Z

.field private currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field private errorCount:I

.field private executorThread:Ljava/lang/Thread;

.field private final loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile released:Z

.field private final startTimeMs:J

.field final synthetic this$0:Lcom/google/android/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 341
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 342
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 343
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 344
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 345
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    return-void
.end method

.method private execute()V
    .registers 3

    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$500(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish()V
    .registers 3

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-void
.end method

.method private getRetryDelayMillis()J
    .registers 3

    .line 515
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public cancel(Z)V
    .registers 10

    .line 365
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 369
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 370
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_28

    .line 372
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28

    .line 376
    :cond_18
    monitor-enter p0

    .line 377
    :try_start_19
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    .line 378
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->cancelLoad()V

    .line 379
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    .line 381
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 383
    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_47

    :cond_28
    :goto_28
    if-eqz p1, :cond_46

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 388
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 389
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    .line 394
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    :cond_46
    return-void

    :catchall_47
    move-exception p1

    .line 383
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 454
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_5

    return-void

    .line 457
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    return-void

    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9a

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->finish()V

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 466
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v6, v4, v2

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 468
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_2f

    .line 469
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 472
    :cond_2f
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_81

    const/4 v11, 0x2

    if-eq v0, v11, :cond_38

    goto :goto_99

    .line 483
    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 484
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 485
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 486
    invoke-interface/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    .line 487
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v1, :cond_59

    .line 488
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_99

    .line 489
    :cond_59
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-eq v0, v11, :cond_99

    .line 490
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$300(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v10, :cond_67

    .line 491
    iput v10, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    .line 494
    :cond_67
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    .line 495
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->access$400(Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    goto :goto_7d

    .line 496
    :cond_79
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    .line 493
    :goto_7d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->start(J)V

    goto :goto_99

    .line 475
    :cond_81
    :try_start_81
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_86} :catch_87

    goto :goto_99

    :catch_87
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 478
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->access$202(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_99
    :goto_99
    return-void

    .line 462
    :cond_9a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public maybeThrowError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 350
    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public run()V
    .registers 6

    const/4 v0, 0x2

    .line 402
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_6c
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_57

    .line 403
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->canceled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 404
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 405
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_54

    if-eqz v1, :cond_41

    :try_start_13
    const-string v1, "load:"

    .line 407
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_30
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_33} :catch_6c
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_33} :catch_57

    .line 409
    :try_start_33
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->load()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    .line 411
    :try_start_38
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    goto :goto_41

    :catchall_3c
    move-exception v1

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 412
    throw v1

    .line 414
    :cond_41
    :goto_41
    monitor-enter p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_42} :catch_6c
    .catch Ljava/lang/Error; {:try_start_38 .. :try_end_42} :catch_57

    const/4 v1, 0x0

    .line 415
    :try_start_43
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 417
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 418
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_51

    .line 419
    :try_start_49
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_aa

    .line 420
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_50} :catch_6c
    .catch Ljava/lang/Error; {:try_start_49 .. :try_end_50} :catch_57

    goto :goto_aa

    :catchall_51
    move-exception v1

    .line 418
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v1
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_54} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_54} :catch_6c
    .catch Ljava/lang/Error; {:try_start_53 .. :try_end_54} :catch_57

    :catchall_54
    move-exception v1

    .line 405
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v1
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_57} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_57} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_57} :catch_6c
    .catch Ljava/lang/Error; {:try_start_56 .. :try_end_57} :catch_57

    :catch_57
    move-exception v0

    .line 444
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_6b

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 445
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    .line 446
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 448
    :cond_6b
    throw v0

    :catch_6c
    move-exception v1

    .line 436
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 437
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_aa

    :catch_85
    move-exception v1

    .line 428
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 429
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_aa

    :catch_9e
    move-exception v1

    .line 423
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_aa

    .line 424
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public start(J)V
    .registers 7

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$100(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->access$102(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 358
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 360
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->execute()V

    :goto_21
    return-void
.end method
