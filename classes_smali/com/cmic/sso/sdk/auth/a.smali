.class public Lcom/cmic/sso/sdk/auth/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/cmic/sso/sdk/auth/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/cmic/sso/sdk/c/c/a;

.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/cmic/sso/sdk/c/c/a;->a()Lcom/cmic/sso/sdk/c/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cmic/sso/sdk/auth/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cmic/sso/sdk/auth/a;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

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
    sget-object p0, Lcom/cmic/sso/sdk/auth/a;->c:Lcom/cmic/sso/sdk/auth/a;

    return-object p0
.end method

.method private a(Lcom/cmic/sso/sdk/a;)V
    .registers 5

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/l;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/d;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppackage"

    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appsign"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, p5

    const-string v5, "phonescrip"

    const-string v6, "openId"

    const-string v7, "securityphone"

    const-string v8, "103000"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "true"

    const/4 v10, 0x3

    const-string v11, "logintype"

    if-eqz v8, :cond_f5

    const-string v8, "resultdata"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2e

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_2e
    sget-object v0, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/cmic/sso/sdk/e/a;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    const/4 v8, 0x0

    :try_start_39
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3e} :catch_7c

    :try_start_3e
    const-string v0, "resultJson"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4b} :catch_75

    :try_start_4b
    invoke-static {}, Lcom/cmic/sso/sdk/e/k;->a()Lcom/cmic/sso/sdk/e/k$a;

    move-result-object v0

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_53} :catch_72

    :try_start_53
    invoke-virtual {v0, v7, v14}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_66

    const-string v15, "pcid"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_66
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/e/k$a;->b()V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_69} :catch_6a

    goto :goto_86

    :catch_6a
    move-exception v0

    move-object/from16 v19, v12

    move-object v12, v0

    move-object v0, v8

    move-object/from16 v8, v19

    goto :goto_81

    :catch_72
    move-exception v0

    move-object v14, v8

    goto :goto_78

    :catch_75
    move-exception v0

    move-object v13, v8

    move-object v14, v13

    :goto_78
    move-object v8, v12

    move-object v12, v0

    move-object v0, v14

    goto :goto_81

    :catch_7c
    move-exception v0

    move-object v12, v0

    move-object v0, v8

    move-object v13, v0

    move-object v14, v13

    :goto_81
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v8

    move-object v8, v0

    :goto_86
    move-object v0, v14

    move-object v14, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "securityPhone  = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "AuthnBusiness"

    invoke-static {v15, v13}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v14}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p0

    if-eqz v12, :cond_d9

    iget-object v13, v5, Lcom/cmic/sso/sdk/auth/a;->b:Landroid/content/Context;

    const-string v6, "scripExpiresIn"

    const-string v7, "0"

    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v6, "scripKey"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "scripType"

    invoke-virtual {v1, v6, v7}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v13 .. v18}, Lcom/cmic/sso/sdk/e/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_d5

    invoke-static {v0}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_101

    :cond_d5
    invoke-interface {v2, v3, v4, v1, v12}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_108

    :cond_d9
    const-string/jumbo v0, "返回103000，但是数据解析出错"

    invoke-static {v15, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x18f4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "数据解析异常"

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4, v1, v3}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void

    :cond_f5
    move-object/from16 v5, p0

    invoke-virtual {v1, v11}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_105

    invoke-static/range {p3 .. p4}, Lcom/cmic/sso/sdk/auth/d;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_101
    invoke-interface {v2, v3, v9, v1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_108

    :cond_105
    invoke-interface {v2, v3, v4, v1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_108
    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lcom/cmic/sso/sdk/a;)V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    const-string v2, "use2048PublicKey"

    invoke-virtual {p1, v2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "AuthnBusiness"

    if-eqz v2, :cond_18

    const-string/jumbo v0, "使用2048公钥对应的对称秘钥生成方式"

    invoke-static {v3, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/a;->a()[B

    move-result-object v1

    goto :goto_37

    :cond_18
    const-string/jumbo v2, "使用1024公钥对应的对称秘钥生成方式"

    invoke-static {v3, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    sget-object v0, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;[B)V

    const-string v0, "authType"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
    .registers 6

    const-string v0, "AuthnBusiness"

    const-string v1, "LoginCheck method start"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logintype"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isCacheScrip"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "securityphone"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    invoke-static {v1}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "103000"

    const-string v2, "true"

    invoke-interface {p2, v1, v2, p1, v0}, Lcom/cmic/sso/sdk/auth/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    :goto_30
    return-void

    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method public b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
    .registers 7

    const-string v0, "AuthnBusiness"

    const-string v1, "getScripAndToken start"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;)V

    const-string v0, "isCacheScrip"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;)V

    :cond_16
    const-string v0, "logintype"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "userCapaid"

    if-ne v1, v2, :cond_27

    const-string v0, "200"

    :goto_23
    invoke-virtual {p1, v3, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    :cond_27
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "50"

    goto :goto_23

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    new-instance v1, Lcom/cmic/sso/sdk/auth/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cmic/sso/sdk/auth/a$1;-><init>(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    return-void
.end method
