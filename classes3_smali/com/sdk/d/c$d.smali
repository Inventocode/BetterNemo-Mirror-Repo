.class public Lcom/sdk/d/c$d;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sdk/d/c$c;

    iget v0, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_166

    const/4 v4, 0x2

    if-eq v0, v4, :cond_11

    goto/16 :goto_171

    :cond_11
    iget-object v0, v1, Lcom/sdk/d/c$c;->a:Lcom/sdk/d/c;

    iget-object v1, v1, Lcom/sdk/d/c$c;->b:[Ljava/lang/Object;

    check-cast v0, Lcom/sdk/a/c;

    iget-object v5, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object v6, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq v5, v6, :cond_171

    if-eqz v1, :cond_171

    array-length v5, v1

    if-eqz v5, :cond_171

    iget-object v5, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    if-nez v5, :cond_28

    goto/16 :goto_171

    :cond_28
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_15c

    const/4 v5, 0x3

    if-eq v2, v4, :cond_13f

    const-string v6, ""

    if-eq v2, v5, :cond_108

    const/4 v5, 0x4

    if-eq v2, v5, :cond_3e

    goto/16 :goto_171

    :cond_3e
    array-length v2, v1

    if-eq v2, v4, :cond_43

    goto/16 :goto_171

    :cond_43
    sget-object v2, Lcom/sdk/a/c$a;->f:Lcom/sdk/a/c$a;

    iput-object v2, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    iget-object v2, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    aget-object v1, v1, v3

    check-cast v1, Lcom/sdk/a/f;

    iget-object v0, v0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    iget-object v0, v0, Lcom/sdk/a/e;->b:Ljava/lang/String;

    check-cast v2, Lcom/sdk/g/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_59

    goto :goto_5e

    :cond_59
    iget-object v0, v1, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :goto_5e
    :try_start_5e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_ca

    :try_start_69
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "obj"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "seq"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_c7

    invoke-static {v6}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {v9}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {v8}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v10, v2, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    invoke-static {}, Lcom/sdk/n/c;->a()Lcom/sdk/f/a;

    move-result-object v0

    iget-object v15, v0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    const/4 v11, 0x1

    const v13, 0x49bb3

    const/4 v14, 0x0

    const-string v12, "服务端数据格式出错"

    invoke-virtual/range {v10 .. v15}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sdk/g/b;->i:Ljava/lang/String;

    sget-boolean v1, Lcom/sdk/g/b;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "返回数据为空"

    invoke-static {v0, v2, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    goto/16 :goto_171

    :cond_c0
    iget-object v4, v2, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    invoke-virtual/range {v4 .. v9}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_171

    :catchall_c7
    move-exception v0

    move v11, v5

    goto :goto_cc

    :catchall_ca
    move-exception v0

    const/4 v11, 0x1

    :goto_cc
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_d0
    sget-object v3, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v3, v3, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iput-object v1, v3, Lcom/sdk/f/a$a;->d:Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_d0 .. :try_end_d6} :catchall_d6

    :catchall_d6
    iget-object v10, v2, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    invoke-static {}, Lcom/sdk/n/c;->a()Lcom/sdk/f/a;

    move-result-object v1

    iget-object v15, v1, Lcom/sdk/f/a;->c:Ljava/lang/String;

    const v13, 0x49bb3

    const/4 v14, 0x0

    const-string v12, "服务端数据格式出错"

    invoke-virtual/range {v10 .. v15}, Lcom/sdk/g/b;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/g/b;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "返回数据解析异常："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sdk/g/b;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    goto :goto_171

    :cond_108
    array-length v2, v1

    if-eq v2, v5, :cond_10c

    goto :goto_171

    :cond_10c
    sget-object v2, Lcom/sdk/a/c$a;->d:Lcom/sdk/a/c$a;

    iput-object v2, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/String;

    check-cast v0, Lcom/sdk/g/a;

    iget-object v0, v0, Lcom/sdk/g/a;->a:Lcom/sdk/g/b;

    const v3, 0x49bb2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    if-eqz v4, :cond_171

    invoke-interface {v4, v2, v3, v1}, Lcom/sdk/e/a;->a(IILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdk/g/b;->e:Lcom/sdk/e/a;

    goto :goto_171

    :cond_13f
    array-length v2, v1

    if-eq v2, v5, :cond_143

    goto :goto_171

    :cond_143
    sget-object v2, Lcom/sdk/a/c$a;->c:Lcom/sdk/a/c$a;

    iput-object v2, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    goto :goto_162

    :cond_15c
    sget-object v1, Lcom/sdk/a/c$a;->b:Lcom/sdk/a/c$a;

    iput-object v1, v0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    iget-object v0, v0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    :goto_162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_171

    :cond_166
    iget-object v0, v1, Lcom/sdk/d/c$c;->a:Lcom/sdk/d/c;

    iget-object v1, v1, Lcom/sdk/d/c$c;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    iget-object v0, v0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    :cond_171
    :goto_171
    return-void
.end method
