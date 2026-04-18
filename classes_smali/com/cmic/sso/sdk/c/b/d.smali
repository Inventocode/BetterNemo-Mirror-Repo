.class public Lcom/cmic/sso/sdk/c/b/d;
.super Lcom/cmic/sso/sdk/c/b/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    const-string v0, "authz"

    iput-object v0, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/b/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmic/sso/sdk/c/b/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "ver"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userCapaid"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "funcType"

    iget-object v2, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->d:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/d;->e:Ljava/lang/String;

    return-void
.end method
