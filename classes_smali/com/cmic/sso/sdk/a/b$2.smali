.class Lcom/cmic/sso/sdk/a/b$2;
.super Lcom/cmic/sso/sdk/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/cmic/sso/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V
    .registers 3

    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b$2;->b:Lcom/cmic/sso/sdk/a/b;

    iput-object p2, p0, Lcom/cmic/sso/sdk/a/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Lcom/cmic/sso/sdk/e/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    const-string v0, "UmcConfigHandle"

    const-string/jumbo v1, "开始拉取配置.."

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b$2;->b:Lcom/cmic/sso/sdk/a/b;

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
