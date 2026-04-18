.class public Lcom/sdk/n/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/sdk/f/a;


# direct methods
.method public static a()Lcom/sdk/f/a;
    .registers 1

    sget-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sdk/n/c;->b()V

    :cond_7
    sget-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v0, v0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "sequenceNumber"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ret_url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sdk/n/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {p0}, Lcom/sdk/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "seq"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_40
    sget-object p0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iput-object v0, p0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    :cond_44
    return-void
.end method

.method public static b()V
    .registers 1

    new-instance v0, Lcom/sdk/f/a;

    invoke-direct {v0}, Lcom/sdk/f/a;-><init>()V

    sput-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object v0, v0, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iget-object v0, v0, Lcom/sdk/f/a$a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/sdk/n/c;->a:Lcom/sdk/f/a;

    iget-object p0, p0, Lcom/sdk/f/a;->b:Lcom/sdk/f/a$a;

    iput-object v0, p0, Lcom/sdk/f/a$a;->c:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method
