.class Lcom/cmic/sso/sdk/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/c/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/d/d;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/d/d;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/d/d;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/d/d$1;->a:Lcom/cmic/sso/sdk/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    iget-object p2, p0, Lcom/cmic/sso/sdk/d/d$1;->a:Lcom/cmic/sso/sdk/d/d;

    invoke-static {p2}, Lcom/cmic/sso/sdk/d/d;->a(Lcom/cmic/sso/sdk/d/d;)Lcom/cmic/sso/sdk/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-static {}, Lcom/cmic/sso/sdk/e/k;->a()Lcom/cmic/sso/sdk/e/k$a;

    move-result-object p3

    const-string v0, "103000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "logCloseTime"

    const/4 v1, 0x0

    const-string v2, "logFailTimes"

    if-nez p1, :cond_3f

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a;->l()I

    move-result p1

    if-eqz p1, :cond_47

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a;->k()I

    move-result p1

    if-eqz p1, :cond_47

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a;->k()I

    move-result p2

    if-lt p1, p2, :cond_3b

    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_44

    :cond_3b
    invoke-virtual {p3, v2, p1}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;I)V

    goto :goto_47

    :cond_3f
    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;I)V

    const-wide/16 p1, 0x0

    :goto_44
    invoke-virtual {p3, v0, p1, p2}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;J)V

    :cond_47
    :goto_47
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/e/k$a;->b()V

    return-void
.end method
