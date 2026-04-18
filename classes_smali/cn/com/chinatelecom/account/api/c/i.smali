.class final Lcn/com/chinatelecom/account/api/c/i;
.super Lcn/com/chinatelecom/account/api/c/n;


# instance fields
.field final synthetic a:Lcn/com/chinatelecom/account/api/c/e;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcn/com/chinatelecom/account/api/c/f;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/f;Ljava/lang/String;Lcn/com/chinatelecom/account/api/c/e;)V
    .registers 4

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/i;->c:Lcn/com/chinatelecom/account/api/c/f;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/chinatelecom/account/api/c/i;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/i;->c:Lcn/com/chinatelecom/account/api/c/f;

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/i;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/com/chinatelecom/account/api/c/f;->a(Lcn/com/chinatelecom/account/api/c/f;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/i;->a:Lcn/com/chinatelecom/account/api/c/e;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-interface {v2, v3, v4, v5}, Lcn/com/chinatelecom/account/api/c/e;->a(Landroid/net/Network;J)V

    return-void

    :cond_1a
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    invoke-static {}, Lcn/com/chinatelecom/account/api/c/f;->b()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/com/chinatelecom/account/api/c/j;

    invoke-direct {v3, p0, v0, v1}, Lcn/com/chinatelecom/account/api/c/j;-><init>(Lcn/com/chinatelecom/account/api/c/i;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2a
    invoke-static {}, Lcn/com/chinatelecom/account/api/c/f;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/com/chinatelecom/account/api/c/k;

    invoke-direct {v1, p0}, Lcn/com/chinatelecom/account/api/c/k;-><init>(Lcn/com/chinatelecom/account/api/c/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
