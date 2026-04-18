.class public Lcom/cmic/sso/sdk/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public a()Lcom/cmic/sso/sdk/d/b;
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "logBean"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/sso/sdk/d/b;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Lcom/cmic/sso/sdk/d/b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/d/b;-><init>()V

    return-object v0
.end method

.method public a(Lcom/cmic/sso/sdk/a/a;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "current_config"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/d/b;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "logBean"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;I)I
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p2, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_17
    return p2
.end method

.method public b(Ljava/lang/String;J)J
    .registers 5

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p2, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_17
    return-wide p2
.end method

.method public b()Lcom/cmic/sso/sdk/a/a;
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "current_config"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/sso/sdk/a/a;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, "UmcConfigBean为空"

    const-string/jumbo v1, "请核查"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cmic/sso/sdk/a/a$a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a$a;->a()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p2, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_13
    return-object p2
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p2, p0, Lcom/cmic/sso/sdk/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_17
    return p2
.end method

.method public c(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
