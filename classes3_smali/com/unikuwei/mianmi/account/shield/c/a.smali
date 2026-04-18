.class public Lcom/unikuwei/mianmi/account/shield/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unikuwei/mianmi/account/shield/c/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/unikuwei/mianmi/account/shield/c/b;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;
    .registers 1

    iget-object p0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->c:Lcom/unikuwei/mianmi/account/shield/c/b;

    return-object p0
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/c/a;Lcom/unikuwei/mianmi/account/shield/c/b;)Lcom/unikuwei/mianmi/account/shield/c/b;
    .registers 2

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->c:Lcom/unikuwei/mianmi/account/shield/c/b;

    return-object p1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 20

    move/from16 v0, p2

    const-string v1, ""

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/unikuwei/mianmi/account/shield/e/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_15

    move-object v2, v1

    :cond_15
    if-nez v3, :cond_18

    move-object v3, v1

    :cond_18
    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "30100"

    const-string v7, "jsonp"

    const/4 v8, 0x2

    if-eq v0, v8, :cond_26

    const-string v9, "1"

    goto :goto_27

    :cond_26
    move-object v9, v1

    :goto_27
    const-string v10, "5.1.0AK002B0701"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/unikuwei/mianmi/account/shield/e/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/unikuwei/mianmi/account/shield/a/b;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/unikuwei/mianmi/account/shield/e/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unikuwei/mianmi/account/shield/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v15, "client_id"

    invoke-virtual {v14, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "client_type"

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "format"

    invoke-static {v7}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version"

    invoke-static {v10}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eq v0, v8, :cond_aa

    const-string v0, "business_type"

    invoke-static {v9}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_aa
    const-string v0, "packname"

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packsign"

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "timeStamp"

    invoke-static {v11}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "key"

    invoke-static {v12}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fp"

    invoke-static {v4}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    invoke-static {v13}, Lcom/unikuwei/mianmi/account/shield/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e4} :catch_e5

    goto :goto_e9

    :catch_e5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e9
    return-object v1
.end method

.method private a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->a:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 4

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/unikuwei/mianmi/account/shield/c/a$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/unikuwei/mianmi/account/shield/c/a$2;-><init>(Lcom/unikuwei/mianmi/account/shield/c/a;ILandroid/content/Context;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;ILcom/unikuwei/mianmi/account/shield/d/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&"

    invoke-static {p1, p2}, Lcom/unikuwei/mianmi/account/shield/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/unikuwei/mianmi/account/shield/c/a$3;

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/unikuwei/mianmi/account/shield/c/a$3;-><init>(Lcom/unikuwei/mianmi/account/shield/c/a;Ljava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_29
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_44

    :catchall_27
    move-exception p1

    goto :goto_46

    :catch_29
    move-exception p1

    const/16 p2, 0x2719

    :try_start_2c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "10009"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p2, p1}, Lcom/unikuwei/mianmi/account/shield/d/a;->a(ILjava/lang/String;)V

    :goto_44
    monitor-exit p0

    return-void

    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_27

    throw p1
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/c/a;Landroid/content/Context;ILjava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V

    return-void
.end method

.method private b()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "woodcock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "memory"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hsign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/unikuwei/mianmi/account/shield/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/unikuwei/mianmi/account/shield/c/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/unikuwei/mianmi/account/shield/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/unikuwei/mianmi/account/shield/c/a;)Ljava/util/HashMap;
    .registers 1

    invoke-direct {p0}, Lcom/unikuwei/mianmi/account/shield/c/a;->b()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/c/a$a;)V
    .registers 8

    new-instance v0, Lcom/unikuwei/mianmi/account/shield/c/b;

    invoke-direct {v0, p4}, Lcom/unikuwei/mianmi/account/shield/c/b;-><init>(Lcom/unikuwei/mianmi/account/shield/c/a$a;)V

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->c:Lcom/unikuwei/mianmi/account/shield/c/b;

    :try_start_7
    invoke-direct {p0}, Lcom/unikuwei/mianmi/account/shield/c/a;->a()V

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    iput-object p4, p0, Lcom/unikuwei/mianmi/account/shield/c/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/unikuwei/mianmi/account/shield/c/a$1;

    invoke-direct {v0, p0}, Lcom/unikuwei/mianmi/account/shield/c/a$1;-><init>(Lcom/unikuwei/mianmi/account/shield/c/a;)V

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p4, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0, p1, p3}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/unikuwei/mianmi/account/shield/d/a;)V
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/i;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/unikuwei/mianmi/account/shield/e/g;->b(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/c;->a()Lcom/unikuwei/mianmi/account/shield/e/c;

    move-result-object v0

    const-string v1, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    new-instance v2, Lcom/unikuwei/mianmi/account/shield/c/a$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/unikuwei/mianmi/account/shield/c/a$4;-><init>(Lcom/unikuwei/mianmi/account/shield/c/a;Landroid/content/Context;ILcom/unikuwei/mianmi/account/shield/d/a;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V

    goto :goto_50

    :cond_1d
    if-nez v0, :cond_2a

    const-string v3, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V

    goto :goto_50

    :cond_2a
    const/16 p1, 0x2714

    const-string p2, "数据网络未开启"

    invoke-interface {p3, p1, p2}, Lcom/unikuwei/mianmi/account/shield/d/a;->a(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_50

    :catch_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p2, 0x2715

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "网络判断异常"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lcom/unikuwei/mianmi/account/shield/d/a;->a(ILjava/lang/String;)V

    :goto_50
    return-void
.end method
