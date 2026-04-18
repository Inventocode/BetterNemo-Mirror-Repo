.class Lcom/unikuwei/mianmi/account/shield/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unikuwei/mianmi/account/shield/c/a$a;


# direct methods
.method public constructor <init>(Lcom/unikuwei/mianmi/account/shield/c/a$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "resultMsg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "resultData"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "traceId"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "operatorType"

    const-string p2, "CU"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unikuwei/mianmi/account/shield/c/a$a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resultMsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_5e

    const/4 v1, 0x0

    const-string v2, "operatorType"

    const-string v3, ""

    const-string v4, "resultData"

    if-nez p1, :cond_4a

    :try_start_22
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "msgId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unikuwei/mianmi/account/shield/e/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4d

    :cond_4a
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4d
    const-string p1, "CU"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unikuwei/mianmi/account/shield/c/a$a;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/b;->a:Lcom/unikuwei/mianmi/account/shield/c/a$a;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_62
    return-void
.end method
