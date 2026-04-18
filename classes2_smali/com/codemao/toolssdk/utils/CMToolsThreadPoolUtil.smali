.class public Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;
.super Ljava/lang/Object;
.source "CMToolsThreadPoolUtil.java"


# static fields
.field private static volatile sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static volatile singleExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private static getPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 18
    sget-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    :cond_a
    sget-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getSingleThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 32
    sget-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 35
    :cond_a
    sget-object v0, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2

    .line 40
    :try_start_0
    invoke-static {}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->getPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public static singlePost(Ljava/lang/Runnable;)V
    .registers 2

    .line 48
    :try_start_0
    invoke-static {}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->getSingleThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
