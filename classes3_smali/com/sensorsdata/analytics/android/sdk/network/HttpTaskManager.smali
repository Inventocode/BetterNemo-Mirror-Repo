.class Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;
.super Ljava/lang/Object;
.source "HttpTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager$ThreadFactoryWithName;
    }
.end annotation


# static fields
.field private static final POOL_SIZE:I = 0x2

.field private static volatile executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 62
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getInstance()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .line 44
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2a

    .line 45
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_25

    .line 47
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager$ThreadFactoryWithName;

    const-string v2, "SA.DeepLinkRequest"

    invoke-direct {v9, v2}, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager$ThreadFactoryWithName;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 51
    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .line 53
    :cond_2a
    :goto_2a
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpTaskManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
