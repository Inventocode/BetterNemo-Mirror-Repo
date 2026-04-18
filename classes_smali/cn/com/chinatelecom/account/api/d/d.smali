.class final Lcn/com/chinatelecom/account/api/d/d;
.super Lcn/com/chinatelecom/account/api/c/n;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/d/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcn/com/chinatelecom/account/api/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    :try_start_0
    invoke-static {}, Lcn/com/chinatelecom/account/api/e/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/account/api/d/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/com/chinatelecom/account/api/e/e;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    const-string v2, "dns"

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->c(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v1

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/d/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/com/chinatelecom/account/api/e/e;->b(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    sget-object v1, Lcn/com/chinatelecom/account/api/e/b;->b:[B

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/com/chinatelecom/account/api/d/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcn/com/chinatelecom/account/api/d/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :cond_37
    const-class v1, Lcn/com/chinatelecom/account/api/d/c;

    monitor-enter v1
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_77

    :try_start_3a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcn/com/chinatelecom/account/api/d/c;->b()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lcn/com/chinatelecom/account/api/d/c;->a(J)J

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    const-string v3, "success"

    :goto_59
    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->e(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    goto :goto_6f

    :cond_5d
    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->a(Ljava/lang/String;)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    const v3, 0x1388b

    invoke-virtual {v2, v3}, Lcn/com/chinatelecom/account/api/e/e;->a(I)Lcn/com/chinatelecom/account/api/e/e;

    move-result-object v2

    sget-object v3, Lcn/com/chinatelecom/account/api/e/k;->j:[B

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    :goto_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_3a .. :try_end_70} :catchall_74

    :try_start_70
    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/f;->b(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_77

    return-void

    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
