.class public final Lcom/codemao/utils/util/CuThreadUtils;
.super Ljava/lang/Object;
.source "CuThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/utils/util/CuThreadUtils$UtilsThreadFactory;,
        Lcom/codemao/utils/util/CuThreadUtils$LinkedBlockingQueue4Util;,
        Lcom/codemao/utils/util/CuThreadUtils$ThreadPoolExecutor4Util;
    }
.end annotation


# static fields
.field private static final CPU_COUNT:I

.field private static final HANDLER:Landroid/os/Handler;

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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/codemao/utils/util/CuThreadUtils;->HANDLER:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/codemao/utils/util/CuThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/codemao/utils/util/CuThreadUtils;->CPU_COUNT:I

    .line 46
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    .line 37
    sget v0, Lcom/codemao/utils/util/CuThreadUtils;->CPU_COUNT:I

    return v0
.end method

.method public static getCachedPool()Ljava/util/concurrent/ExecutorService;
    .registers 1

    const/4 v0, -0x2

    .line 137
    invoke-static {v0}, Lcom/codemao/utils/util/CuThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;
    .registers 2

    const/4 v0, 0x5

    .line 975
    invoke-static {p0, v0}, Lcom/codemao/utils/util/CuThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .registers 5

    .line 979
    sget-object v0, Lcom/codemao/utils/util/CuThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    monitor-enter v0

    .line 981
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_27

    .line 983
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 984
    invoke-static {p0, p1}, Lcom/codemao/utils/util/CuThreadUtils$ThreadPoolExecutor4Util;->access$100(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 985
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 988
    :cond_27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_3e

    .line 990
    invoke-static {p0, p1}, Lcom/codemao/utils/util/CuThreadUtils$ThreadPoolExecutor4Util;->access$100(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-object v2

    :catchall_40
    move-exception p0

    .line 995
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    .line 77
    sget-object v0, Lcom/codemao/utils/util/CuThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
