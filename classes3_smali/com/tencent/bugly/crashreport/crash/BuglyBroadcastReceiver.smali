.class public Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field private static d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/IntentFilter;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic a()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    .registers 1

    .line 27
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_bd

    if-eqz p2, :cond_bd

    .line 127
    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_bd

    .line 131
    :cond_14
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_1d

    .line 133
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_ba

    .line 134
    monitor-exit p0

    return v1

    .line 137
    :cond_1d
    :try_start_1d
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is Connect BC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v2, "network %s changed to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-nez p2, :cond_63

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_ba

    .line 144
    monitor-exit p0

    return v1

    .line 146
    :cond_63
    :try_start_63
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 151
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    .line 152
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->a()Lcom/tencent/bugly/proguard/v;

    move-result-object v6

    .line 153
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    if-eqz v5, :cond_b1

    if-eqz v6, :cond_b1

    if-nez p1, :cond_7e

    goto :goto_b1

    .line 161
    :cond_7e
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    .line 162
    sget p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    .line 163
    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/v;->a(I)J

    move-result-wide p1

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x7530

    cmp-long v2, v3, p1

    if-lez v2, :cond_af

    const-string p1, "try to upload crash on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    .line 165
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    if-eqz p1, :cond_a3

    const-wide/16 v2, 0x0

    .line 168
    invoke-virtual {p1, v2, v3}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    :cond_a3
    const-string p1, "try to upload userinfo on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    .line 170
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 172
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/biz/a;->b()V
    :try_end_af
    .catchall {:try_start_63 .. :try_end_af} :catchall_ba

    .line 178
    :cond_af
    monitor-exit p0

    return v1

    :cond_b1
    :goto_b1
    :try_start_b1
    const-string p1, "not inited BC not work"

    new-array p2, v0, [Ljava/lang/Object;

    .line 156
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_ba

    .line 157
    monitor-exit p0

    return v1

    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1

    .line 128
    :cond_bd
    :goto_bd
    monitor-exit p0

    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    .line 44
    :cond_e
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_e
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 61
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 62
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 110
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p1

    .line 112
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    .line 72
    new-instance p1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;

    invoke-direct {p1, p0, p0}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;-><init>(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 87
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unregister broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 104
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    .line 101
    :try_start_15
    invoke-static {p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    .line 105
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
