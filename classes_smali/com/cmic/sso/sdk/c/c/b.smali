.class public Lcom/cmic/sso/sdk/c/c/b;
.super Lcom/cmic/sso/sdk/c/c/c;


# instance fields
.field private final b:Lcom/cmic/sso/sdk/c/b/e;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;)V
    .registers 8

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    if-nez v0, :cond_62

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/q;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/q;->b(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ipv4_list"

    invoke-virtual {p1, v3, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ipv6_list"

    invoke-virtual {p1, v3, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/c/b/e;->c()Lcom/cmic/sso/sdk/c/b/a;

    move-result-object v3

    const-string v4, "isCloseIpv4"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3, v1}, Lcom/cmic/sso/sdk/c/b/a;->s(Ljava/lang/String;)V

    :cond_29
    const-string v1, "isCloseIpv6"

    invoke-virtual {p1, v1, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v3, v2}, Lcom/cmic/sso/sdk/c/b/a;->t(Ljava/lang/String;)V

    :cond_34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetPrePhonescripParam"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appkey"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/cmic/sso/sdk/c/b/g;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/cmic/sso/sdk/c/b/a;->p(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1, v3}, Lcom/cmic/sso/sdk/c/b/e;->a(Lcom/cmic/sso/sdk/c/b/a;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/c/b/e;->a(Z)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/c/c/b;->b:Lcom/cmic/sso/sdk/c/b/e;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/b/e;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/c/c;->a:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/c/c/b;->c:Z

    :cond_62
    return-void
.end method
