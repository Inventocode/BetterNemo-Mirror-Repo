.class Lcom/chuanglan/shanyan_sdk/tool/e$3;
.super Lcom/chuanglan/shanyan_sdk/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/e;->a(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/chuanglan/shanyan_sdk/tool/e;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/e;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    iput-boolean p2, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/chuanglan/shanyan_sdk/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "retCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;

    move-result-object p1

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/tool/e;->b(Lcom/chuanglan/shanyan_sdk/tool/e;)Lcom/chuanglan/shanyan_sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/a/e;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/chuanglan/shanyan_sdk/a/e;->a(J)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->g(Lcom/chuanglan/shanyan_sdk/tool/e;)I

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->h(Lcom/chuanglan/shanyan_sdk/tool/e;)I

    move-result p1

    if-lez p1, :cond_5b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->d(Lcom/chuanglan/shanyan_sdk/tool/e;)V

    goto :goto_5b

    :cond_3d
    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    :goto_43
    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->i(Lcom/chuanglan/shanyan_sdk/tool/e;)V

    goto :goto_5b

    :cond_47
    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_43

    :catch_4e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->i(Lcom/chuanglan/shanyan_sdk/tool/e;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->j(Lcom/chuanglan/shanyan_sdk/tool/e;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;Z)Z

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->c:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/chuanglan/shanyan_sdk/tool/e;->a(Lcom/chuanglan/shanyan_sdk/tool/e;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_28

    :cond_1a
    iget-boolean p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->a:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/tool/e$3;->d:Lcom/chuanglan/shanyan_sdk/tool/e;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/tool/e;->i(Lcom/chuanglan/shanyan_sdk/tool/e;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method
