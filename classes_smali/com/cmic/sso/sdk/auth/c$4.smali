.class Lcom/cmic/sso/sdk/auth/c$4;
.super Lcom/cmic/sso/sdk/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/cmic/sso/sdk/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/c;Ljava/lang/String;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .registers 5

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmic/sso/sdk/auth/c$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/c$4;->c:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Lcom/cmic/sso/sdk/e/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$4;->a:Ljava/lang/String;

    const-string v1, "200023"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_f
    new-instance v0, Lcom/cmic/sso/sdk/d/d;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/d/d;-><init>()V

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/c$4;->c:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/d/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
