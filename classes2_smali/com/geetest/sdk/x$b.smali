.class Lcom/geetest/sdk/x$b;
.super Lcom/geetest/sdk/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/geetest/sdk/x;


# direct methods
.method private constructor <init>(Lcom/geetest/sdk/x;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    invoke-direct {p0}, Lcom/geetest/sdk/ab;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/geetest/sdk/x$b;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/x;Lcom/geetest/sdk/x$a;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/geetest/sdk/x$b;-><init>(Lcom/geetest/sdk/x;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/x$b;->a:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v1, "type"

    const-string v2, "Sensebot"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "4.4.1"

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_3c

    const-string v1, "challenge"

    .line 8
    :try_start_1a
    iget-object v2, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v2, v2, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_3c

    const-string v1, "duration"

    .line 9
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v4, v4, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v4}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_40
    iget-object v1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v1, v1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v1}, Lcom/geetest/sdk/an;->b()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/GT3Listener;->onDialogReady(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->l()V

    .line 15
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_76

    .line 16
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->a()Lcom/geetest/sdk/b$b;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 18
    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->c()V

    .line 21
    :cond_76
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/c;->g(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v1, v0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/geetest/sdk/x$b;->a:Z

    .line 24
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview 回调错误-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, p1, v1, p2, v3}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_47

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 27
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p1, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->g(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p2, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    :cond_47
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const-string v1, "202"

    const-string v2, "webview parse json error-->"

    if-eqz p1, :cond_7b

    .line 29
    :try_start_7
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object p1, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "geetest_challenge"

    .line 31
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/geetest/sdk/model/beans/b;->d(Ljava/lang/String;)V

    const-string v4, "geetest_validate"

    .line 32
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/geetest/sdk/model/beans/b;->f(Ljava/lang/String;)V

    const-string v4, "geetest_seccode"

    .line 33
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/geetest/sdk/model/beans/b;->e(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v3, p1, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object p1, p1, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v3, p1}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_39

    goto :goto_a0

    :catch_39
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    iget-object v3, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview 解析json错误，错误码，202--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-->"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v3, v1, v4, p1, v0}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a0

    .line 44
    :cond_7b
    iget-object p1, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webview 验证错误，错误码，202--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v3, p2, v0}, Lcom/geetest/sdk/x;->a(Lcom/geetest/sdk/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a0
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/x$b;->b:Lcom/geetest/sdk/x;

    iget-object v0, v0, Lcom/geetest/sdk/u;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/geetest/sdk/x$b$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/x$b$a;-><init>(Lcom/geetest/sdk/x$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
