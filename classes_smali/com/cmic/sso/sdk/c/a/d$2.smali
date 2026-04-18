.class Lcom/cmic/sso/sdk/c/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/c/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/c/a/d;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/c/d/c;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/c/a/d;Lcom/cmic/sso/sdk/c/d/c;)V
    .registers 3

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/a/d$2;->a:Lcom/cmic/sso/sdk/c/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/c/d/a;)V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$2;->a:Lcom/cmic/sso/sdk/c/d/c;

    invoke-interface {v0, p1}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/c/d/b;)V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d$2;->a:Lcom/cmic/sso/sdk/c/d/c;

    invoke-interface {v0, p1}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/b;)V

    return-void
.end method
