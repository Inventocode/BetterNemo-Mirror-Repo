.class public abstract Lcom/geetest/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/v;


# static fields
.field private static final e:Ljava/lang/String; = "u"


# instance fields
.field protected a:Lcom/geetest/sdk/u;

.field protected b:Lcom/geetest/sdk/an;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/geetest/sdk/GT3ConfigBean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/geetest/sdk/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    return-void
.end method

.method public b(Lcom/geetest/sdk/an;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geetest/sdk/u;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/a;->clone()Lcom/geetest/sdk/GT3ErrorBean;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/GT3ErrorBean;)V

    .line 6
    sget-object v0, Lcom/geetest/sdk/utils/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 8
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_8b

    const-string v1, "time"

    .line 9
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/geetest/sdk/am;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_8b

    const-string v1, "captcha_id"

    .line 13
    :try_start_38
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_type"

    const-string v2, "android"

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4a} :catch_8b

    const-string v1, "challenge"

    .line 15
    :try_start_4c
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_57} :catch_8b

    const-string v1, "exception_desc"

    .line 16
    :try_start_59
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_8b

    const-string v1, "error_code"

    .line 17
    :try_start_66
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_71} :catch_8b

    const-string p1, "device_type"

    .line 18
    :try_start_73
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_8b

    const-string p1, "device_os_version"

    .line 19
    :try_start_7a
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_version"

    const-string v1, "4.4.1"

    .line 20
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, ""

    .line 22
    sput-object p1, Lcom/geetest/sdk/utils/n;->b:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public c(Lcom/geetest/sdk/an;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->d(Lcom/geetest/sdk/an;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/an;)V

    .line 4
    :cond_9
    invoke-interface {p0}, Lcom/geetest/sdk/v;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->h()I

    move-result v1

    if-lt v0, v1, :cond_17

    .line 6
    invoke-interface {p0, p1}, Lcom/geetest/sdk/v;->a(Lcom/geetest/sdk/an;)V

    goto :goto_22

    .line 8
    :cond_17
    iget-object v0, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    if-eqz v0, :cond_1f

    .line 9
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    goto :goto_22

    .line 12
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/an;)V

    :goto_22
    return-void
.end method

.method protected d(Lcom/geetest/sdk/an;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iput-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->c()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/geetest/sdk/u;->c:Landroid/content/Context;

    if-nez v1, :cond_f

    return v0

    .line 6
    :cond_f
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->b()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    iput-object p1, p0, Lcom/geetest/sdk/u;->d:Lcom/geetest/sdk/GT3ConfigBean;

    if-nez p1, :cond_18

    return v0

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/geetest/sdk/an;)V
    .registers 8

    const-string v0, "success"

    const-string v1, "1"

    .line 1
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object v2

    .line 3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_d
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_15} :catch_f0

    const-string v5, "0"

    if-eqz v4, :cond_33

    :try_start_19
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 7
    invoke-virtual {v2, v1}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 11
    :cond_33
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 12
    invoke-virtual {v2, v1}, Lcom/geetest/sdk/model/beans/c;->g(Ljava/lang/String;)V

    .line 14
    :cond_40
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_48} :catch_f0

    if-nez v1, :cond_63

    const-string v1, "gt"

    .line 15
    :try_start_4c
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_53} :catch_f0

    const-string v1, "challenge"

    .line 16
    :try_start_55
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_63} :catch_f0

    :cond_63
    const-string v0, "a1"

    .line 20
    :try_start_65
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_74} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "false"

    :try_start_78
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_80} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "t"

    .line 22
    :try_start_84
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_93} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "g"

    .line 24
    :try_start_97
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_a6} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "a"

    .line 26
    :try_start_aa
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_b9} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "r"

    .line 28
    :try_start_bd
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_cc} :catch_f0

    if-nez v0, :cond_d7

    const-string v0, "re"

    .line 30
    :try_start_d0
    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_d7
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object v0
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_d0 .. :try_end_db} :catch_f0

    if-eqz v0, :cond_ea

    const-string v0, "error"

    .line 38
    :try_start_df
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->f()Lcom/geetest/sdk/model/beans/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_ea
    iget-object p1, p0, Lcom/geetest/sdk/u;->c:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/geetest/sdk/y;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_df .. :try_end_ef} :catch_f0

    goto :goto_f4

    :catch_f0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_f4
    iget-object p1, p0, Lcom/geetest/sdk/u;->d:Lcom/geetest/sdk/GT3ConfigBean;

    if-eqz p1, :cond_10b

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_10b

    .line 45
    iget-object p1, p0, Lcom/geetest/sdk/u;->d:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onStatistics(Ljava/lang/String;)V

    :cond_10b
    return-void
.end method
