.class public Lcom/chuanglan/shanyan_sdk/tool/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/chuanglan/shanyan_sdk/tool/e;


# instance fields
.field a:Lcom/chuanglan/shanyan_sdk/utils/l$a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/chuanglan/shanyan_sdk/a/e;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chuanglan/shanyan_sdk/tool/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chuanglan/shanyan_sdk/tool/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:J

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->h:Z

    const/16 v1, 0x2710

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->i:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/chuanglan/shanyan_sdk/tool/e$1;

    invoke-direct {v0, p0}, Lcom/chuanglan/shanyan_sdk/tool/e$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/e;)V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->a:Lcom/chuanglan/shanyan_sdk/utils/l$a;

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;I)I
    .registers 2

    iput p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    return p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;J)J
    .registers 3

    iput-wide p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/e;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/e;->b:Lcom/chuanglan/shanyan_sdk/tool/e;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/e;->b:Lcom/chuanglan/shanyan_sdk/tool/e;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/e;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/e;->b:Lcom/chuanglan/shanyan_sdk/tool/e;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/e;->b:Lcom/chuanglan/shanyan_sdk/tool/e;

    return-object v0
.end method

.method private a(Lcom/chuanglan/shanyan_sdk/tool/c;Z)V
    .registers 14

    const-string v0, "reportTimestart"

    const-string v1, "4"

    sget-boolean v2, Lcom/chuanglan/shanyan_sdk/b;->ac:Z

    if-eqz v2, :cond_1b9

    :try_start_8
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    if-nez v2, :cond_15

    new-instance v2, Lcom/chuanglan/shanyan_sdk/a/e;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/chuanglan/shanyan_sdk/a/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    :cond_15
    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1b5

    const-string v3, "0"

    if-eqz v2, :cond_27

    :try_start_1f
    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    :cond_27
    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    :cond_37
    const-string v2, "3"

    iget-object v4, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "1031"

    iget-object v4, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    :cond_53
    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v4, "uuid"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    new-instance v2, Lcom/chuanglan/shanyan_sdk/tool/d;

    invoke-direct {v2}, Lcom/chuanglan/shanyan_sdk/tool/d;-><init>()V

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->e:Ljava/lang/String;

    const-string v4, "2"

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->f:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->g:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    sget-object v5, Lcom/chuanglan/shanyan_sdk/utils/w;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/chuanglan/shanyan_sdk/tool/d;->a:Ljava/lang/String;

    iput-object v4, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v6, "DID"

    invoke-static {v5, v6, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-wide/16 v5, 0x1

    invoke-static {v4, v0, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_128

    iget-object v4, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v0, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :cond_128
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v4, "reportFlag"

    const-wide/16 v5, 0x258

    invoke-static {v0, v4, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v9, -0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_139

    return-void

    :cond_139
    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-nez v0, :cond_144

    invoke-direct {p0, v2, p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/d;Lcom/chuanglan/shanyan_sdk/tool/c;)V

    goto/16 :goto_1b9

    :cond_144
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {v0, v2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Lcom/chuanglan/shanyan_sdk/tool/d;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Lcom/chuanglan/shanyan_sdk/tool/c;Z)V

    iget-object p2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15e

    iget-object p2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_185

    :cond_15e
    iget-object p2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->l:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16e

    iget-object p2, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->q:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_185

    :cond_16e
    const-string p2, "11"

    iget-object p1, p1, Lcom/chuanglan/shanyan_sdk/tool/c;->m:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_185

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long v4, v4, v0

    add-long/2addr v7, v4

    cmp-long v0, p1, v7

    if-lez v0, :cond_1b9

    :cond_185
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string p2, "reportCount"

    const-wide/16 v0, 0x64

    invoke-static {p1, p2, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->l:J

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/a/e;->b()J

    move-result-wide p1

    cmp-long v0, p1, v9

    if-lez v0, :cond_1b9

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/a/e;->b()J

    move-result-wide p1

    long-to-float p1, p1

    iget-wide v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->l:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/e;->c()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->h:Z
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1b4} :catch_1b5

    goto :goto_1b9

    :catch_1b5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b9
    :goto_1b9
    return-void
.end method

.method private a(Lcom/chuanglan/shanyan_sdk/tool/d;Lcom/chuanglan/shanyan_sdk/tool/c;)V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->g:Ljava/util/List;

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/utils/b;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    const-string v0, "[\"DID\", \"telcom\", \"sdkMode\", \"osVersion\", \"romVersion\", \"sdkVersion\", \"uuid\", \"ip\", \"network\", \"dbm\",\"wifidbm\", \"processName\", \"method\", \"beginTime\", \"costTime\", \"stepTime\", \"status\", \"resCode\", \"resDesc\", \"innerCode\", \"innerDesc\", \"count\", \"sid\"]"

    const-string v1, "[\"DID\", \"IMEI\", \"IMSI\", \"ICCID\", \"MAC\", \"appPlatform\", \"device\", \"deviceName\", \"oaid\"]"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bodyTitle"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "header"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "headerTitle"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_66

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_66

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_66
    :goto_66
    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;Lcom/chuanglan/shanyan_sdk/tool/c;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/c;Z)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v1, "reportMax"

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->i:I

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v1, "appId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->d:Ljava/lang/String;

    :goto_1f
    move-object v2, v0

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v1, "pks"

    const-string v3, "0MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJaqWkyQhbQ6EbYBFaxhfblDc3wmzSV27D/CncV6b1dG9DW/9rPqKLP9TvpcxA8OTgQR/WZ1YKwtcHJurR83spkCAwEAAQ=="

    invoke-static {v0, v1, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object p3

    :cond_34
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/tool/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/tool/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/d/g;->a()Lcom/chuanglan/shanyan_sdk/d/g;

    move-result-object v1

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/chuanglan/shanyan_sdk/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/chuanglan/shanyan_sdk/d/a;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v4, "https://sysdk.cl2009.com//flash/fdr/v3"

    invoke-direct {v2, v4, v3}, Lcom/chuanglan/shanyan_sdk/d/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v3, Lcom/chuanglan/shanyan_sdk/tool/e$3;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/chuanglan/shanyan_sdk/tool/e$3;-><init>(Lcom/chuanglan/shanyan_sdk/tool/e;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3, p1, v0}, Lcom/chuanglan/shanyan_sdk/d/a;->a(Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    return-object p0
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/tool/e;)J
    .registers 3

    iget-wide v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->l:J

    return-wide v0
.end method

.method private c()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v1, "reportTimestart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v1, "reportCount"

    const-wide/16 v2, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->g:Ljava/util/List;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/b;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "[\"DID\", \"telcom\", \"sdkMode\", \"osVersion\", \"romVersion\", \"sdkVersion\", \"uuid\", \"ip\", \"network\", \"dbm\",\"wifidbm\", \"processName\", \"method\", \"beginTime\", \"costTime\",\"stepTime\", \"status\", \"resCode\", \"resDesc\", \"innerCode\", \"innerDesc\", \"count\", \"sid\"]"

    const-string v3, "[\"DID\", \"IMEI\", \"IMSI\", \"ICCID\", \"MAC\", \"appPlatform\", \"device\", \"deviceName\", \"oaid\"]"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "body"

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bodyTitle"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "headerTitle"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_8d

    if-eqz v1, :cond_8d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private d()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->i:I

    invoke-virtual {v0, v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->i:I

    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL  # 0.1

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chuanglan/shanyan_sdk/a/e;->a(Ljava/lang/String;)Ljava/util/List;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->e:Lcom/chuanglan/shanyan_sdk/a/e;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/a/e;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/a/e;->a(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method static synthetic d(Lcom/chuanglan/shanyan_sdk/tool/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/e;->c()V

    return-void
.end method

.method static synthetic e(Lcom/chuanglan/shanyan_sdk/tool/e;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->k:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic f(Lcom/chuanglan/shanyan_sdk/tool/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lcom/chuanglan/shanyan_sdk/tool/e;)I
    .registers 3

    iget v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    return v0
.end method

.method static synthetic h(Lcom/chuanglan/shanyan_sdk/tool/e;)I
    .registers 1

    iget p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->j:I

    return p0
.end method

.method static synthetic i(Lcom/chuanglan/shanyan_sdk/tool/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/e;->d()V

    return-void
.end method

.method static synthetic j(Lcom/chuanglan/shanyan_sdk/tool/e;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->h:Z

    return p0
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 36

    move-object/from16 v1, p0

    move/from16 v12, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v3, p14

    move/from16 v16, p15

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/e;->k:Ljava/util/concurrent/ExecutorService;

    move-object/from16 p1, v1

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/e$2;

    move-object v0, v1

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/chuanglan/shanyan_sdk/tool/e$2;-><init>(Lcom/chuanglan/shanyan_sdk/tool/e;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->d:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 8

    const-string v0, "1"

    :try_start_2
    sget-boolean v1, Lcom/chuanglan/shanyan_sdk/b;->ac:Z

    if-eqz v1, :cond_4d

    sget-boolean v1, Lcom/chuanglan/shanyan_sdk/b;->aG:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v2, "reportFlag"

    const-wide/16 v3, 0x258

    invoke-static {v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    const-string v4, "backrp"

    invoke-static {v3, v4, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4d

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4d

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/l;->a()Lcom/chuanglan/shanyan_sdk/utils/l;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->a:Lcom/chuanglan/shanyan_sdk/utils/l$a;

    invoke-virtual {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/l;->b(Landroid/app/Application;Lcom/chuanglan/shanyan_sdk/utils/l$a;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/l;->a()Lcom/chuanglan/shanyan_sdk/utils/l;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/tool/e;->a:Lcom/chuanglan/shanyan_sdk/utils/l$a;

    invoke-virtual {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/l;->a(Landroid/app/Application;Lcom/chuanglan/shanyan_sdk/utils/l$a;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4d
    :goto_4d
    return-void
.end method
