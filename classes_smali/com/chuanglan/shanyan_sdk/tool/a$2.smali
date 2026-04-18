.class Lcom/chuanglan/shanyan_sdk/tool/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unikuwei/mianmi/account/shield/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/a;->a(Ljava/lang/String;JJLjava/lang/String;)V
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/a$2;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/a$2;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/a$2;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/a$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 21

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

    move-result-object v12
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_94

    const-string v2, ""

    if-nez v3, :cond_6e

    :try_start_1f
    invoke-static {v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "accessCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->a:Ljava/lang/String;

    const-string v6, ""

    iget-object v7, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->b:Ljava/lang/String;

    iget-wide v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->c:J

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->d:J

    invoke-static/range {v3 .. v11}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(Lcom/chuanglan/shanyan_sdk/tool/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_fb

    :cond_41
    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v7, 0x7d3

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->a:Ljava/lang/String;

    invoke-static {v3, v12, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->d:J

    :goto_66
    move-wide v15, v4

    move-wide/from16 v17, v2

    invoke-virtual/range {v6 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_fb

    :cond_6e
    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v7, 0x7d3

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->a:Ljava/lang/String;

    invoke-static {v3, v12, v0}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->d:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_93} :catch_94

    goto :goto_66

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCUCCAuth--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->e:Lcom/chuanglan/shanyan_sdk/tool/a;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->a:Ljava/lang/String;

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

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->c:J

    sub-long v13, v2, v4

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/a$2;->d:J

    const-string v11, "2003"

    move-wide v15, v4

    move-wide/from16 v17, v2

    invoke-virtual/range {v6 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    :goto_fb
    return-void
.end method
