.class final Lcn/com/chinatelecom/account/api/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcn/com/chinatelecom/account/api/c/i;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/i;J)V
    .registers 4

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/j;->b:Lcn/com/chinatelecom/account/api/c/i;

    iput-wide p2, p0, Lcn/com/chinatelecom/account/api/c/j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/j;->b:Lcn/com/chinatelecom/account/api/c/i;

    iget-object v0, v0, Lcn/com/chinatelecom/account/api/c/i;->a:Lcn/com/chinatelecom/account/api/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/chinatelecom/account/api/c/j;->a:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcn/com/chinatelecom/account/api/c/e;->a(J)V

    return-void
.end method
