.class final Lcom/umeng/commonsdk/stateless/b$1;
.super Landroid/content/BroadcastReceiver;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_5c

    if-eqz p2, :cond_5c

    .line 63
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->e()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 68
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->e()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-eqz p2, :cond_5c

    .line 71
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_58

    const-string v0, "MobclickRT"

    if-eqz p2, :cond_4e

    .line 72
    :try_start_39
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_4e

    const/4 p2, 0x1

    .line 73
    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Z)Z

    const-string p2, "--->>>网络可用： 触发2号数据仓信封消费动作。"

    .line 75
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x112

    .line 76
    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->b(I)V

    goto :goto_5c

    :cond_4e
    const-string p2, "--->>>网络断连： 2号数据仓"

    .line 78
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 80
    invoke-static {p2}, Lcom/umeng/commonsdk/stateless/b;->a(Z)Z
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p2

    .line 87
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    return-void
.end method
