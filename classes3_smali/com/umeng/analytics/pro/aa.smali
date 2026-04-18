.class public Lcom/umeng/analytics/pro/aa;
.super Ljava/lang/Object;
.source "OpenDeviceId.java"


# static fields
.field private static a:Lcom/umeng/analytics/pro/z; = null

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/umeng/analytics/pro/aa;

    monitor-enter v0

    if-eqz p0, :cond_29

    .line 22
    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1f

    .line 26
    invoke-static {p0}, Lcom/umeng/analytics/pro/aa;->b(Landroid/content/Context;)V

    .line 28
    sget-object v1, Lcom/umeng/analytics/pro/aa;->a:Lcom/umeng/analytics/pro/z;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_27

    if-eqz v1, :cond_1c

    .line 31
    :try_start_16
    invoke-interface {v1, p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1c
    .catchall {:try_start_16 .. :try_end_1a} :catchall_27

    monitor-exit v0

    return-object p0

    :catch_1c
    :cond_1c
    const/4 p0, 0x0

    .line 37
    monitor-exit v0

    return-object p0

    .line 23
    :cond_1f
    :try_start_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_27
    move-exception p0

    goto :goto_31

    .line 19
    :cond_29
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_27

    :goto_31
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 41
    sget-object v0, Lcom/umeng/analytics/pro/aa;->a:Lcom/umeng/analytics/pro/z;

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/umeng/analytics/pro/aa;->b:Z

    if-nez v0, :cond_21

    .line 42
    const-class v0, Lcom/umeng/analytics/pro/aa;

    monitor-enter v0

    .line 43
    :try_start_b
    sget-object v1, Lcom/umeng/analytics/pro/aa;->a:Lcom/umeng/analytics/pro/z;

    if-nez v1, :cond_1c

    sget-boolean v1, Lcom/umeng/analytics/pro/aa;->b:Z

    if-nez v1, :cond_1c

    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/pro/ac;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/aa;->a:Lcom/umeng/analytics/pro/z;

    const/4 p0, 0x1

    .line 45
    sput-boolean p0, Lcom/umeng/analytics/pro/aa;->b:Z

    .line 47
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0

    :cond_21
    :goto_21
    return-void
.end method
