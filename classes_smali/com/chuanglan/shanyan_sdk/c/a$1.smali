.class Lcom/chuanglan/shanyan_sdk/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chuanglan/shanyan_sdk/tool/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/chuanglan/shanyan_sdk/c/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$1;->b:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$1;->b:Lcom/chuanglan/shanyan_sdk/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SwitchStart__"

    aput-object v2, v0, v1

    const-string v1, "NetworkShanYanLogger"

    invoke-static {v1, v0}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Switchfail code"

    aput-object v3, v1, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "_result"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v2, "NetworkShanYanLogger"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/chuanglan/shanyan_sdk/b;->ab:J

    sub-long v13, v1, v3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v3

    iget-object v5, v0, Lcom/chuanglan/shanyan_sdk/c/a$1;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$1;->b:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x1

    const-string v7, "0"

    const-string v8, "0"

    const-string v15, "0"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v4, p1

    move-object/from16 v9, p2

    move-wide v11, v13

    move-object/from16 v16, p2

    invoke-virtual/range {v3 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Switchsuccess code"

    aput-object v3, v1, v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "_result"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v2, "NetworkShanYanLogger"

    invoke-static {v2, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/chuanglan/shanyan_sdk/b;->ab:J

    sub-long v13, v1, v3

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/tool/e;->a()Lcom/chuanglan/shanyan_sdk/tool/e;

    move-result-object v3

    iget-object v5, v0, Lcom/chuanglan/shanyan_sdk/c/a$1;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/chuanglan/shanyan_sdk/c/a$1;->b:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/c/a;->b(Lcom/chuanglan/shanyan_sdk/c/a;)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x1

    const-string v7, "0"

    const-string v8, "1"

    const-string v15, "1"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v4, p1

    move-object/from16 v9, p2

    move-wide v11, v13

    move-object/from16 v16, p2

    invoke-virtual/range {v3 .. v18}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
