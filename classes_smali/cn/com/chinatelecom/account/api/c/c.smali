.class final Lcn/com/chinatelecom/account/api/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/chinatelecom/account/api/c/e;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcn/com/chinatelecom/account/api/CtSetting;

.field private synthetic d:Lcn/com/chinatelecom/account/api/ResultListener;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:I

.field private synthetic h:Lcn/com/chinatelecom/account/api/c/a;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/c;->h:Lcn/com/chinatelecom/account/api/c/a;

    iput p2, p0, Lcn/com/chinatelecom/account/api/c/c;->a:I

    iput-object p3, p0, Lcn/com/chinatelecom/account/api/c/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/chinatelecom/account/api/c/c;->c:Lcn/com/chinatelecom/account/api/CtSetting;

    iput-object p5, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Lcn/com/chinatelecom/account/api/ResultListener;

    iput-object p6, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/chinatelecom/account/api/c/c;->f:Ljava/lang/String;

    iput p8, p0, Lcn/com/chinatelecom/account/api/c/c;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c;->h:Lcn/com/chinatelecom/account/api/c/a;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/k;->h:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Lcn/com/chinatelecom/account/api/ResultListener;

    const v1, 0x13ba0

    const-wide/16 v4, 0x9c4

    const-string v6, "Switching network timeout (4.x)"

    invoke-static/range {v0 .. v7}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method public final a(J)V
    .registers 11

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/c;->h:Lcn/com/chinatelecom/account/api/c/a;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/k;->i:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Lcn/com/chinatelecom/account/api/ResultListener;

    const v1, 0x13ba1

    const-string v6, "Switching network failed (4.x)"

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method public final a(Landroid/net/Network;J)V
    .registers 16

    iget p1, p0, Lcn/com/chinatelecom/account/api/c/c;->a:I

    int-to-long v0, p1

    sub-long v7, v0, p2

    const-wide/16 v0, 0x64

    cmp-long p1, v7, v0

    if-lez p1, :cond_1e

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/c;->h:Lcn/com/chinatelecom/account/api/c/a;

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/chinatelecom/account/api/c/c;->c:Lcn/com/chinatelecom/account/api/CtSetting;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Lcn/com/chinatelecom/account/api/ResultListener;

    iget-object v9, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    iget-object v10, p0, Lcn/com/chinatelecom/account/api/c/c;->f:Ljava/lang/String;

    iget v11, p0, Lcn/com/chinatelecom/account/api/c/c;->g:I

    invoke-static/range {v2 .. v11}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Lcn/com/chinatelecom/account/api/ResultListener;JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_29

    :cond_1e
    iget-object p1, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    invoke-static {}, Lcn/com/chinatelecom/account/api/e/k;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/c;->d:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-static {p1, v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    :goto_29
    iget-object p1, p0, Lcn/com/chinatelecom/account/api/c/c;->e:Ljava/lang/String;

    invoke-static {p1}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/com/chinatelecom/account/api/e/e;->a(J)Lcn/com/chinatelecom/account/api/e/e;

    return-void
.end method
