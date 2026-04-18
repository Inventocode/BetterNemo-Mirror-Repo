.class public Lcom/umeng/commonsdk/internal/utils/b;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BatteryUtils"

.field private static b:Z = false

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/b$1;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/internal/utils/b$1;-><init>(Lcom/umeng/commonsdk/internal/utils/b;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/internal/utils/b$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/umeng/commonsdk/internal/utils/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;
    .registers 2

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    .line 43
    :cond_c
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b$a;->a()Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    .line 21
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    .line 47
    :try_start_1
    sget-boolean v0, Lcom/umeng/commonsdk/internal/utils/b;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    .line 56
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 59
    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/b;->b:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_1c

    :catchall_16
    move-exception v0

    .line 61
    :try_start_17
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    .line 63
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    .line 67
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/b;->b:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception v0

    .line 70
    :try_start_d
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/b;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 72
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
