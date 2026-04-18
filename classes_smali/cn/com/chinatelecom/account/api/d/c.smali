.class public Lcn/com/chinatelecom/account/api/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:J = 0x0L

.field private static c:J = 0x1b7740L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcn/com/chinatelecom/account/api/d/c;->b:J

    return-wide p0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 6

    const-class v0, Lcn/com/chinatelecom/account/api/d/c;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/com/chinatelecom/account/api/d/c;->b:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_19

    sget-object v1, Lcn/com/chinatelecom/account/api/d/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcn/com/chinatelecom/account/api/d/c;->a:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1c

    monitor-exit v0

    return-object v1

    :cond_19
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcn/com/chinatelecom/account/api/d/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/com/chinatelecom/account/api/d/c;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcn/com/chinatelecom/account/api/d/c;->a:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/h;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_18

    :cond_b
    new-instance v0, Lcn/com/chinatelecom/account/api/c/l;

    invoke-direct {v0}, Lcn/com/chinatelecom/account/api/c/l;-><init>()V

    new-instance v1, Lcn/com/chinatelecom/account/api/d/d;

    invoke-direct {v1, p0}, Lcn/com/chinatelecom/account/api/d/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method static synthetic b()J
    .registers 2

    sget-wide v0, Lcn/com/chinatelecom/account/api/d/c;->c:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/com/chinatelecom/account/api/e/e;->b(I)Lcn/com/chinatelecom/account/api/e/e;

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    if-nez p2, :cond_1b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "first exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "retry exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/com/chinatelecom/account/api/e/e;->g(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    const/4 p0, 0x0

    return-object p0
.end method
