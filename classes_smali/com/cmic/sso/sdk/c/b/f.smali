.class public Lcom/cmic/sso/sdk/c/b/f;
.super Lcom/cmic/sso/sdk/c/b/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/c/b/f$a;,
        Lcom/cmic/sso/sdk/c/b/f$b;
    }
.end annotation


# instance fields
.field private a:Lcom/cmic/sso/sdk/c/b/f$b;

.field private b:Lcom/cmic/sso/sdk/c/b/f$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/c/b/f$b;->a(Lcom/cmic/sso/sdk/c/b/f$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/cmic/sso/sdk/c/b/f$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/f;->b:Lcom/cmic/sso/sdk/c/b/f$a;

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/c/b/f$b;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string v3, "sign"

    iget-object v4, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/c/b/f$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msgid"

    iget-object v4, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/c/b/f$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "systemtime"

    iget-object v4, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/c/b/f$b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object v4, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/c/b/f$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    iget-object v4, p0, Lcom/cmic/sso/sdk/c/b/f;->a:Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/c/b/f$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log"

    iget-object v3, p0, Lcom/cmic/sso/sdk/c/b/f;->b:Lcom/cmic/sso/sdk/c/b/f$a;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/c/b/f$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-object v0
.end method
