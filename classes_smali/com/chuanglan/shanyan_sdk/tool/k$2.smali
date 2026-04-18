.class Lcom/chuanglan/shanyan_sdk/tool/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/chinatelecom/account/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/k;->b(Ljava/lang/String;IJJJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/chuanglan/shanyan_sdk/tool/k;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .registers 11

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    iput p4, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    iput-wide p5, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    iput-wide p7, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iput-wide p9, p0, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 50

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "预取号成功"

    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_18} :catch_1b3

    const-string v5, ""

    if-nez v4, :cond_146

    :try_start_1c
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_106

    const-string v6, "number"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "accessCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "gwAuth"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-static {v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-static {v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "ctccPreFlag"

    const-wide/16 v8, 0x258

    invoke-static {v0, v4, v8, v9}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v8, "timeend"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v4, v4, v11

    add-long/2addr v9, v4

    invoke-static {v0, v8, v9, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "ctcc_number"

    invoke-static {v0, v4, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "ctcc_accessCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "ctcc_gwAuth"

    invoke-static {v0, v4, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v6, 0x3fe

    iget-object v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    const/16 v0, 0x3fe

    invoke-static {v0, v2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    iget-object v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    iget v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v12, v2, v12

    iget-wide v14, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v18, 0x0

    const-string/jumbo v19, "预取号成功"

    move-wide/from16 v16, v2

    invoke-static/range {v5 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    goto/16 :goto_21e

    :cond_c6
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v21, 0x3ff

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    iget v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v27, v4, v7

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v33, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move/from16 v24, v6

    move-wide/from16 v29, v4

    move-wide/from16 v31, v7

    invoke-virtual/range {v20 .. v33}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_21e

    :cond_106
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v35, 0x3ff

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    iget v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v41, v4, v7

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v47, 0x0

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move/from16 v38, v6

    move-wide/from16 v43, v4

    move-wide/from16 v45, v7

    invoke-virtual/range {v34 .. v47}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_21e

    :cond_146
    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v10, 0x3ff

    iget-object v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v16, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v22, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-virtual/range {v9 .. v22}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_21e

    :cond_180
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v24, 0x3ff

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    const/16 v4, 0x3ff

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    iget v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    const-string v28, "1003"

    const-string/jumbo v29, "电信SDK未知异常"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v30, v4, v6

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v36, 0x0

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move/from16 v27, v0

    move-wide/from16 v32, v4

    move-wide/from16 v34, v6

    invoke-virtual/range {v23 .. v36}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V
    :try_end_1b2
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1b2} :catch_1b3

    goto :goto_21e

    :catch_1b3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOperatePreCTCC--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->b:Ljava/lang/String;

    const/16 v2, 0x3f6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->d:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->e:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$2;->f:J

    const/16 v19, 0x0

    const-string v11, "1014"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_21e
    return-void
.end method
