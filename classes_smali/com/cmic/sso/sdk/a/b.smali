.class public Lcom/cmic/sso/sdk/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/a/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/cmic/sso/sdk/a/b;


# instance fields
.field private a:Lcom/cmic/sso/sdk/a/a;

.field private final b:Lcom/cmic/sso/sdk/a/a;

.field private volatile d:Z

.field private e:Lcom/cmic/sso/sdk/a/b$a;


# direct methods
.method private constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/b;->d:Z

    new-instance v0, Lcom/cmic/sso/sdk/a/a$a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a$a;->a()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    if-nez p1, :cond_1a

    invoke-direct {p0}, Lcom/cmic/sso/sdk/a/b;->d()Lcom/cmic/sso/sdk/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b;->a:Lcom/cmic/sso/sdk/a/a;

    goto :goto_1c

    :cond_1a
    iput-object v0, p0, Lcom/cmic/sso/sdk/a/b;->a:Lcom/cmic/sso/sdk/a/a;

    :goto_1c
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/a;
    .registers 1

    invoke-direct {p0}, Lcom/cmic/sso/sdk/a/b;->d()Lcom/cmic/sso/sdk/a/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a/a;)Lcom/cmic/sso/sdk/a/a;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b;->a:Lcom/cmic/sso/sdk/a/a;

    return-object p1
.end method

.method public static a(Z)Lcom/cmic/sso/sdk/a/b;
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/a/b;->c:Lcom/cmic/sso/sdk/a/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/cmic/sso/sdk/a/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cmic/sso/sdk/a/b;->c:Lcom/cmic/sso/sdk/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cmic/sso/sdk/a/b;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/a/b;-><init>(Z)V

    sput-object v1, Lcom/cmic/sso/sdk/a/b;->c:Lcom/cmic/sso/sdk/a/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/cmic/sso/sdk/a/b;->c:Lcom/cmic/sso/sdk/a/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_18

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const-string v2, ""

    :goto_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    return-object v2
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/a/b;->b(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/b;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "LOGS_CONTROL"

    const-string v3, "M009"

    const-string v4, "M008"

    const-string v5, "M007"

    const-string v6, "CHANGE_HOST"

    const-string v7, "Configlist"

    const-string v8, "UmcConfigHandle"

    const-string v9, "client_valid"

    const-string v10, "0"

    const-string v11, "sso_config_xf"

    invoke-static {v11}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;)Lcom/cmic/sso/sdk/e/k$a;

    move-result-object v11

    :try_start_1c
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3d

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    add-long/2addr v14, v12

    invoke-virtual {v11, v9, v14, v15}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;J)V

    :cond_3d
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_10e

    const-string v9, "config_host"

    const-string v12, "https_get_phone_scrip_host"

    const-string v13, "logHost"

    if-eqz v7, :cond_91

    :try_start_53
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-direct {v1, v6, v5}, Lcom/cmic/sso/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a

    invoke-virtual {v11, v13, v5}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-direct {v1, v6, v4}, Lcom/cmic/sso/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7d

    invoke-virtual {v11, v12, v4}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-direct {v1, v6, v3}, Lcom/cmic/sso/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-virtual {v11, v9, v3}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_91
    invoke-virtual {v11, v13}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    const-string v3, "CLOSE_FRIEND_WAPKS"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    const-string v3, "CLOSE_LOGS_VERSION"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    const-string v3, "CLOSE_IPV4_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    const-string v3, "CLOSE_IPV6_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    const-string v3, "CLOSE_M008_SDKVERSION_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    const-string v3, "CLOSE_M008_APPID_LIST"

    invoke-direct {v1, v0, v3, v10, v11}, Lcom/cmic/sso/sdk/a/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_bc} :catch_10e

    const-string v4, "pauseTime"

    const-string v5, "maxFailedLogTimes"

    if-eqz v3, :cond_104

    :try_start_c2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10a

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10a

    const/4 v3, 0x1

    aget-object v6, v0, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e8} :catch_10e

    if-nez v6, :cond_10a

    :try_start_ea
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v5, v2}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;I)V

    invoke-virtual {v11, v4, v0}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;I)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_fc} :catch_fd

    goto :goto_10a

    :catch_fd
    :try_start_fd
    const-string/jumbo v0, "解析日志上报限制时间次数异常"

    invoke-static {v8, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    :cond_104
    invoke-virtual {v11, v5}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    :cond_10a
    :goto_10a
    invoke-virtual {v11}, Lcom/cmic/sso/sdk/e/k$a;->b()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10d} :catch_10e

    goto :goto_118

    :catch_10e
    move-exception v0

    const-string/jumbo v2, "配置项异常，配置失效"

    invoke-static {v8, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_118
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/e/k$a;)V
    .registers 7

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_FRIEND_WAPKS"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    return-void

    :cond_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "CU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "CT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_4a

    :cond_42
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {p4, p2}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/a/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/b$a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/a/b;->e:Lcom/cmic/sso/sdk/a/b$a;

    return-object p0
.end method

.method private b(Lcom/cmic/sso/sdk/a;)V
    .registers 5

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/a/b;->d:Z

    if-eqz v0, :cond_d

    const-string p1, "UmcConfigHandle"

    const-string/jumbo v0, "正在获取配置中..."

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/a/b;->d:Z

    invoke-static {}, Lcom/cmic/sso/sdk/c/c/a;->a()Lcom/cmic/sso/sdk/c/c/a;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/cmic/sso/sdk/a/b$1;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/a/b$1;-><init>(Lcom/cmic/sso/sdk/a/b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cmic/sso/sdk/c/c/a;->a(ZLcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    return-void
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/a/b;->a:Lcom/cmic/sso/sdk/a/a;

    return-object p0
.end method

.method private d()Lcom/cmic/sso/sdk/a/a;
    .registers 3

    new-instance v0, Lcom/cmic/sso/sdk/a/a$a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/a/a$a;-><init>()V

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->a(Ljava/lang/String;)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->b(Ljava/lang/String;)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->d(Ljava/lang/String;)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->h()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->d(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->i()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->b(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->e(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->e()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->e(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->a(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->f()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->d(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->b(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->c(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->c(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->j()Z

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->f(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->f(Z)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->k()I

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->a(I)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/a/a;->l()I

    move-result v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/a/d;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a/a$a;->b(I)Lcom/cmic/sso/sdk/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a$a;->a()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/cmic/sso/sdk/a/a;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b;->b:Lcom/cmic/sso/sdk/a/a;

    return-object v0
.end method

.method a(Lcom/cmic/sso/sdk/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b;->e:Lcom/cmic/sso/sdk/a/b$a;

    return-void
.end method

.method a(Lcom/cmic/sso/sdk/a;)V
    .registers 3

    invoke-static {}, Lcom/cmic/sso/sdk/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/cmic/sso/sdk/a/b$2;

    invoke-direct {v0, p0, p1}, Lcom/cmic/sso/sdk/a/b$2;-><init>(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    :cond_e
    return-void
.end method

.method b()Lcom/cmic/sso/sdk/a/a;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b;->a:Lcom/cmic/sso/sdk/a/a;

    return-object v0
.end method

.method c()V
    .registers 2

    const-string v0, "sso_config_xf"

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;)Lcom/cmic/sso/sdk/e/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/e/k$a;->c()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/e/k$a;->b()V

    return-void
.end method
