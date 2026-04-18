.class public Lcom/unikuwei/mianmi/account/shield/e/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unikuwei/mianmi/account/shield/e/c$a;
    }
.end annotation


# static fields
.field private static g:Lcom/unikuwei/mianmi/account/shield/e/c;


# instance fields
.field private a:Landroid/net/Network;

.field private b:Landroid/net/ConnectivityManager$NetworkCallback;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unikuwei/mianmi/account/shield/e/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->a:Landroid/net/Network;

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/e/c;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->a:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/e/c;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->a:Landroid/net/Network;

    return-object p1
.end method

.method public static a()Lcom/unikuwei/mianmi/account/shield/e/c;
    .registers 2

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/c;->g:Lcom/unikuwei/mianmi/account/shield/e/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/unikuwei/mianmi/account/shield/e/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/unikuwei/mianmi/account/shield/e/c;->g:Lcom/unikuwei/mianmi/account/shield/e/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/e/c;

    invoke-direct {v1}, Lcom/unikuwei/mianmi/account/shield/e/c;-><init>()V

    sput-object v1, Lcom/unikuwei/mianmi/account/shield/e/c;->g:Lcom/unikuwei/mianmi/account/shield/e/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/c;->g:Lcom/unikuwei/mianmi/account/shield/e/c;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->a:Landroid/net/Network;

    if-eqz v0, :cond_b

    const/4 p1, 0x1

    invoke-interface {p2, p1, v0}, Lcom/unikuwei/mianmi/account/shield/e/c$a;->a(ZLandroid/net/Network;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0, p2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Lcom/unikuwei/mianmi/account/shield/e/c$a;)V

    iget-object p2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_7b

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1d

    monitor-exit p0

    return-void

    :cond_1d
    const/4 p2, 0x0

    :try_start_1e
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    new-instance v0, Lcom/unikuwei/mianmi/account/shield/e/c$3;

    invoke-direct {v0, p0}, Lcom/unikuwei/mianmi/account/shield/e/c$3;-><init>(Lcom/unikuwei/mianmi/account/shield/e/c;)V

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->f()I

    move-result v0

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_49

    goto :goto_4b

    :cond_49
    const/16 v1, 0x7d0

    :goto_4b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_59

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v2, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    goto :goto_79

    :cond_59
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    new-instance v2, Lcom/unikuwei/mianmi/account/shield/e/c$4;

    invoke-direct {v2, p0}, Lcom/unikuwei/mianmi/account/shield/e/c$4;-><init>(Lcom/unikuwei/mianmi/account/shield/e/c;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_70} :catch_71
    .catchall {:try_start_1e .. :try_end_70} :catchall_7b

    goto :goto_79

    :catch_71
    move-exception p1

    :try_start_72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(ZLandroid/net/Network;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7b

    :goto_79
    monitor-exit p0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    goto :goto_f

    :catch_9
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/e/c;ZLandroid/net/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(ZLandroid/net/Network;)V

    return-void
.end method

.method private declared-synchronized a(ZLandroid/net/Network;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    :cond_b
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unikuwei/mianmi/account/shield/e/c$a;

    invoke-interface {v1, p1, p2}, Lcom/unikuwei/mianmi/account/shield/e/c$a;->a(ZLandroid/net/Network;)V

    goto :goto_11

    :cond_21
    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_29
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_2d

    :catchall_27
    move-exception p1

    goto :goto_2f

    :catch_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    monitor-exit p0

    throw p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_e

    return v0

    :cond_e
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_c8

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_c8

    :cond_2a
    const-class p1, Landroid/net/ConnectivityManager;

    const-string v2, "startUsingNetworkFeature"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "enableHIPRI"

    aput-object v6, v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, -0x1

    if-ne v2, p1, :cond_5c

    return v0

    :cond_5c
    if-nez p1, :cond_5f

    return v3

    :cond_5f
    invoke-static {p2}, Lcom/unikuwei/mianmi/account/shield/e/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object p2, p1

    :goto_6b
    invoke-static {p2}, Lcom/unikuwei/mianmi/account/shield/e/i;->c(Ljava/lang/String;)I

    move-result p1
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6f} :catch_c9

    if-ne v2, p1, :cond_72

    return v0

    :cond_72
    const/4 p2, 0x0

    :goto_73
    const/4 v2, 0x3

    if-ge p2, v2, :cond_91

    :try_start_76
    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v5}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_89

    goto :goto_91

    :cond_89
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_8e} :catch_91
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8e} :catch_c9

    add-int/lit8 p2, p2, 0x1

    goto :goto_73

    :catch_91
    :cond_91
    :goto_91
    :try_start_91
    const-class p2, Landroid/net/ConnectivityManager;

    const-string v2, "requestRouteToHost"

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    aput-object v6, v5, v3

    invoke-virtual {p2, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c7} :catch_c9

    return p1

    :cond_c8
    :goto_c8
    return v3

    :catch_c9
    return v0
.end method

.method static synthetic a(Lcom/unikuwei/mianmi/account/shield/e/c;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/unikuwei/mianmi/account/shield/e/c;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    invoke-direct {p0, p1, p3}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/content/Context;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unikuwei/mianmi/account/shield/e/c$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/unikuwei/mianmi/account/shield/e/c$2;-><init>(Lcom/unikuwei/mianmi/account/shield/e/c;Landroid/content/Context;Ljava/lang/String;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_14
    return-void
.end method

.method public a(Landroid/net/Network;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/unikuwei/mianmi/account/shield/e/c$1;

    invoke-direct {v0, p0, p2}, Lcom/unikuwei/mianmi/account/shield/e/c$1;-><init>(Lcom/unikuwei/mianmi/account/shield/e/c;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->f:Ljava/util/Timer;

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1c

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_1c

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1c
    iput-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->c:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->a:Landroid/net/Network;

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2a
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_2e

    :catchall_28
    move-exception v0

    goto :goto_30

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    :goto_2e
    monitor-exit p0

    return-void

    :goto_30
    monitor-exit p0

    throw v0
.end method
