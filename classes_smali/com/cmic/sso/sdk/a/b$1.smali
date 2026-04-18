.class Lcom/cmic/sso/sdk/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/c/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/a/b;->b(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    const-string p2, "103000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-static {p1, p3}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;Lorg/json/JSONObject;)V

    const-string p1, "sdk_config_version"

    const-string p2, "quick_login_android_5.9.0"

    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-static {p1}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a/a;)Lcom/cmic/sso/sdk/a/a;

    iget-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-static {p1}, Lcom/cmic/sso/sdk/a/b;->b(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/b$a;

    move-result-object p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-static {p1}, Lcom/cmic/sso/sdk/a/b;->b(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/b$a;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    invoke-static {p2}, Lcom/cmic/sso/sdk/a/b;->c(Lcom/cmic/sso/sdk/a/b;)Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cmic/sso/sdk/a/b$a;->a(Lcom/cmic/sso/sdk/a/a;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/cmic/sso/sdk/a/b$1;->a:Lcom/cmic/sso/sdk/a/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;Z)Z

    return-void
.end method
