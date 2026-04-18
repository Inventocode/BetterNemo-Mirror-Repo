.class public Lcom/umeng/analytics/pro/ab;
.super Ljava/lang/Object;
.source "CoolpadDeviceIdSupplier.java"

# interfaces
.implements Lcom/umeng/analytics/pro/z;


# static fields
.field private static final a:Ljava/lang/String; = "Coolpad"

.field private static final b:Ljava/lang/String; = "com.coolpad.deviceidsupport"

.field private static final c:Ljava/lang/String; = "com.coolpad.deviceidsupport.DeviceIdService"

.field private static d:Lcom/umeng/analytics/pro/a;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Landroid/content/Context;

.field private final h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/umeng/analytics/pro/ab;->e:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/umeng/analytics/pro/ab$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ab$1;-><init>(Lcom/umeng/analytics/pro/ab;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/ab;->h:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/ab;)Landroid/content/Context;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/umeng/analytics/pro/ab;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/a;
    .registers 1

    .line 19
    sget-object v0, Lcom/umeng/analytics/pro/ab;->d:Lcom/umeng/analytics/pro/a;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;
    .registers 1

    .line 19
    sput-object p0, Lcom/umeng/analytics/pro/ab;->d:Lcom/umeng/analytics/pro/a;

    return-object p0
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/ab;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/umeng/analytics/pro/ab;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/ab;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/umeng/analytics/pro/ab;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 7

    const-string v0, "Coolpad"

    .line 53
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 54
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coolpad.deviceidsupport"

    const-string v4, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    iget-object v2, p0, Lcom/umeng/analytics/pro/ab;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_40

    const-string p1, "bindService return false"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    goto :goto_40

    :catchall_22
    move-exception p1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed. e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/umeng/analytics/pro/ab;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_40
    :goto_40
    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/pro/ab;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/umeng/analytics/pro/ab;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    const-string v0, "Coolpad"

    :try_start_2
    const-string v1, "call unbindService."

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/umeng/analytics/pro/ab;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    goto :goto_26

    :catchall_d
    move-exception p1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService failed. e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "Coolpad"

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 35
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/analytics/pro/ab;->g:Landroid/content/Context;

    .line 36
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/umeng/analytics/pro/ab;->f:Ljava/util/concurrent/CountDownLatch;

    .line 38
    :try_start_14
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ab;->b(Landroid/content/Context;)V

    .line 39
    iget-object v2, p0, Lcom/umeng/analytics/pro/ab;->f:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "getOAID time-out"

    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_28
    iget-object v0, p0, Lcom/umeng/analytics/pro/ab;->e:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_2a} :catch_30
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2e

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ab;->c(Landroid/content/Context;)V

    return-object v0

    :catchall_2e
    move-exception v0

    goto :goto_4d

    :catch_30
    move-exception v2

    .line 44
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID interrupted. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_2e

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ab;->c(Landroid/content/Context;)V

    return-object v1

    :goto_4d
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/ab;->c(Landroid/content/Context;)V

    throw v0
.end method
