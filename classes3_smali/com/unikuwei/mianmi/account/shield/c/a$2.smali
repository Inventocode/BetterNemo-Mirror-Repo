.class Lcom/unikuwei/mianmi/account/shield/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unikuwei/mianmi/account/shield/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/unikuwei/mianmi/account/shield/c/a;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/c/a;ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    iput p2, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->a:I

    iput-object p3, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    monitor-enter v0

    if-nez p1, :cond_9e

    :try_start_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "msg"

    const-string v4, "未知错误"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5f

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->c(Lcom/unikuwei/mianmi/account/shield/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unikuwei/mianmi/account/shield/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->a:I

    if-ne v1, v2, :cond_4d

    invoke-static {}, Lcom/unikuwei/mianmi/account/shield/e/g;->k()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_71
    .catchall {:try_start_5 .. :try_end_41} :catchall_bc

    if-nez v1, :cond_4d

    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/unikuwei/mianmi/account/shield/e/g;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49
    .catchall {:try_start_43 .. :try_end_48} :catchall_bc

    goto :goto_4d

    :catch_49
    move-exception v1

    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    :cond_5f
    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v2}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v2

    invoke-virtual {v2, v1, v3, p1}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_70} :catch_71
    .catchall {:try_start_4a .. :try_end_70} :catchall_bc

    goto :goto_af

    :catch_71
    move-exception p1

    :try_start_72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    const/16 v2, 0x2712

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "异常"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    :cond_9e
    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(ILjava/lang/String;)V

    :cond_af
    :goto_af
    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;Lcom/unikuwei/mianmi/account/shield/c/b;)Lcom/unikuwei/mianmi/account/shield/c/b;

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$2;->c:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {p1}, Lcom/unikuwei/mianmi/account/shield/c/a;->b(Lcom/unikuwei/mianmi/account/shield/c/a;)V

    monitor-exit v0

    return-void

    :catchall_bc
    move-exception p1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_72 .. :try_end_be} :catchall_bc

    throw p1
.end method
