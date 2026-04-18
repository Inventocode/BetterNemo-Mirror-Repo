.class public Lcom/umeng/commonsdk/statistics/common/a;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/common/a$c;,
        Lcom/umeng/commonsdk/statistics/common/a$b;,
        Lcom/umeng/commonsdk/statistics/common/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 52
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a;->c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 57
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_13

    .line 58
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a(Lcom/umeng/commonsdk/statistics/common/a$a;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    :cond_13
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 70
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a;->c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 74
    :cond_8
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->a(Lcom/umeng/commonsdk/statistics/common/a$a;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/a$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return-object v2

    .line 90
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_5c

    .line 96
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/a$b;

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/common/a$b;-><init>(Lcom/umeng/commonsdk/statistics/common/a$1;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 101
    :try_start_2e
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$c;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/a$b;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/umeng/commonsdk/statistics/common/a$c;-><init>(Landroid/os/IBinder;)V

    .line 102
    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/statistics/common/a$c;->a(Z)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_43

    .line 105
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/a$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 107
    :cond_43
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/a$a;

    invoke-direct {v1, v3, v2}, Lcom/umeng/commonsdk/statistics/common/a$a;-><init>(Ljava/lang/String;Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_48} :catch_4e
    .catchall {:try_start_2e .. :try_end_48} :catchall_4c

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_4c
    move-exception v1

    goto :goto_50

    :catch_4e
    move-exception v1

    .line 110
    :try_start_4f
    throw v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4c

    .line 112
    :goto_50
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 115
    :cond_54
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_5c
    move-exception p0

    .line 93
    throw p0
.end method
