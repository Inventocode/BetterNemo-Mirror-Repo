.class Lcom/chuanglan/shanyan_sdk/tool/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/h;->d(Ljava/lang/String;ZJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/chuanglan/shanyan_sdk/tool/h;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;ZJJJ)V
    .registers 10

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    iput-wide p4, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iput-wide p6, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iput-wide p8, p0, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "token"

    const-string v3, "SDK获取token失败"

    const-string v4, "resultCode"

    const/16 v5, 0x3eb

    const/4 v6, 0x1

    if-eqz v0, :cond_1c8

    :try_start_f
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_1f5

    const-string v7, "loginAuth()"

    if-eqz v3, :cond_183

    :try_start_17
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_1f5

    const-string v5, ""

    if-eqz v4, :cond_ae

    const v4, 0x19258

    if-ne v3, v4, :cond_ae

    :try_start_28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->b(Lcom/chuanglan/shanyan_sdk/tool/h;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "cmccSwitch"

    invoke-static {v0, v2, v6}, Lcom/chuanglan/shanyan_sdk/utils/w;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v6, v0, :cond_56

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    const-string v10, "1"

    iget-boolean v12, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    :goto_4e
    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-static/range {v8 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(Lcom/chuanglan/shanyan_sdk/tool/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V

    goto/16 :goto_26c

    :cond_56
    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    iget-object v9, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    const-string v10, "5"

    iget-boolean v12, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    goto :goto_4e

    :cond_65
    iget-object v15, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v16, 0x3eb

    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    iget-wide v3, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v7, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-virtual/range {v15 .. v27}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    goto/16 :goto_26c

    :cond_ae
    const v2, 0x18ed5

    if-eq v3, v2, :cond_129

    const v2, 0x18ed6

    if-eq v3, v2, :cond_129

    const v2, 0x18ed7

    if-eq v3, v2, :cond_129

    const v2, 0x30d59

    if-eq v3, v2, :cond_129

    const v2, 0x1906b

    if-ne v3, v2, :cond_c8

    goto :goto_129

    :cond_c8
    const v2, 0x30d54

    if-ne v3, v2, :cond_cf

    goto/16 :goto_26c

    :cond_cf
    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v9, 0x3eb

    iget-object v10, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v6, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-virtual/range {v8 .. v20}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    iget-boolean v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    :goto_124
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->quitAuthActivity()V

    goto/16 :goto_26c

    :cond_129
    :goto_129
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v4, 0x3ef

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v8, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-wide v10, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v12, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v14, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    move v3, v4

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v0

    move-wide v9, v10

    move-wide v11, v12

    move-wide v13, v14

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    iget-boolean v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    goto :goto_124

    :cond_183
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v3, 0x3eb

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const-string v7, "1003"

    invoke-static/range {p2 .. p2}, Lcom/chuanglan/shanyan_sdk/utils/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    iget-boolean v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    goto/16 :goto_124

    :cond_1c8
    iget-object v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v0, 0x3eb

    iget-object v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

    invoke-static {v5, v3, v3}, Lcom/chuanglan/shanyan_sdk/utils/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const-string v7, "1003"

    const-string v8, "SDK获取token失败"

    iget-wide v9, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v11, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    move v3, v0

    invoke-virtual/range {v2 .. v14}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    iget-boolean v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_1f3} :catch_1f5

    goto/16 :goto_124

    :catch_1f5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCMCCLoginMethod--Exception_e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExceptionShanYanTask"

    invoke-static {v3, v2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    const/16 v7, 0x3f6

    iget-object v8, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->a:Ljava/lang/String;

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

    const/4 v10, 0x4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->c:J

    iget-wide v2, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->d:J

    iget-wide v4, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->e:J

    const-string v11, "1014"

    move-wide v15, v2

    move-wide/from16 v17, v4

    invoke-virtual/range {v6 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/h;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJJ)V

    iget-boolean v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->b:Z

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_26c

    iget-object v0, v1, Lcom/chuanglan/shanyan_sdk/tool/h$2;->f:Lcom/chuanglan/shanyan_sdk/tool/h;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/h;->c(Lcom/chuanglan/shanyan_sdk/tool/h;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->quitAuthActivity()V

    :cond_26c
    :goto_26c
    return-void
.end method
