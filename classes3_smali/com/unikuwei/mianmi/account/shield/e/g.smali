.class public Lcom/unikuwei/mianmi/account/shield/e/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static g:I = 0x1388

.field private static h:I = -0x1

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:I = 0x0

.field private static l:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/unikuwei/mianmi/account/shield/e/g;->g:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/unikuwei/mianmi/account/shield/e/g;

    monitor-enter v0

    :try_start_3
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/unikuwei/mianmi/account/shield/e/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/unikuwei/mianmi/account/shield/e/j;->a(Landroid/content/Context;J)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/unikuwei/mianmi/account/shield/e/g;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/unikuwei/mianmi/account/shield/e/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/unikuwei/mianmi/account/shield/e/j;->a(Landroid/content/Context;J)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    const-class v0, Lcom/unikuwei/mianmi/account/shield/e/g;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/j;->b(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_32

    const/4 v5, 0x0

    if-eqz v4, :cond_14

    monitor-exit v0

    return-object v5

    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/32 v1, 0x1b7740

    cmp-long v4, v6, v1

    if-ltz v4, :cond_25

    invoke-static {p0}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_32

    monitor-exit v0

    return-object v5

    :cond_25
    :try_start_25
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2c
    .catchall {:try_start_25 .. :try_end_2a} :catchall_32

    move-object v5, p0

    goto :goto_30

    :catch_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    :goto_30
    monitor-exit v0

    return-object v5

    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(I)V
    .registers 1

    sput p0, Lcom/unikuwei/mianmi/account/shield/e/g;->h:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c(I)V
    .registers 1

    sput p0, Lcom/unikuwei/mianmi/account/shield/e/g;->k:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static f()I
    .registers 1

    sget v0, Lcom/unikuwei/mianmi/account/shield/e/g;->g:I

    return v0
.end method

.method public static f(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->i:Ljava/lang/String;

    return-void
.end method

.method public static g()I
    .registers 1

    sget v0, Lcom/unikuwei/mianmi/account/shield/e/g;->h:I

    return v0
.end method

.method public static g(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/unikuwei/mianmi/account/shield/e/g;->j:Ljava/lang/String;

    return-void
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/e/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static j()I
    .registers 1

    sget v0, Lcom/unikuwei/mianmi/account/shield/e/g;->k:I

    return v0
.end method

.method public static k()Z
    .registers 1

    sget-boolean v0, Lcom/unikuwei/mianmi/account/shield/e/g;->l:Z

    return v0
.end method
