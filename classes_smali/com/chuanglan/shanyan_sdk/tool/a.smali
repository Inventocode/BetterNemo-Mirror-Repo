.class public Lcom/chuanglan/shanyan_sdk/tool/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chuanglan/shanyan_sdk/tool/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/tool/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private d:Lcom/chuanglan/shanyan_sdk/tool/a$a;

.field private e:Ljava/lang/String;


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

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/a;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/a;->a:Lcom/chuanglan/shanyan_sdk/tool/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/a;->a:Lcom/chuanglan/shanyan_sdk/tool/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/a;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/a;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/a;->a:Lcom/chuanglan/shanyan_sdk/tool/a;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/a;->a:Lcom/chuanglan/shanyan_sdk/tool/a;

    return-object v0
.end method

.method static synthetic a(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 19

    move-object v8, p0

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "woClientId"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const-string v3, "woClientSecret"

    invoke-static {v1, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    move-result-object v2

    iget-object v3, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v1, "getPhoneInfoTimeOut"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->getInstance()Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;

    move-result-object v9

    mul-int/lit16 v10, v0, 0x3e8

    new-instance v11, Lcom/chuanglan/shanyan_sdk/tool/a$2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a$2;-><init>(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v9, v10, v11}, Lcom/unikuwei/mianmi/account/shield/UniAccountHelper;->mobileAuth(ILcom/unikuwei/mianmi/account/shield/ResultListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 24

    move-object v14, p0

    move-object/from16 v0, p4

    const-string v1, "1"

    const-string v2, ""

    const/4 v12, 0x0

    :try_start_8
    iget-object v3, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v4, "appId"

    invoke-static {v3, v4, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v5, "accountFlag"

    invoke-static {v4, v5, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ap"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "tk"

    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v0, :cond_42

    const-string v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "7"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    :cond_3b
    const-string v6, "au"

    move-object/from16 v8, p3

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_42
    const-string v6, "dd"

    iget-object v8, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v9, "DID"

    invoke-static {v8, v9, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ud"

    iget-object v8, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v9, "uuid"

    invoke-static {v8, v9, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vs"

    const-string v6, "2.3.3.9"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tp"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "nlt"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_75
    iget-object v2, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-virtual {v2, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v8, v2}, Lcom/chuanglan/shanyan_sdk/utils/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, 0xb

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v6
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a2} :catch_f8

    const-string v8, "-"

    const-string v9, "A"

    if-eqz v6, :cond_c7

    :try_start_a8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c2

    :goto_d9
    const-string v1, "token"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x7d0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p5

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-wide v6, v8

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_f7} :catch_f8

    goto :goto_15a

    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneNumVerify--Exception_e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "ExceptionShanYanTask"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x3f6

    const/16 v1, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p5

    const-string v6, "1014"

    move-object v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_15a
    return-void
.end method

.method private b(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 19

    move-object v8, p0

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cuccAppid"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const-string v3, "cuccAppkey"

    invoke-static {v1, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/sdk/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v1, "getPhoneInfoTimeOut"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;

    move-result-object v10

    new-instance v11, Lcom/chuanglan/shanyan_sdk/tool/a$3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a$3;-><init>(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v9, v11}, Lcom/sdk/mobile/manager/oauth/cucc/OauthManager;->getAuthoriseCode(ILcom/sdk/base/api/CallBack;)V

    return-void
.end method

.method private c(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 19

    move-object v8, p0

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v1, "getPhoneInfoTimeOut"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v9, Lcn/com/chinatelecom/account/api/CtSetting;

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v1, v0, 0x2

    invoke-direct {v9, v1, v1, v0}, Lcn/com/chinatelecom/account/api/CtSetting;-><init>(III)V

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v10

    new-instance v11, Lcom/chuanglan/shanyan_sdk/tool/a$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a$4;-><init>(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v9, v11}, Lcn/com/chinatelecom/account/api/CtAuth;->requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method private d(Ljava/lang/String;JJLjava/lang/String;)V
    .registers 20

    move-object v8, p0

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppid"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v2, "cmccAppkey"

    invoke-static {v0, v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v8, Lcom/chuanglan/shanyan_sdk/tool/a;->c:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    new-instance v12, Lcom/chuanglan/shanyan_sdk/tool/a$5;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a$5;-><init>(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v11, v9, v10, v12}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V
    .registers 27

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/a;->d:Lcom/chuanglan/shanyan_sdk/tool/a$a;

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

    invoke-interface/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/a$a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :cond_19
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 23

    move-object v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/a;->d:Lcom/chuanglan/shanyan_sdk/tool/a$a;

    if-eqz v1, :cond_13

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-interface/range {v1 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    :cond_13
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/cmic/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->c:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/chuanglan/shanyan_sdk/tool/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->d:Lcom/chuanglan/shanyan_sdk/tool/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 21

    move-object v14, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "联通运营商通道未开启"

    const-string/jumbo v2, "移动运营商通道未开启"

    const-string/jumbo v3, "电信运营商通道未开启"

    invoke-virtual {p0}, Lcom/chuanglan/shanyan_sdk/tool/a;->b()V

    :try_start_f
    const-string v4, "ProcessShanYanLogger"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start--operatorType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x1fb891

    if-eq v6, v7, :cond_44

    const v7, 0x1fbc52

    if-eq v6, v7, :cond_3b

    goto :goto_4e

    :cond_3b
    const-string v6, "CUCC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    goto :goto_4f

    :cond_44
    const-string v6, "CTCC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v8, 0x1

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v8, -0x1

    :goto_4f
    const/16 v4, 0x3e9

    const/4 v6, 0x2

    if-eqz v8, :cond_cc

    if-eq v8, v5, :cond_92

    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v3, "cmccSwitch"

    invoke-static {v1, v3, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_8f

    if-eq v1, v6, :cond_81

    const/16 v3, 0x3e9

    invoke-static {v4, v2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "1020"

    const-string v7, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v8, v1, p2

    move-object v1, p0

    move v2, v3

    move-object/from16 v3, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_119

    :cond_81
    const-string v7, "5"

    :goto_83
    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a;->d(Ljava/lang/String;JJLjava/lang/String;)V

    goto/16 :goto_119

    :cond_8f
    const-string v7, "1"

    goto :goto_83

    :cond_92
    iget-object v1, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v2, "ctccSwitch"

    invoke-static {v1, v2, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_c9

    if-eq v1, v6, :cond_bc

    const/16 v2, 0x3e9

    invoke-static {v4, v3, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "1020"

    const-string v7, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    :goto_ae
    sub-long v8, v8, p2

    move-object v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-virtual/range {v1 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_119

    :cond_bc
    const-string v7, "7"

    :goto_be
    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a;->c(Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_119

    :cond_c9
    const-string v7, "3"

    goto :goto_be

    :cond_cc
    iget-object v2, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v3, "cuccSwitch"

    invoke-static {v2, v3, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v14, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    const-string v7, "woSwitch"

    invoke-static {v3, v7, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_112

    if-eq v3, v6, :cond_105

    if-eq v2, v5, :cond_102

    if-eq v2, v6, :cond_f5

    const/16 v2, 0x3e9

    invoke-static {v4, v1, v1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    const-string v6, "1020"

    const-string v7, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    goto :goto_ae

    :cond_f5
    const-string v7, "6"

    :goto_f7
    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a;->b(Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_119

    :cond_102
    const-string v7, "2"

    goto :goto_f7

    :cond_105
    const-string v7, "8"

    :goto_107
    move-object v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_119

    :cond_112
    const-string v7, "4"
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_114} :catch_115

    goto :goto_107

    :catch_115
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_119
    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;JJ)V
    .registers 27

    move-object/from16 v0, p1

    new-instance v7, Lcom/chuanglan/shanyan_sdk/tool/a$1;

    move-object v1, v7

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/chuanglan/shanyan_sdk/tool/a$1;-><init>(Lcom/chuanglan/shanyan_sdk/tool/a;JJ)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a;->b:Landroid/content/Context;

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    sget-object v2, Lcom/chuanglan/shanyan_sdk/b;->at:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_23
    const/16 v9, 0x3f6

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x3f6

    const-string/jumbo v2, "未初始化"

    invoke-static {v0, v2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xb

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v15, v2, p2

    const-string v13, "1014"

    const-string v14, "AuthStart()未初始化"

    move-object/from16 v8, p0

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    invoke-virtual/range {v8 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :cond_47
    :goto_47
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/a;->d:Lcom/chuanglan/shanyan_sdk/tool/a$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/chuanglan/shanyan_sdk/tool/a$a;->a()V

    :cond_7
    return-void
.end method
