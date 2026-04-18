.class public Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;,
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;,
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ThreadUtils"

.field private static final TYPE_PRIORITY_POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TYPE_SINGLE:B = -0x1t


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, 0x5

    .line 50
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .registers 5

    .line 54
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_27

    .line 58
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->access$000(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 63
    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_3e

    .line 65
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->access$000(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-object v2

    :catchall_40
    move-exception p0

    .line 70
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public static getSinglePool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    const/4 v0, -0x1

    .line 42
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getSinglePool(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, -0x1

    .line 46
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
