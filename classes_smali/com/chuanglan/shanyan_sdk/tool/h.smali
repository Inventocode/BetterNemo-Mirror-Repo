.class public Lcom/chuanglan/shanyan_sdk/tool/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/tool/h$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static volatile b:Lcom/chuanglan/shanyan_sdk/tool/h;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private e:Lcom/chuanglan/shanyan_sdk/tool/h$a;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/h;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/h;->b:Lcom/chuanglan/shanyan_sdk/tool/h;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/h;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/h;->b:Lcom/chuanglan/shanyan_sdk/tool/h;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/h;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/h;->b:Lcom/chuanglan/shanyan_sdk/tool/h;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/h;->b:Lcom/chuanglan/shanyan_sdk/tool/h;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c()V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    return-void
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/h;->b(Ljava/lang/String;ZJJJ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V
    .registers 26

    move-object v14, p0

    move-object/from16 v0, p2

    const-string v1, ""

    const/4 v12, 0x0

    :try_start_6
    iget-object v2, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v3, "appId"

    invoke-static {v2, v3, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v4, "accountFlag"

    invoke-static {v3, v4, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ap"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "tk"

    move-object/from16 v6, p3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dd"

    iget-object v7, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v8, "DID"

    invoke-static {v7, v8, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ud"

    iget-object v7, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v8, "uuid"

    invoke-static {v7, v8, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vs"

    const-string v5, "2.3.3.9"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tp"

    const-string v5, "0"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x10

    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v7, v1}, Lcom/chuanglan/shanyan_sdk/utils/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/16 v4, 0xb

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v5
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7c} :catch_e4

    const-string v7, "-"

    const-string v8, "A"

    if-eqz v5, :cond_a3

    :try_start_82
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8

    :cond_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b8
    const-string v1, "token"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v1, "timeend"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/16 v2, 0x3e8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    if-eqz p4, :cond_139

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-eqz v0, :cond_139

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->quitAuthActivity()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_e3} :catch_e4

    goto :goto_139

    :catch_e4
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getMobileNum Exception_e="

    aput-object v2, v1, v12

    const/4 v2, 0x1

    aput-object v0, v1, v2

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

    const-string v5, "getMobileNum--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v6, "1014"

    move-object v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    if-eqz p4, :cond_139

    iget-object v0, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-eqz v0, :cond_139

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->quitAuthActivity()V

    :cond_139
    :goto_139
    return-void
.end method

.method private a(Ljava/lang/String;ZJJJ)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v2, "ctcc_number"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v2, "ctcc_accessCode"

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v2, "ctcc_gwAuth"

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {v8}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->c()V

    iget-object v4, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v5, "CTCC"

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-static/range {v4 .. v15}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    goto :goto_53

    :cond_45
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v9

    const/4 v10, 0x3

    const-string v11, "CTCC"

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-virtual/range {v9 .. v15}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;JJ)V

    :goto_53
    return-void
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/tool/h;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Ljava/lang/String;ZJJJ)V

    return-void
.end method

.method private b(Ljava/lang/String;ZJJJ)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v2, "cucc_fakeMobile"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v2, "cucc_accessCode"

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->c()V

    iget-object v4, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v5, "CUCC"

    const-string v8, ""

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-static/range {v4 .. v15}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    goto :goto_47

    :cond_39
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v9

    const/4 v10, 0x3

    const-string v11, "CUCC"

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-virtual/range {v9 .. v15}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;JJ)V

    :goto_47
    return-void
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    return-object p0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->e:Lcom/chuanglan/shanyan_sdk/tool/h$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/chuanglan/shanyan_sdk/tool/h$a;->a()V

    :cond_7
    return-void
.end method

.method static synthetic c(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Ljava/lang/String;ZJJJ)V

    return-void
.end method

.method private c(Ljava/lang/String;ZJJJ)V
    .registers 10

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->c()V

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/h;->d(Ljava/lang/String;ZJJJ)V

    return-void
.end method

.method private d(Ljava/lang/String;ZJJJ)V
    .registers 24

    move-object v10, p0

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const-string v1, "openLoginAuthTimeOut"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, v10, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/cmic/sso/sdk/auth/c;->setOverTime(J)V

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppid"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v10, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppkey"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    new-instance v14, Lcom/chuanglan/shanyan_sdk/tool/h$2;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/h$2;-><init>(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V

    invoke-virtual {v13, v11, v12, v14}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V
    .registers 27

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->e:Lcom/chuanglan/shanyan_sdk/tool/h$a;

    if-eqz v1, :cond_19

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/h$a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :cond_19
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 23

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/h;->e:Lcom/chuanglan/shanyan_sdk/tool/h$a;

    if-eqz v1, :cond_13

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/h$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    :cond_13
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->d:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/h$a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/h;->e:Lcom/chuanglan/shanyan_sdk/tool/h$a;

    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;JJ)V
    .registers 17

    sget-object v0, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/chuanglan/shanyan_sdk/tool/h$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/chuanglan/shanyan_sdk/tool/h$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/h;ZLjava/lang/String;JJ)V

    move-object v1, p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public b()V
    .registers 37

    move-object/from16 v14, p0

    const-string/jumbo v0, "拉起授权页请求频繁"

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    const/16 v15, 0x3f6

    if-eqz v1, :cond_cb

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/4 v12, 0x1

    const/16 v20, 0x0

    :try_start_16
    const-string v1, "ProcessShanYanLogger"

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "openLoginAuthMethod start "

    aput-object v3, v2, v20

    invoke-static {v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/q;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/chuanglan/shanyan_sdk/b;->ap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->af:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/chuanglan/shanyan_sdk/b;->ae:J

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    invoke-virtual/range {v2 .. v8}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;JJ)V

    sput-boolean v20, Lcom/chuanglan/shanyan_sdk/b;->ao:Z

    goto/16 :goto_105

    :cond_4e
    const/16 v2, 0x407

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x407

    invoke-static {v1, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "1031"

    const-string/jumbo v7, "拉起授权页请求频繁"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_66} :catch_75

    move-object/from16 v1, p0

    move-wide/from16 v10, v16

    const/16 v21, 0x1

    move-wide/from16 v12, v18

    :try_start_6e
    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_73

    goto/16 :goto_105

    :catch_73
    move-exception v0

    goto :goto_78

    :catch_75
    move-exception v0

    const/16 v21, 0x1

    :goto_78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "openLoginAuthMethod Exception_e="

    aput-object v2, v1, v20

    aput-object v0, v1, v21

    const-string v2, "ExceptionShanYanTask"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x3f6

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/h;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openLoginAuthMethod--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v1, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v6, "1014"

    move-object/from16 v1, p0

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_105

    :cond_cb
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v20

    const/16 v21, 0x3f6

    const/16 v23, 0x3

    const-string/jumbo v0, "未初始化"

    invoke-static {v15, v0, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x1

    const-string v22, "Unknown_Operator"

    const-string v24, "1"

    const-string v25, "0"

    const-string v32, "1014"

    const-string/jumbo v33, "未初始化"

    invoke-virtual/range {v20 .. v35}, Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    :goto_105
    return-void
.end method
