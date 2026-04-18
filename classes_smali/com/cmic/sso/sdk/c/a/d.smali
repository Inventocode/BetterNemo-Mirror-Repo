.class public Lcom/cmic/sso/sdk/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/c/a/b;


# instance fields
.field private a:Lcom/cmic/sso/sdk/c/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/c/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a/d;->a:Lcom/cmic/sso/sdk/c/a/b;

    return-void
.end method

.method public a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
    .registers 10

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->b()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lcom/cmic/sso/sdk/c/a/d;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/s;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/s;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1e

    new-instance v1, Lcom/cmic/sso/sdk/c/a/d$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/cmic/sso/sdk/c/a/d$1;-><init>(Lcom/cmic/sso/sdk/c/a/d;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;)V

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/e/s;->a(Lcom/cmic/sso/sdk/e/s$a;)V

    goto :goto_60

    :cond_1e
    const-string v1, "operatortype"

    const-string v2, "0"

    invoke-virtual {p3, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x1906c

    const-string v5, "WifiChangeInterceptor"

    if-nez v3, :cond_48

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_48

    :cond_3a
    const-string/jumbo p1, "异网低版本不支持wifi切换"

    :goto_3d
    invoke-static {v5, p1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cmic/sso/sdk/c/d/a;->a(I)Lcom/cmic/sso/sdk/c/d/a;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/cmic/sso/sdk/c/d/c;->a(Lcom/cmic/sso/sdk/c/d/a;)V

    goto :goto_60

    :cond_48
    :goto_48
    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/e/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "切换网络成功"

    invoke-static {v5, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cmic/sso/sdk/c/a/d;->b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    goto :goto_60

    :cond_5c
    const-string/jumbo p1, "切换网络失败or无数据网络"

    goto :goto_3d

    :goto_60
    return-void
.end method

.method public b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V
    .registers 6

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a/d;->a:Lcom/cmic/sso/sdk/c/a/b;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/cmic/sso/sdk/c/a/d$2;

    invoke-direct {v1, p0, p2}, Lcom/cmic/sso/sdk/c/a/d$2;-><init>(Lcom/cmic/sso/sdk/c/a/d;Lcom/cmic/sso/sdk/c/d/c;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/cmic/sso/sdk/c/a/b;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    :cond_c
    return-void
.end method
