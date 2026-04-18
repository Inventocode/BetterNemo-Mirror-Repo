.class final Lcn/com/chinatelecom/account/api/c/h;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field private synthetic a:Lcn/com/chinatelecom/account/api/c/e;

.field private synthetic b:J

.field private synthetic c:Lcn/com/chinatelecom/account/api/c/f;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/f;Lcn/com/chinatelecom/account/api/c/e;J)V
    .registers 5

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/h;->c:Lcn/com/chinatelecom/account/api/c/f;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/c/h;->a:Lcn/com/chinatelecom/account/api/c/e;

    iput-wide p3, p0, Lcn/com/chinatelecom/account/api/c/h;->b:J

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .registers 7

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/h;->c:Lcn/com/chinatelecom/account/api/c/f;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/f;->a(Lcn/com/chinatelecom/account/api/c/f;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/h;->a:Lcn/com/chinatelecom/account/api/c/e;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/h;->c:Lcn/com/chinatelecom/account/api/c/f;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/f;->b(Lcn/com/chinatelecom/account/api/c/f;)V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/h;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/chinatelecom/account/api/c/h;->b:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcn/com/chinatelecom/account/api/c/e;->a(Landroid/net/Network;J)V

    :cond_1d
    return-void
.end method
