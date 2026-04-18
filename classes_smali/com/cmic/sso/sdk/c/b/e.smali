.class public Lcom/cmic/sso/sdk/c/b/e;
.super Lcom/cmic/sso/sdk/c/b/g;


# instance fields
.field private a:Lcom/cmic/sso/sdk/c/b/a;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/c/b/e;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/e;->a:Lcom/cmic/sso/sdk/c/b/a;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/c/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/cmic/sso/sdk/c/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/e;->a:Lcom/cmic/sso/sdk/c/b/a;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/c/b/e;->e:Z

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/e;->b:[B

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lcom/cmic/sso/sdk/c/b/e;->e:Z

    if-eqz v1, :cond_38

    :try_start_9
    const-string v1, "encrypted"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GetPrePhoneScripParameter"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/e;->a:Lcom/cmic/sso/sdk/c/b/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reqdata"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/e;->b:[B

    iget-object v3, p0, Lcom/cmic/sso/sdk/c/b/e;->a:Lcom/cmic/sso/sdk/c/b/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/e/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "securityreinforce"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/e;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/cmic/sso/sdk/c/b/a;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/e;->a:Lcom/cmic/sso/sdk/c/b/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/e;->c:Ljava/lang/String;

    return-void
.end method
