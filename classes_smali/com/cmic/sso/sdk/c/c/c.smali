.class public Lcom/cmic/sso/sdk/c/c/c;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Z

.field private final f:Ljava/lang/String;

.field private g:Landroid/net/Network;

.field private h:J

.field private final i:Ljava/lang/String;

.field private j:I

.field private final k:Lcom/cmic/sso/sdk/c/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmic/sso/sdk/c/b/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/c/c/c;->e:Z

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/c/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmic/sso/sdk/c/c/c;->k:Lcom/cmic/sso/sdk/c/b/g;

    if-nez p2, :cond_11

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_11
    iput-object p2, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    const-string p1, ""

    if-nez p3, :cond_19

    move-object p2, p1

    goto :goto_21

    :cond_19
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/c/b/g;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_21
    iput-object p2, p0, Lcom/cmic/sso/sdk/c/c/c;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmic/sso/sdk/c/c/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmic/sso/sdk/c/c/c;->f:Ljava/lang/String;

    if-nez p3, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/c/b/g;->a()Ljava/lang/String;

    move-result-object p1

    :goto_2e
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/c/c;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/c/c;->l()V

    return-void
.end method

.method private l()V
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    const-string v1, "sdkVersion"

    const-string v2, "quick_login_android_5.9.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    const-string v1, "CMCC-EncryptType"

    const-string v2, "STD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/cmic/sso/sdk/c/c/c;->f:Ljava/lang/String;

    const-string v2, "traceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/cmic/sso/sdk/c/c/c;->i:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/cmic/sso/sdk/c/c/c;->h:J

    return-void
.end method

.method public a(Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/c/c;->g:Landroid/net/Network;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/c/c/c;->e:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/c/c/c;->e:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->b:Ljava/lang/String;

    const-string v1, "logReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->b:Ljava/lang/String;

    const-string v1, "uniConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0
.end method

.method public h()Landroid/net/Network;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->g:Landroid/net/Network;

    return-object v0
.end method

.method i()J
    .registers 3

    iget-wide v0, p0, Lcom/cmic/sso/sdk/c/c/c;->h:J

    return-wide v0
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Lcom/cmic/sso/sdk/c/c/c;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmic/sso/sdk/c/c/c;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public k()Lcom/cmic/sso/sdk/c/b/g;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/c/c;->k:Lcom/cmic/sso/sdk/c/b/g;

    return-object v0
.end method
