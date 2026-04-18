.class Lcom/chuanglan/shanyan_sdk/tool/g$1;
.super Lcom/chuanglan/shanyan_sdk/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/chuanglan/shanyan_sdk/tool/g;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/util/Map;IJJ)V
    .registers 8

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->a:Ljava/util/Map;

    iput p3, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 49

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ctccAppkey"

    const-string v3, "ctccAppid"

    const-string v4, "woClientSecret"

    const-string v5, "woClientId"

    const-string v6, "cuccAppkey"

    const-string v7, "cuccAppid"

    const-string v8, "cmccAppkey"

    const-string v9, "cmccAppid"

    const-string v10, "0"

    const-string v11, "pks"

    const-string v12, "initFlag"

    :try_start_1a
    sget-boolean v16, Lcom/chuanglan/shanyan_sdk/b;->aa:Z

    const/4 v13, 0x4

    if-eqz v16, :cond_3f

    sget-boolean v16, Lcom/chuanglan/shanyan_sdk/b;->Z:Z

    if-eqz v16, :cond_3f

    const-string v15, "ProcessShanYanLogger"

    new-array v14, v13, [Ljava/lang/Object;

    const-string v19, "initStart params"

    const/16 v18, 0x0

    aput-object v19, v14, v18

    iget-object v13, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->a:Ljava/util/Map;

    const/16 v16, 0x1

    aput-object v13, v14, v16

    const-string v13, "\nresult=="

    const/16 v17, 0x2

    aput-object v13, v14, v17

    const/4 v13, 0x3

    aput-object v0, v14, v13

    invoke-static {v15, v14}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_582

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v15, "retCode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_54} :catch_59f

    const-string v14, ""

    if-eqz v20, :cond_552

    move-object/from16 v20, v14

    :try_start_5a
    const-string v14, "data"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_514

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v10

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v6

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v5

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v4

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 p1, v5

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v6

    const-string v6, "appId"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v6

    const-string v6, "reportFlag"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v6

    const-string v6, "reportCount"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v6

    const-string v6, "reportMax"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v6

    const-string v6, "cmccPreFlag"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v6

    const-string v6, "cuccPreFlag"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v30, v6

    const-string v6, "ctccPreFlag"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v31, v6

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v12

    const-string v12, "authPageFlag"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v33, v6

    const-string v6, "preFailFlag"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v34, v6

    const-string v6, "ispStatus"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v35, v6

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v36, v11

    const-string v11, "cmccfn"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v37, v6

    const-string v6, "accOff"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v38, v12

    const-string v12, "accountFlag"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v39, v12

    const-string v12, "pstyle"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v40, v11

    const-string v11, "ns"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v41, v12

    const-string v12, "backrp"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v42, v11

    const-string v11, "rptDly"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v43, v13

    iget-object v13, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v13}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v44, v12

    const-string v12, "initTimestart"

    move-object/from16 v45, v10

    move-object/from16 v46, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v13, v12, v10, v11}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v10}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v15}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v3, v23

    move-object/from16 v2, v45

    invoke-static {v0, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-static {v0, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    invoke-static {v0, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "appId"

    move-object/from16 v3, v21

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "isInitCache"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "accOff"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1eb

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    const/16 v4, 0x408

    iget v5, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    const/16 v0, 0x408

    const-string/jumbo v2, "用户被禁用"

    const-string/jumbo v6, "用户被禁用"

    invoke-static {v0, v2, v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1032"

    const-string v8, "check_error"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long/2addr v9, v11

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    invoke-virtual/range {v3 .. v12}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :cond_1eb
    invoke-static/range {v46 .. v46}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "rptDly"

    move-object/from16 v3, v46

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fe
    invoke-static/range {v44 .. v44}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "backrp"

    move-object/from16 v3, v44

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_211
    invoke-static/range {v42 .. v42}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_224

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "ns"

    move-object/from16 v3, v42

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_224
    invoke-static/range {v41 .. v41}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_237

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "pstyle"

    move-object/from16 v3, v41

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_237
    invoke-static/range {v40 .. v40}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cmccfn"

    move-object/from16 v3, v40

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24a
    invoke-static/range {v39 .. v39}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25d

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "accountFlag"

    move-object/from16 v3, v39

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25d
    const-string v0, "sto"

    move-object/from16 v2, v43

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v2, 0x1

    aget-object v4, v0, v2

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "initTimeOut"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    sget v2, Lcom/chuanglan/shanyan_sdk/b;->ad:I

    const/4 v3, 0x4

    if-ne v3, v2, :cond_2ae

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "getPhoneInfoTimeOut"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_2aa
    invoke-static {v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2b9

    :cond_2ae
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "getPhoneInfoTimeOut"

    sget v4, Lcom/chuanglan/shanyan_sdk/b;->ad:I

    goto :goto_2aa

    :goto_2b9
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "openLoginAuthTimeOut"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2cc
    invoke-static/range {v38 .. v38}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "authPageFlag"

    invoke-static/range {v38 .. v38}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_2e1
    invoke-static/range {v26 .. v26}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f6

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "reportFlag"

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_2f6
    invoke-static/range {v27 .. v27}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30b

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "reportCount"

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_30b
    invoke-static/range {v28 .. v28}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_320

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "reportMax"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_320
    invoke-static/range {v29 .. v29}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_335

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cmccPreFlag"

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_335
    invoke-static/range {v30 .. v30}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34a

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cuccPreFlag"

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_34a
    invoke-static/range {v31 .. v31}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35f

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "ctccPreFlag"

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_35f
    invoke-static/range {v33 .. v33}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_380

    move-object/from16 v2, v22

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_370

    goto :goto_380

    :cond_370
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v32

    invoke-static {v2, v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_38d

    :cond_380
    :goto_380
    move-object/from16 v0, v32

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0xe10

    invoke-static {v2, v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_38d
    invoke-static/range {v34 .. v34}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "preFailFlag"

    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_3a2
    invoke-static/range {v37 .. v37}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b6

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v3, v36

    move-object/from16 v2, v37

    :goto_3b2
    invoke-static {v0, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c1

    :cond_3b6
    move-object/from16 v3, v36

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "0MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJaqWkyQhbQ6EbYBFaxhfblDc3wmzSV27D/CncV6b1dG9DW/9rPqKLP9TvpcxA8OTgQR/WZ1YKwtcHJurR83spkCAwEAAQ=="

    goto :goto_3b2

    :goto_3c1
    invoke-static/range {v35 .. v35}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_3c5
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_3c5} :catch_59f

    const-string v2, "woSwitch"

    const-string v3, "ctccSwitch"

    const-string v4, "cuccSwitch"

    const-string v5, "cmccSwitch"

    if-eqz v0, :cond_46f

    :try_start_3cf
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x4

    if-lt v0, v6, :cond_46f

    move-object/from16 v0, v35

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v9}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v5, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    iget-object v11, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v11}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    iget-object v12, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v12}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    iget-object v13, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v13}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v2, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    if-ne v9, v6, :cond_43d

    if-ne v11, v7, :cond_43d

    if-ne v12, v8, :cond_43d

    if-eq v0, v13, :cond_44a

    :cond_43d
    invoke-static {}, Lcom/chuanglan/shanyan_sdk/c/a;->a()Lcom/chuanglan/shanyan_sdk/c/a;

    move-result-object v9

    iget-object v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v10}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Landroid/content/Context;)V

    :cond_44a
    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v9}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v8}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4ca

    :cond_46f
    move-object/from16 v0, v35

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4ca

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4ca

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v5, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v5}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v4, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v3, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4ca
    :goto_4ca
    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "preResult"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4f2

    iget v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f2

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "initResult"

    invoke-static {v0, v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;Landroid/content/Context;)V

    :cond_4f2
    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    iget v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    const-string/jumbo v5, "初始化成功"

    const/4 v6, 0x0

    const/16 v0, 0x3fe

    const-string/jumbo v2, "初始化成功"

    const-string/jumbo v7, "初始化成功"

    invoke-static {v0, v2, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long/2addr v8, v10

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    invoke-static/range {v3 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;ILjava/lang/String;ZLjava/lang/String;JJ)V

    goto/16 :goto_5f3

    :cond_514
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    const/16 v3, 0x3ea

    iget v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    invoke-static {v2, v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3ea

    invoke-static {v6, v5, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    invoke-static {v5, v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long v25, v5, v7

    iget-wide v5, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move-wide/from16 v27, v5

    invoke-virtual/range {v19 .. v28}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_5f3

    :cond_552
    move-object v6, v14

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    const/16 v3, 0x3fb

    iget v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    const/16 v5, 0x3fb

    invoke-static {v2, v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long v8, v7, v9

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    :goto_57c
    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_5f3

    :cond_582
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    const/16 v3, 0x3ea

    iget v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    invoke-static {v2, v0}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(Lcom/chuanglan/shanyan_sdk/tool/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3ea

    invoke-static {v6, v5, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1002"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long v8, v7, v9

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J
    :try_end_59e
    .catch Lorg/json/JSONException; {:try_start_3cf .. :try_end_59e} :catch_59f

    goto :goto_57c

    :catch_59f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getOperatorData Exception_e="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    const/16 v5, 0x3f6

    iget v6, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    const/16 v2, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOperatorData--Exception_e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long v10, v2, v10

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    const-string v8, "1014"

    invoke-virtual/range {v4 .. v13}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_5f3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->e:Lcom/chuanglan/shanyan_sdk/tool/g;

    iget v2, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorInfo()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ef

    invoke-static {v1, p2, p1}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->c:J

    sub-long v6, v4, v6

    iget-wide v8, p0, Lcom/chuanglan/shanyan_sdk/tool/g$1;->d:J

    const-string v4, "1007"

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lcom/chuanglan/shanyan_sdk/tool/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method
