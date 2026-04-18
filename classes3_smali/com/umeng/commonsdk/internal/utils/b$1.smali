.class Lcom/umeng/commonsdk/internal/utils/b$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/b;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string v0, "ts"

    .line 79
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "level"

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_9c

    :try_start_1a
    const-string v4, "le"

    .line 85
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_9c

    :catch_1f
    :try_start_1f
    const-string v2, "voltage"

    .line 89
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_9c

    :try_start_25
    const-string v4, "vol"

    .line 91
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_9c

    :catch_2a
    :try_start_2a
    const-string v2, "temperature"

    .line 96
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_9c

    :try_start_30
    const-string v4, "temp"

    .line 98
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_9c

    :catch_3c
    :try_start_3c
    const-string v2, "status"

    .line 104
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_9c

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_55

    if-eq v2, v5, :cond_54

    const/4 v7, 0x4

    if-eq v2, v7, :cond_52

    const/4 v7, 0x5

    if-eq v2, v7, :cond_50

    goto :goto_55

    :cond_50
    const/4 v4, 0x2

    goto :goto_55

    :cond_52
    const/4 v4, 0x0

    goto :goto_55

    :cond_54
    const/4 v4, 0x1

    :cond_55
    :goto_55
    :try_start_55
    const-string v2, "st"

    .line 133
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_9c

    :catch_5a
    :try_start_5a
    const-string v2, "plugged"

    .line 138
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_9c

    if-eq p2, v6, :cond_66

    if-eq p2, v5, :cond_67

    const/4 v5, 0x0

    goto :goto_67

    :cond_66
    const/4 v5, 0x1

    :cond_67
    :goto_67
    :try_start_67
    const-string p2, "ct"

    .line 151
    invoke-virtual {v1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_73} :catch_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_9c

    :catch_73
    :try_start_73
    const-string p2, "BatteryUtils"

    new-array v0, v6, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p2, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0x8003

    .line 162
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/internal/utils/b;->c()V
    :try_end_9b
    .catchall {:try_start_73 .. :try_end_9b} :catchall_9c

    goto :goto_a4

    :catchall_9c
    move-exception p1

    .line 168
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_a4
    :goto_a4
    return-void
.end method
