.class Lcom/chuanglan/shanyan_sdk/tool/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/chinatelecom/account/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/a;->c(Ljava/lang/String;JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/chuanglan/shanyan_sdk/tool/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/a$4;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_66

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3f

    const-string v0, "number"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "accessCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "gwAuth"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->b:Ljava/lang/String;

    iget-wide v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    invoke-static/range {v3 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_10d

    :cond_3f
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v4, 0x7d3

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    const-string v8, "2003"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    sub-long/2addr v9, v11

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    :goto_5a
    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_10d

    :cond_66
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v4, 0x7d3

    iget-object v5, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    const-string v8, "2003"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    sub-long/2addr v9, v11

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    goto :goto_5a

    :cond_82
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v3, 0x7d3

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

    const/16 v5, 0x7d3

    invoke-static/range {p1 .. p1}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    const-string v7, "2003"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    sub-long v9, v8, v11

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_a5} :catch_a6

    goto :goto_10d

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCTCCAuth--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->a:Ljava/lang/String;

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

    const/16 v10, 0xb

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$4;->d:J

    const-string v11, "2003"

    move-wide v15, v4

    move-wide/from16 v17, v2

    invoke-virtual/range {v6 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_10d
    return-void
.end method
