.class public Lcom/chuanglan/shanyan_sdk/tool/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/tool/g$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/chuanglan/shanyan_sdk/tool/g;


# instance fields
.field private c:Lcom/chuanglan/shanyan_sdk/tool/g$a;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/g;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/g;->b:Lcom/chuanglan/shanyan_sdk/tool/g;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/g;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/g;->b:Lcom/chuanglan/shanyan_sdk/tool/g;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/g;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/g;->b:Lcom/chuanglan/shanyan_sdk/tool/g;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/g;->b:Lcom/chuanglan/shanyan_sdk/tool/g;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_20

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getResMsg Exception_e="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "ExceptionShanYanTask"

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    return-object p1
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/g;->c:Lcom/chuanglan/shanyan_sdk/tool/g$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/chuanglan/shanyan_sdk/tool/g$a;->a(I)V

    :cond_7
    return-void
.end method

.method private a(ILjava/lang/String;ZLjava/lang/String;JJ)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/g;->c:Lcom/chuanglan/shanyan_sdk/tool/g$a;

    if-eqz v1, :cond_12

    const/16 v2, 0x3fe

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-interface/range {v1 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/g$a;->a(IILjava/lang/String;Ljava/lang/String;ZJJ)V

    :cond_12
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "CheckPermissionShanYanTask"

    if-eqz p1, :cond_2a

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {p1, v3}, Lcom/chuanglan/shanyan_sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/j;->a()Lcom/chuanglan/shanyan_sdk/tool/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chuanglan/shanyan_sdk/tool/i;->a(Landroid/content/Context;)V

    goto :goto_33

    :cond_1d
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "lacksPermissions "

    aput-object v4, p1, v0

    aput-object v3, p1, v1

    invoke-static {v2, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    :cond_2a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "checkMobileNetwork failed context is null "

    aput-object v1, p1, v0

    invoke-static {v2, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_33
    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/g;ILjava/lang/String;ZLjava/lang/String;JJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(ILjava/lang/String;ZLjava/lang/String;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/g;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V
    .registers 32

    move-object/from16 v8, p0

    sget v0, Lcom/chuanglan/shanyan_sdk/b;->an:I

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/d/g;->a()Lcom/chuanglan/shanyan_sdk/d/g;

    move-result-object v9

    const-string v11, "2.3.3.9"

    const-string v16, ""

    move-object/from16 v10, p2

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    if-nez v0, :cond_2a

    move-object/from16 v17, p6

    move-object/from16 v18, p8

    invoke-virtual/range {v9 .. v18}, Lcom/chuanglan/shanyan_sdk/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/d/a;

    sget-object v2, Lcom/chuanglan/shanyan_sdk/b;->V:Ljava/lang/String;

    iget-object v3, v8, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/d/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_39

    :cond_2a
    move-object/from16 v17, p8

    invoke-virtual/range {v9 .. v17}, Lcom/chuanglan/shanyan_sdk/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/chuanglan/shanyan_sdk/d/a;

    sget-object v2, Lcom/chuanglan/shanyan_sdk/b;->X:Ljava/lang/String;

    iget-object v3, v8, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/d/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :goto_39
    move-object v9, v0

    move-object v10, v1

    new-instance v11, Lcom/chuanglan/shanyan_sdk/tool/g$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/g$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/util/Map;IJJ)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, ""

    invoke-virtual {v10, v9, v11, v0, v1}, Lcom/chuanglan/shanyan_sdk/d/a;->a(Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method private b(IJJ)V
    .registers 20

    move-object v13, p0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/d;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v13, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v13, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v13, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    const-string v4, "appId"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client"

    const-string v4, "2"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bundleId"

    const-string v6, ""

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "packageName"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "randoms"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v7, "2.3.3.9"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "packageSign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/chuanglan/shanyan_sdk/b;->an:I

    if-nez v1, :cond_75

    iget-object v1, v13, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v7, Lcom/chuanglan/shanyan_sdk/utils/r;

    invoke-direct {v7}, Lcom/chuanglan/shanyan_sdk/utils/r;-><init>()V

    invoke-virtual {v7}, Lcom/chuanglan/shanyan_sdk/utils/r;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    long-to-int v0, v9

    sput v0, Lcom/chuanglan/shanyan_sdk/b;->x:I

    if-eqz v7, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/flash/accountInit/v3"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/b;->V:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/flash/accountInit/v4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/b;->X:Ljava/lang/String;

    :cond_ba
    iget-object v1, v13, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    move-object v0, p0

    move v7, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/g;->c:Lcom/chuanglan/shanyan_sdk/tool/g$a;

    if-eqz v1, :cond_12

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-interface/range {v1 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/g$a;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_12
    return-void
.end method

.method public a(IJJ)V
    .registers 22

    move-object/from16 v11, p0

    const-string/jumbo v0, "闪验SDK初始化成功"

    const-string/jumbo v10, "初始化成功"

    const-string v1, "AppId为空，请配置AppId"

    const-string v2, "clientAppId"

    const-string v3, ""

    const-string v4, "initCount"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_13
    const-string v5, "ProcessShanYanLogger"

    new-array v6, v12, [Ljava/lang/Object;

    const-string v7, "initStart processName"

    aput-object v7, v6, v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v6, "initResult"

    invoke-static {v5, v6, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v6, v4, v13}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v8, "preResult"

    invoke-static {v7, v8, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_138

    if-eqz v5, :cond_51

    if-nez v7, :cond_51

    move/from16 v15, p1

    if-ne v15, v13, :cond_53

    const/4 v5, 0x5

    if-ge v6, v5, :cond_53

    :try_start_45
    iget-object v5, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-direct {v11, v5}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Landroid/content/Context;)V

    iget-object v5, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    add-int/2addr v6, v13

    invoke-static {v5, v4, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_53

    :cond_51
    move/from16 v15, p1

    :cond_53
    :goto_53
    invoke-direct/range {p0 .. p1}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(I)V

    iget-object v4, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v5, "appId"

    invoke-static {v4, v5, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v6, "isInitCache"

    invoke-static {v5, v6, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    const/16 v2, 0x3f8

    const/16 v0, 0x3f8

    invoke-static {v0, v1, v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1016"

    const-string v6, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_84
    sub-long v7, v0, p2

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v1 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_18a

    :cond_91
    if-eqz v5, :cond_12e

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12e

    iget-object v1, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    goto/16 :goto_12e

    :cond_a3
    const/4 v2, -0x1

    const-string v3, "cache"

    const/4 v4, 0x1

    const/16 v8, 0x3fe

    invoke-static {v8, v10, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p2

    move-object/from16 v1, p0

    const/16 v12, 0x3fe

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(ILjava/lang/String;ZLjava/lang/String;JJ)V

    iget-object v1, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v2, "initTimestart"

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    const-string v4, "initFlag"

    const-wide/16 v5, 0xe10

    invoke-static {v3, v4, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v5, v1
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_d8} :catch_136

    const/16 v1, 0x408

    const-string v2, "accOff"

    const-string/jumbo v7, "用户被禁用"

    cmp-long v8, v5, v3

    if-gez v8, :cond_112

    :try_start_e3
    iget-object v3, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v3, v2, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v13, v2, :cond_fa

    const/16 v2, 0x408

    invoke-static {v1, v7, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1032"

    const-string v6, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_84

    :cond_fa
    const-string v3, "cache"

    const/4 v4, 0x1

    invoke-static {v12, v10, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(ILjava/lang/String;ZLjava/lang/String;JJ)V

    goto/16 :goto_18a

    :cond_112
    iget-object v0, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    invoke-static {v0, v2, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v13, v0, :cond_12a

    const/16 v2, 0x408

    invoke-static {v1, v7, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1032"

    const-string v6, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto/16 :goto_84

    :cond_12a
    :goto_12a
    invoke-direct/range {p0 .. p5}, Lcom/chuanglan/shanyan_sdk/tool/g;->b(IJJ)V

    goto :goto_18a

    :cond_12e
    :goto_12e
    iget-object v0, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    iget-object v1, v11, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_135} :catch_136

    goto :goto_12a

    :catch_136
    move-exception v0

    goto :goto_13b

    :catch_138
    move-exception v0

    move/from16 v15, p1

    :goto_13b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initStart Exception_e="

    aput-object v2, v1, v14

    aput-object v0, v1, v13

    const-string v2, "ExceptionShanYanTask"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x3f6

    const/16 v1, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStart--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v7, v0, p2

    const-string v5, "1014"

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v1 .. v10}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_18a
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/g;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/g;->e:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/g;->c:Lcom/chuanglan/shanyan_sdk/tool/g$a;

    return-void
.end method
