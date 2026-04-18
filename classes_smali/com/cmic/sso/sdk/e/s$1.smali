.class Lcom/cmic/sso/sdk/e/s$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/e/s;->a(Lcom/cmic/sso/sdk/e/s$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/e/s$a;

.field final synthetic b:Lcom/cmic/sso/sdk/e/s;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/e/s;Lcom/cmic/sso/sdk/e/s$a;)V
    .registers 3

    iput-object p1, p0, Lcom/cmic/sso/sdk/e/s$1;->b:Lcom/cmic/sso/sdk/e/s;

    iput-object p2, p0, Lcom/cmic/sso/sdk/e/s$1;->a:Lcom/cmic/sso/sdk/e/s$a;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s$1;->b:Lcom/cmic/sso/sdk/e/s;

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/s;->a(Lcom/cmic/sso/sdk/e/s;Landroid/net/Network;)Landroid/net/Network;

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/s$1;->a:Lcom/cmic/sso/sdk/e/s$a;

    invoke-interface {v0, p1}, Lcom/cmic/sso/sdk/e/s$a;->a(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/e/s$1;->b:Lcom/cmic/sso/sdk/e/s;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/s;->a(Lcom/cmic/sso/sdk/e/s;Z)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    iget-object p1, p0, Lcom/cmic/sso/sdk/e/s$1;->b:Lcom/cmic/sso/sdk/e/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/s;->a(Lcom/cmic/sso/sdk/e/s;Z)Z

    return-void
.end method
