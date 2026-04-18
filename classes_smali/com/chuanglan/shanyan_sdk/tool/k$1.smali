.class Lcom/chuanglan/shanyan_sdk/tool/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/k;->a(Ljava/lang/String;IJJJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/chuanglan/shanyan_sdk/tool/k;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/k;Ljava/lang/String;IJJJ)V
    .registers 10

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->b:I

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->d:J

    iput-wide p8, p0, Lcom/chuanglan/shanyan_sdk/tool/k$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .registers 38

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string/jumbo v2, "预取号成功"

    const-string v3, "resultCode"

    const-string v4, "getPhoneInfo()"

    if-eqz v0, :cond_b8

    :try_start_d
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const v5, 0x19258

    if-ne v3, v5, :cond_69

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3fe

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

    const/16 v0, 0x3fe

    invoke-static {v0, v2, v2}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    iget-object v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

    iget v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->b:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->e:J

    const/16 v19, 0x0

    const-string/jumbo v20, "预取号成功"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-static/range {v6 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cmccPreFlag"

    const-wide/16 v3, 0xe10

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "timeend"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v2, v2, v7

    add-long/2addr v5, v2

    invoke-static {v0, v4, v5, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_16c

    :cond_69
    iget-object v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v8, 0x3ff

    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->c:J

    sub-long v14, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->e:J

    const/16 v20, 0x0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    invoke-virtual/range {v7 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_16c

    :cond_b8
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v22, 0x3ff

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

    const/16 v5, 0x3ff

    const-string/jumbo v6, "预取号失败"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d2

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d3

    :cond_d2
    const/4 v0, 0x0

    :goto_d3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    iget v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->b:I

    const-string v26, "1023"

    const-string/jumbo v27, "预取号失败"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->c:J

    sub-long v28, v4, v6

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->d:J

    iget-wide v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->e:J

    const/16 v34, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v25, v0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    invoke-virtual/range {v21 .. v34}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_100} :catch_101

    goto :goto_16c

    :catch_101
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOperatePreCMCC--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->f:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->a:Ljava/lang/String;

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

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->b:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$1;->e:J

    const/16 v19, 0x0

    const-string v11, "1014"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_16c
    return-void
.end method
