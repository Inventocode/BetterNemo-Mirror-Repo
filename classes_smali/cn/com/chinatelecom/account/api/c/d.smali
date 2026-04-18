.class final Lcn/com/chinatelecom/account/api/c/d;
.super Lcn/com/chinatelecom/account/api/c/n;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcn/com/chinatelecom/account/api/CtSetting;

.field private synthetic c:Landroid/net/Network;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:I

.field private synthetic g:Lcn/com/chinatelecom/account/api/ResultListener;

.field private synthetic h:Lcn/com/chinatelecom/account/api/c/a;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/c/a;JLjava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;ILcn/com/chinatelecom/account/api/ResultListener;)V
    .registers 11

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    iput-object p4, p0, Lcn/com/chinatelecom/account/api/c/d;->a:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/chinatelecom/account/api/c/d;->b:Lcn/com/chinatelecom/account/api/CtSetting;

    iput-object p6, p0, Lcn/com/chinatelecom/account/api/c/d;->c:Landroid/net/Network;

    iput-object p7, p0, Lcn/com/chinatelecom/account/api/c/d;->d:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/chinatelecom/account/api/c/d;->e:Ljava/lang/String;

    iput p9, p0, Lcn/com/chinatelecom/account/api/c/d;->f:I

    iput-object p10, p0, Lcn/com/chinatelecom/account/api/c/d;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-direct {p0, p2, p3}, Lcn/com/chinatelecom/account/api/c/n;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->b(Lcn/com/chinatelecom/account/api/c/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/c/a;->c(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/c/a;->d(Lcn/com/chinatelecom/account/api/c/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/com/chinatelecom/account/api/c/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/chinatelecom/account/api/c/d;->b:Lcn/com/chinatelecom/account/api/CtSetting;

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/c/d;->c:Landroid/net/Network;

    iget-object v7, p0, Lcn/com/chinatelecom/account/api/c/d;->d:Ljava/lang/String;

    iget-object v8, p0, Lcn/com/chinatelecom/account/api/c/d;->e:Ljava/lang/String;

    iget v9, p0, Lcn/com/chinatelecom/account/api/c/d;->f:I

    invoke-static/range {v0 .. v9}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/CtSetting;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    monitor-enter p0

    :try_start_23
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/n;->c()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/com/chinatelecom/account/api/c/n;->a(Z)V

    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/n;->d()V

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/c/d;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-static {v1, v0, v2}, Lcn/com/chinatelecom/account/api/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lorg/json/JSONObject;Lcn/com/chinatelecom/account/api/ResultListener;)V

    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_42

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->c:Landroid/net/Network;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;)V

    :cond_41
    return-void

    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public final b()V
    .registers 12

    invoke-super {p0}, Lcn/com/chinatelecom/account/api/c/n;->b()V

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;Z)Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3b

    monitor-enter p0

    :try_start_e
    invoke-virtual {p0}, Lcn/com/chinatelecom/account/api/c/n;->c()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, v2}, Lcn/com/chinatelecom/account/api/c/n;->a(Z)V

    iget-object v3, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    const v4, 0x13880

    sget-object v0, Lcn/com/chinatelecom/account/api/e/k;->a:[B

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/chinatelecom/account/api/c/d;->d:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const-string v9, ""

    iget-object v10, p0, Lcn/com/chinatelecom/account/api/c/d;->g:Lcn/com/chinatelecom/account/api/ResultListener;

    invoke-static/range {v3 .. v10}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcn/com/chinatelecom/account/api/ResultListener;)V

    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_38

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->c:Landroid/net/Network;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/c/d;->h:Lcn/com/chinatelecom/account/api/c/a;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/c/a;->a(Lcn/com/chinatelecom/account/api/c/a;)V

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method
