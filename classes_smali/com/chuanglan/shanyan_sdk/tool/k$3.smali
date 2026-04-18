.class Lcom/chuanglan/shanyan_sdk/tool/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unikuwei/mianmi/account/shield/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/k;->c(Ljava/lang/String;IJJJILjava/lang/String;)V
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    iput p4, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    iput-wide p5, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    iput-wide p7, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    iput-wide p9, p0, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "resultCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "resultData"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resultMsg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_14b

    const-string v5, ""

    if-nez v3, :cond_117

    :try_start_1f
    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "mobile"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "accessCode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-static {v6}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "cuccPreFlag"

    const-wide/16 v7, 0x708

    invoke-static {v0, v3, v7, v8}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "timeend"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v7, v7, v11

    add-long/2addr v9, v7

    invoke-static {v0, v3, v9, v10}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "cucc_fakeMobile"

    invoke-static {v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "cucc_accessCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    const/16 v0, 0x3fe

    const-string/jumbo v3, "预取号成功"

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    iget-object v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    iget v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    sub-long v13, v3, v13

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    move-object v0, v8

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    const/16 v19, 0x0

    move-wide/from16 v17, v7

    const/16 v5, 0x3fe

    move v7, v5

    move-object v8, v0

    move-wide v15, v3

    move-object/from16 v20, v2

    invoke-static/range {v6 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    goto/16 :goto_1b6

    :cond_bb
    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    sub-long v13, v3, v12

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    move-object v15, v8

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    :goto_e1
    const/16 v19, 0x0

    move-wide/from16 v17, v7

    const/16 v0, 0x3ff

    move v7, v0

    move-object v8, v15

    move-object v12, v2

    move-wide v15, v3

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_1b6

    :cond_f0
    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    sub-long v13, v3, v12

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    move-object v15, v8

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    goto :goto_e1

    :cond_117
    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    sub-long v13, v3, v12

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    move-object v5, v8

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    const/16 v19, 0x0

    move-wide/from16 v17, v7

    const/16 v0, 0x3ff

    move v7, v0

    move-object v8, v5

    move-object v12, v2

    move-wide v15, v3

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_14a} :catch_14b

    goto :goto_1b6

    :catch_14b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOperatePreCUCC--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->b:Ljava/lang/String;

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

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->d:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->e:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$3;->f:J

    const/16 v19, 0x0

    const-string v11, "1014"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_1b6
    return-void
.end method
