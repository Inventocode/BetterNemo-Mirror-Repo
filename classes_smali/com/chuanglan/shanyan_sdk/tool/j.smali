.class public Lcom/chuanglan/shanyan_sdk/tool/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/chuanglan/shanyan_sdk/tool/j;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/chuanglan/shanyan_sdk/tool/j;
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/j;->a:Lcom/chuanglan/shanyan_sdk/tool/j;

    if-nez v0, :cond_17

    const-class v0, Lcom/chuanglan/shanyan_sdk/tool/h;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/chuanglan/shanyan_sdk/tool/j;->a:Lcom/chuanglan/shanyan_sdk/tool/j;

    if-nez v1, :cond_12

    new-instance v1, Lcom/chuanglan/shanyan_sdk/tool/j;

    invoke-direct {v1}, Lcom/chuanglan/shanyan_sdk/tool/j;-><init>()V

    sput-object v1, Lcom/chuanglan/shanyan_sdk/tool/j;->a:Lcom/chuanglan/shanyan_sdk/tool/j;

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
    sget-object v0, Lcom/chuanglan/shanyan_sdk/tool/j;->a:Lcom/chuanglan/shanyan_sdk/tool/j;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v12, 0x0

    :try_start_b
    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    const-string v4, "appId"

    invoke-static {v3, v4, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    const-string v5, "accountFlag"

    invoke-static {v4, v5, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ap"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "tk"

    move-object/from16 v7, p3

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "au"

    move-object/from16 v8, p4

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "dd"

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    const-string v9, "DID"

    invoke-static {v8, v9, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ud"

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    const-string v9, "uuid"

    invoke-static {v8, v9, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vs"

    const-string v6, "2.3.3.9"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tp"

    const-string v6, "0"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_fe

    const-string v6, "1"

    if-eqz v2, :cond_6a

    :try_start_65
    const-string v2, "nlt"

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x10

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "utf-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v9, v2}, Lcom/chuanglan/shanyan_sdk/utils/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/16 v5, 0xb

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_97} :catch_fe

    const-string v9, "-"

    const-string v10, "A"

    if-eqz v8, :cond_bc

    :try_start_9d
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d1

    :cond_bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    const-string v2, "token"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_db

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/j;->b()V

    :cond_db
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    const-string v2, "timeend"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v3
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ec} :catch_fe

    const/16 v4, 0x3e8

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-wide v8, v14

    move-wide/from16 v10, p6

    const/4 v2, 0x0

    move-wide/from16 v12, p8

    :try_start_f8
    invoke-virtual/range {v3 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_155

    :catch_fc
    move-exception v0

    goto :goto_100

    :catch_fe
    move-exception v0

    const/4 v2, 0x0

    :goto_100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p5, :cond_108

    invoke-direct/range {p0 .. p0}, Lcom/chuanglan/shanyan_sdk/tool/j;->b()V

    :cond_108
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getMobileNum Exception_e="

    aput-object v4, v3, v2

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v2, "ExceptionShanYanTask"

    invoke-static {v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v3

    const/16 v4, 0x3f6

    const/16 v2, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMobileNum--Exception_e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v8, "1014"

    move-object/from16 v5, p2

    move-wide v10, v14

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    invoke-virtual/range {v3 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_155
    return-void
.end method

.method private b()V
    .registers 2

    sget-object v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->finish()V

    :cond_15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/j;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .registers 31

    move-object/from16 v0, p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getOneKeyLoginStatus_isFinish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string v3, "ProcessShanYanLogger"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/tool/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/sdk/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v5 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V

    goto :goto_69

    :cond_45
    move-object/from16 v0, p0

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/h;->a()Lcom/chuanglan/shanyan_sdk/tool/h;

    move-result-object v9

    const/16 v10, 0x3f6

    const/16 v1, 0x3f6

    const-string v2, "accessToken为空"

    const-string v3, "getOneKeyLoginStatus--accessToken为空"

    invoke-static {v1, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-string v14, "1014"

    const-string v15, "accessToken为空"

    move-object/from16 v11, p1

    move-wide/from16 v18, p5

    move-wide/from16 v20, p7

    invoke-virtual/range {v9 .. v21}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_69
    return-void
.end method
