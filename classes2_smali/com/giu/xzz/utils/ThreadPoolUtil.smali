.class public Lcom/giu/xzz/utils/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"


# static fields
.field private static volatile sExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private static getPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 17
    sget-object v0, Lcom/giu/xzz/utils/ThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/giu/xzz/utils/ThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    :cond_a
    sget-object v0, Lcom/giu/xzz/utils/ThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2

    .line 36
    :try_start_0
    invoke-static {}, Lcom/giu/xzz/utils/ThreadPoolUtil;->getPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
