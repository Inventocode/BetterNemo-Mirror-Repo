.class Lcom/chuanglan/shanyan_sdk/tool/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdk/base/api/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/k;->d(Ljava/lang/String;IJJJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/base/api/CallBack<",
        "Ljava/lang/Object;",
        ">;"
    }
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    iput p4, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    iput-wide p5, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    iput-wide p7, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    iput-wide p9, p0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(IILjava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v7, p3

    iget-object v2, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    iget-object v3, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    sub-long/2addr v8, v10

    iget-wide v10, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    iget-wide v12, v0, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J

    const/16 v14, 0x3ff

    const/4 v15, 0x0

    move-object v1, v2

    move v2, v14

    move v14, v15

    invoke-virtual/range {v1 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string/jumbo v5, "预取号成功"

    const-string v6, ""

    const-string v7, "_seq="

    const-string v9, "_response="

    const-string v10, "_status="

    const-string v11, "_msg="

    const-string v12, "_code="

    if-nez v0, :cond_118

    :try_start_1d
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "fakeMobile"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "accessCode"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b2

    invoke-static {v13}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b2

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cuccPreFlag"

    const-wide/16 v3, 0x708

    invoke-static {v0, v2, v3, v4}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "timeend"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v2, v8

    add-long/2addr v6, v2

    invoke-static {v0, v4, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cucc_fakeMobile"

    invoke-static {v0, v2, v14}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cucc_accessCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3fe

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    const/16 v0, 0x3fe

    invoke-static {v0, v5, v5}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    iget-object v11, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    iget v12, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J

    const/16 v19, 0x0

    const-string/jumbo v20, "预取号成功"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-static/range {v6 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(Lcom/chuanglan/shanyan_sdk/tool/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/lang/String;)V

    goto/16 :goto_1d3

    :cond_b2
    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v13, 0x3ff

    iget-object v14, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    sub-long v10, v2, v10

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    move-wide v15, v3

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J

    :goto_101
    const/16 v17, 0x0

    move-object v2, v5

    move-wide/from16 v18, v3

    move v3, v13

    move-object v4, v14

    move-object v5, v0

    move v6, v7

    move-object v7, v9

    move-object/from16 v8, p2

    move-wide v9, v10

    move-wide v11, v15

    move-wide/from16 v13, v18

    move/from16 v15, v17

    invoke-virtual/range {v2 .. v15}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    goto/16 :goto_1d3

    :cond_118
    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v13, 0x3ff

    iget-object v14, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v7, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    sub-long v10, v2, v10

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    move-wide v15, v3

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_167} :catch_168

    goto :goto_101

    :catch_168
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

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->g:Lcom/chuanglan/shanyan_sdk/tool/k;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->b:Ljava/lang/String;

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

    iget v10, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->d:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->e:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/k$4;->f:J

    const/16 v19, 0x0

    const-string v11, "1014"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v19}, Lcom/chuanglan/shanyan_sdk/tool/k;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJZ)V

    :goto_1d3
    return-void
.end method
