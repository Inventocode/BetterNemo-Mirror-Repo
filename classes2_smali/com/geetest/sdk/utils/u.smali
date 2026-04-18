.class public Lcom/geetest/sdk/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/geetest/sdk/utils/u;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field private static final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/geetest/sdk/utils/u;->c:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/geetest/sdk/utils/u;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Lcom/geetest/sdk/utils/u;->e:I

    .line 6
    new-instance v0, Lcom/geetest/sdk/utils/u$a;

    invoke-direct {v0}, Lcom/geetest/sdk/utils/u$a;-><init>()V

    sput-object v0, Lcom/geetest/sdk/utils/u;->f:Ljava/util/concurrent/ThreadFactory;

    .line 14
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/geetest/sdk/utils/u;->g:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/geetest/sdk/utils/u;->d:I

    sget v2, Lcom/geetest/sdk/utils/u;->e:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/geetest/sdk/utils/u;->g:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/geetest/sdk/utils/u;->f:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/geetest/sdk/utils/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static a()Lcom/geetest/sdk/utils/u;
    .registers 2

    .line 1
    sget-object v0, Lcom/geetest/sdk/utils/u;->b:Lcom/geetest/sdk/utils/u;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/geetest/sdk/utils/u;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/geetest/sdk/utils/u;->b:Lcom/geetest/sdk/utils/u;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/geetest/sdk/utils/u;

    invoke-direct {v1}, Lcom/geetest/sdk/utils/u;-><init>()V

    sput-object v1, Lcom/geetest/sdk/utils/u;->b:Lcom/geetest/sdk/utils/u;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lcom/geetest/sdk/utils/u;->b:Lcom/geetest/sdk/utils/u;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 9
    :try_start_2
    iget-object v0, p0, Lcom/geetest/sdk/utils/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method
