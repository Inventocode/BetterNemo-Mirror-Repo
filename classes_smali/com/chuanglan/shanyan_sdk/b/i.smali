.class public Lcom/chuanglan/shanyan_sdk/b/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/chuanglan/shanyan_sdk/b/i;


# instance fields
.field private b:Lcom/chuanglan/shanyan_sdk/b/k;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/b/g;->a(Ljava/lang/String;)Lcom/chuanglan/shanyan_sdk/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/i;->b:Lcom/chuanglan/shanyan_sdk/b/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/b/i;->d:Z

    iput-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/b/i;->e:Z

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/b/i;
    .registers 1

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b/i;->a:Lcom/chuanglan/shanyan_sdk/b/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/chuanglan/shanyan_sdk/b/i;

    invoke-direct {v0}, Lcom/chuanglan/shanyan_sdk/b/i;-><init>()V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/b/i;->a:Lcom/chuanglan/shanyan_sdk/b/i;

    :cond_b
    sget-object v0, Lcom/chuanglan/shanyan_sdk/b/i;->a:Lcom/chuanglan/shanyan_sdk/b/i;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/b/i;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/i;->b:Lcom/chuanglan/shanyan_sdk/b/k;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->c:Landroid/content/Context;

    :cond_c
    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/i;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->d:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->b:Lcom/chuanglan/shanyan_sdk/b/k;

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/i;->c:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/chuanglan/shanyan_sdk/b/k;->c_(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->e:Z

    :cond_1e
    return-void
.end method

.method private b()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->c:Landroid/content/Context;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/b/i;->b:Lcom/chuanglan/shanyan_sdk/b/k;

    if-nez v2, :cond_a

    goto :goto_e

    :cond_a
    invoke-interface {v2, v1}, Lcom/chuanglan/shanyan_sdk/b/k;->b_(Landroid/content/Context;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    :cond_e
    :goto_e
    return v0
.end method

.method private c()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->c:Landroid/content/Context;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/b/i;->b:Lcom/chuanglan/shanyan_sdk/b/k;

    if-eqz v2, :cond_12

    iget-boolean v3, p0, Lcom/chuanglan/shanyan_sdk/b/i;->e:Z

    if-nez v3, :cond_e

    goto :goto_12

    :cond_e
    invoke-interface {v2, v1}, Lcom/chuanglan/shanyan_sdk/b/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    :cond_12
    :goto_12
    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/b/i;->b(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/b/i;->e:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/b/i;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/chuanglan/shanyan_sdk/b/i$1;

    invoke-direct {v1, p0, p1}, Lcom/chuanglan/shanyan_sdk/b/i$1;-><init>(Lcom/chuanglan/shanyan_sdk/b/i;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
