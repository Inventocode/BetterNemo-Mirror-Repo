.class Lcom/cmic/sso/sdk/c/a/d$1$1;
.super Lcom/cmic/sso/sdk/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/c/a/d$1;->a(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Network;

.field final synthetic b:Lcom/cmic/sso/sdk/c/a/d$1;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/c/a/d$1;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Landroid/net/Network;)V
    .registers 5

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iput-object p4, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->a:Landroid/net/Network;

    invoke-direct {p0, p2, p3}, Lcom/cmic/sso/sdk/e/o$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    const-string v0, "WifiChangeInterceptor"

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iget-object v0, v0, Lcom/cmic/sso/sdk/c/a/d$1;->b:Lcom/cmic/sso/sdk/c/c/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->a:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/c/c;->a(Landroid/net/Network;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$1$1;->b:Lcom/cmic/sso/sdk/c/a/d$1;

    iget-object v1, v0, Lcom/cmic/sso/sdk/c/a/d$1;->d:Lcom/cmic/sso/sdk/c/a/d;

    iget-object v2, v0, Lcom/cmic/sso/sdk/c/a/d$1;->b:Lcom/cmic/sso/sdk/c/c/c;

    iget-object v3, v0, Lcom/cmic/sso/sdk/c/a/d$1;->c:Lcom/cmic/sso/sdk/c/d/c;

    iget-object v0, v0, Lcom/cmic/sso/sdk/c/a/d$1;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/c/a/d;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
