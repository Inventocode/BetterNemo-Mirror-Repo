.class public Lcom/chuanglan/shanyan_sdk/utils/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sy.cl2009.com"

    const-string v1, "fs.cl2009.com"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/r;->a:[Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/utils/r;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/utils/r;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_97

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_8
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_94

    array-length v6, v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_94

    aget-object v8, v5, v7

    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0.0.0.0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "255.255.255.255"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "127.0.0.1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "224.0.0.1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "169.254."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_53

    goto :goto_62

    :cond_53
    const-string v5, "PreFetchDnsShanYanTask"

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "getDomainName domainName"

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_72

    monitor-exit p0

    return-object p1

    :cond_62
    :goto_62
    :try_start_62
    const-string v8, "PreFetchDnsShanYanTask"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "getDomainName name"

    aput-object v10, v9, v4

    aput-object p1, v9, v3

    invoke-static {v8, v9}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_72

    :cond_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :catchall_72
    move-exception p1

    :try_start_73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v5, "PreFetchDnsShanYanTask"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "getDomainName  Exception_e="

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    const-string p1, "__耗时"

    aput-object p1, v6, v2

    const/4 p1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, p1

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_73 .. :try_end_94} :catchall_97

    :cond_94
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/utils/r;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/utils/r;->a:[Ljava/lang/String;

    return-object p0
.end method

.method private b()Ljava/util/concurrent/FutureTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/utils/r$1;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/utils/r$1;-><init>(Lcom/chuanglan/shanyan_sdk/utils/r;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 10

    const-string v0, "sy.cl2009.com"

    const-string v1, "PreFetchDnsShanYanTask"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_7
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/utils/r;->b()Ljava/util/concurrent/FutureTask;

    move-result-object v5

    iget-object v6, p0, Lcom/chuanglan/shanyan_sdk/utils/r;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_1a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    return-object v5

    :catch_1b
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "preFetchDnsMethod  Exception_e="

    aput-object v6, v4, v3

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_2b
    move-exception v5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "preFetchDnsMethod  TimeoutException="

    aput-object v6, v4, v3

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
