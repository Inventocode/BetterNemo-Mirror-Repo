.class public Lcom/chuanglan/shanyan_sdk/c/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/c/a;


# instance fields
.field private b:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

.field private c:Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

.field private d:Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

.field private e:Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;

.field private f:Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;

.field private h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

.field private m:Landroid/widget/Button;

.field private n:Z

.field private o:Landroid/content/Context;

.field private p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private q:Ljava/util/concurrent/ExecutorService;

.field private r:Ljava/util/concurrent/ExecutorService;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    const-string v0, "0"

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/c/a;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/c/a;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/c/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/c/a;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/c/a;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/c/a;->a:Lcom/chuanglan/shanyan_sdk/c/a;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/c/a;->a:Lcom/chuanglan/shanyan_sdk/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;)Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->f:Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;

    return-object p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->c:Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    return-object p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/InitListener;)Lcom/chuanglan/shanyan_sdk/listener/InitListener;
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->b:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    return-object p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;)Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->d:Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    return-object p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Lcom/chuanglan/shanyan_sdk/c/a$8;

    invoke-direct {v0, p0, p1}, Lcom/chuanglan/shanyan_sdk/c/a$8;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;I)V

    sget-object p1, Lcom/chuanglan/shanyan_sdk/b;->au:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_14
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "initialization is in progress"

    aput-object v1, p1, v0

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->b:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/chuanglan/shanyan_sdk/c/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a$2;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->k()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->l()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->m()V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->n()V

    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/g;->a()Lcom/chuanglan/shanyan_sdk/tool/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;I)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-virtual {v0, p1, v1, p2}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/a;->a()Lcom/chuanglan/shanyan_sdk/tool/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-virtual {v0, p1, v1, p2}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/j;->a()Lcom/chuanglan/shanyan_sdk/tool/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->i()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a;->c(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/chuanglan/shanyan_sdk/c/a;->b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/c/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method private b(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->e:Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/chuanglan/shanyan_sdk/c/a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a$4;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 34

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/chuanglan/shanyan_sdk/c/a;->c:Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/y;->a()V

    new-instance v17, Lcom/chuanglan/shanyan_sdk/c/a$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/chuanglan/shanyan_sdk/c/a$3;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static/range {v17 .. v17}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Ljava/lang/Runnable;)V

    :cond_2f
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x8

    const v3, 0x7fffffff

    const-wide/16 v4, 0x78

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    :cond_20
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$9;

    invoke-direct {v1, p0, p1}, Lcom/chuanglan/shanyan_sdk/c/a$9;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private c(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->at:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->f:Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/chuanglan/shanyan_sdk/c/a$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a$6;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x8

    const v3, 0x7fffffff

    const-wide/16 v4, 0x78

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    :cond_20
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$11;

    invoke-direct {v1, p0, p1}, Lcom/chuanglan/shanyan_sdk/c/a$11;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/c/a;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/chuanglan/shanyan_sdk/c/a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->n:Z

    return p0
.end method

.method static synthetic e(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/InitListener;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->b:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    return-object p0
.end method

.method static synthetic f(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->c:Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    return-object p0
.end method

.method static synthetic g(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->e:Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;

    return-object p0
.end method

.method static synthetic h(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->m:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic i(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->d:Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    return-object p0
.end method

.method private i()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    const-string v1, "sdkVersion"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "2.3.3.9"

    if-nez v2, :cond_18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_18
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/c/a;->j()V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/content/Context;)V

    :cond_29
    return-void
.end method

.method static synthetic j(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->f:Lcom/chuanglan/shanyan_sdk/listener/AuthenticationExecuteListener;

    return-object p0
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    const-string v1, "initFlag"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    const-string v1, "isInitCache"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private k()V
    .registers 3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/g;->a()Lcom/chuanglan/shanyan_sdk/tool/g;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$12;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/c/a$12;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;)V

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g$a;)V

    return-void
.end method

.method private l()V
    .registers 3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$13;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/c/a$13;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;)V

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k$a;)V

    return-void
.end method

.method private m()V
    .registers 3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$14;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/c/a$14;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;)V

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Lcom/chuanglan/shanyan_sdk/tool/h$a;)V

    return-void
.end method

.method private n()V
    .registers 3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/a;->a()Lcom/chuanglan/shanyan_sdk/tool/a;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$15;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/c/a$15;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;)V

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a$a;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;Ljava/lang/String;Lcom/chuanglan/shanyan_sdk/listener/InitListener;)V
    .registers 11

    const-string v0, "ProcessShanYanLogger"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "initialization"

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/chuanglan/shanyan_sdk/c/a;->b:Lcom/chuanglan/shanyan_sdk/listener/InitListener;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    sput p1, Lcom/chuanglan/shanyan_sdk/b;->an:I

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p4, "initialization start_version"

    aput-object p4, p1, v2

    const-string p4, "2.3.3.9"

    aput-object p4, p1, v3

    const-string p4, "_appId"

    aput-object p4, p1, v1

    const/4 p4, 0x3

    aput-object p3, p1, p4

    const/4 p4, 0x4

    const-string v4, "_packageSign"

    aput-object v4, p1, p4

    const/4 p4, 0x5

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/tool/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, p4

    const/4 p4, 0x6

    const-string v4, "_packageName"

    aput-object v4, p1, p4

    const/4 p4, 0x7

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/tool/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, p4

    invoke-static {v0, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_52

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    :cond_52
    invoke-direct {p0, p2, p3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/chuanglan/shanyan_sdk/c/a;->a(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_58} :catch_59

    goto :goto_6a

    :catch_59
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "initialization Exception_e"

    aput-object p3, p2, v2

    aput-object p1, p2, v3

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public a(ILcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "ProcessShanYanLogger"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getPhoneInfo"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->c:Lcom/chuanglan/shanyan_sdk/listener/GetPhoneInfoListener;

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/k;->a()Lcom/chuanglan/shanyan_sdk/tool/k;

    move-result-object p2

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-virtual {p2, v2, v3, p1}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;I)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_56

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;JJ)V

    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    const-string p2, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {p1, p2, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    goto :goto_56

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "getPhoneInfo Exception"

    aput-object v2, p2, v0

    aput-object p1, p2, v1

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 34

    move-object/from16 v0, p0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/y;->a()V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a;->d:Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    if-eqz v1, :cond_3d

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$5;

    move/from16 v3, p1

    move-object/from16 v8, p6

    invoke-direct {v1, v0, v3, v8}, Lcom/chuanglan/shanyan_sdk/c/a$5;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v2

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-virtual/range {v2 .. v17}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3d
    return-void
.end method

.method public a(ILjava/lang/String;JJ)V
    .registers 24

    move-object/from16 v15, p0

    new-instance v8, Lcom/chuanglan/shanyan_sdk/c/a$10;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/c/a$10;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;IJJLjava/lang/String;)V

    iget-object v0, v15, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    if-eqz v0, :cond_47

    iget-object v0, v15, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_47

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "getPhoneInfoMethod processName"

    aput-object v2, v0, v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ProcessShanYanLogger"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->as:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, v15, Lcom/chuanglan/shanyan_sdk/c/a;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_81

    :cond_3c
    const/4 v0, 0x3

    move/from16 v3, p1

    if-ne v3, v0, :cond_81

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->aq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_81

    :cond_47
    move/from16 v3, p1

    const/16 v1, 0x3f6

    const/16 v0, 0x3f6

    const-string/jumbo v2, "未初始化"

    invoke-static {v0, v2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v4, p5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x1

    const-string v2, "Unknown_Operator"

    const-string v4, "1"

    const-string v5, "0"

    const-string v12, "1014"

    const-string v13, "getPhoneInfoMethod()未初始化"

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/chuanglan/shanyan_sdk/c/a;->b(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_81
    :goto_81
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "ProcessShanYanLogger"

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "clearScripCache"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/auth/c;->delScrip()V

    invoke-static {p1}, Lcom/sdk/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    const-string v2, "preInitStatus"

    invoke-static {p1, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v2, "timeend"

    const-wide/16 v3, 0x0

    invoke-static {p1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_36

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "clearScripCache Exception="

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_36
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/widget/Button;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->m:Landroid/widget/Button;

    return-void
.end method

.method public a(Landroid/widget/CheckBox;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 5

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/c/a;->h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz p2, :cond_1c

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "setAuthThemeConfig shanLandYanUIConfig"

    aput-object v0, p1, p3

    const/4 p3, 0x1

    invoke-virtual {p2}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "UIShanYanTask"

    invoke-static {p2, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public a(ZLcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "ProcessShanYanLogger"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "openLoginAuth"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->n:Z

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->d:Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/c/a;->e:Lcom/chuanglan/shanyan_sdk/listener/OneKeyLoginListener;

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->o:Landroid/content/Context;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/h;->b()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    goto :goto_35

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "openLoginAuth Exception"

    aput-object p3, p2, v0

    aput-object p1, p2, v1

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public b()V
    .registers 3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/l;->a()Lcom/chuanglan/shanyan_sdk/tool/m;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/c/a$1;

    invoke-direct {v1, p0}, Lcom/chuanglan/shanyan_sdk/c/a$1;-><init>(Lcom/chuanglan/shanyan_sdk/c/a;)V

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/m;->a(Lcom/chuanglan/shanyan_sdk/tool/l$a;)V

    return-void
.end method

.method public c()V
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "setAuthThemeConfig shanYanUIConfig="

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "_shanPortraitYanUIConfig"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "_shanLandYanUIConfig"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "UIShanYanTask"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0, v2, v3, v1}, Lcom/chuanglan/shanyan_sdk/tool/n;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    goto :goto_73

    :cond_3b
    if-eqz v0, :cond_47

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->j:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0, v1, v2, v1}, Lcom/chuanglan/shanyan_sdk/tool/n;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    goto :goto_73

    :cond_47
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->i:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0, v2, v1, v1}, Lcom/chuanglan/shanyan_sdk/tool/n;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    goto :goto_73

    :cond_55
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    if-eqz v0, :cond_63

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a;->h:Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    invoke-virtual {v0, v1, v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/n;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    goto :goto_73

    :cond_63
    new-instance v0, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    invoke-direct {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->build()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/n;->a()Lcom/chuanglan/shanyan_sdk/tool/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chuanglan/shanyan_sdk/tool/n;->a(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V

    :goto_73
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;->build()Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getCmUIConfigBuilder()Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->build()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->setAuthThemeConfig(Lcom/cmic/sso/sdk/view/AuthThemeConfig;)V

    return-void
.end method

.method public d()V
    .registers 5

    :try_start_0
    const-string v0, "ProcessShanYanLogger"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "finishAuthActivity"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v3, Lcom/chuanglan/shanyan_sdk/tool/h;->a:Z

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a;->p:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->quitAuthActivity()V

    :cond_16
    sget-object v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->finish()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method
