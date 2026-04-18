.class public Lcom/geetest/sdk/q;
.super Lcom/geetest/sdk/u;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "q"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/u;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 3
    sget-object v0, Lcom/geetest/sdk/q;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API1 result-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_11

    const-string p3, " null"

    goto :goto_15

    :cond_11
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_15
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/geetest/sdk/utils/v;->a(I)Z

    move-result p1

    if-nez p1, :cond_f6

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->e(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->d(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->u()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 10
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->h(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    goto/16 :goto_154

    :cond_76
    const-string p1, "进入宕机模式！！！"

    .line 14
    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->g()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8f

    .line 16
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->a()Lcom/geetest/sdk/b$b;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 18
    invoke-interface {p1}, Lcom/geetest/sdk/b$b;->f()V

    .line 21
    :cond_8f
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "false"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->h(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    sget-object p2, Lcom/geetest/sdk/an$a;->SHUTDOWN:Lcom/geetest/sdk/an$a;

    iput-object p2, p1, Lcom/geetest/sdk/an;->k:Lcom/geetest/sdk/an$a;

    .line 24
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/geetest/sdk/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    iget-object p3, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p3}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/geetest/sdk/model/beans/b;->d(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|jordan"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/geetest/sdk/model/beans/b;->e(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/geetest/sdk/model/beans/b;->f(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/an;->b(I)V

    .line 29
    iget-object p1, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    .line 30
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    goto :goto_154

    .line 33
    :cond_f6
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Lcom/geetest/sdk/model/beans/c;->e(Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "api1接口错误，错误码为：205-->"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  {1.检查网络是否异常; 2.检查api1是否有数据返回，如果有数据返回是否符合规则; 3.检查是否和服务正常通信 }"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "205"

    .line 37
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2, p1}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/model/beans/a;)V

    .line 41
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    .line 42
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/an;)V

    :goto_154
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/geetest/sdk/an;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/u;->d:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getApi1Json()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/geetest/sdk/q;->a(Lcom/geetest/sdk/model/beans/b;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;Lorg/json/JSONObject;)V
    .registers 13

    const/4 v0, -0x1

    if-nez p2, :cond_a

    const/4 p1, 0x0

    const-string p2, "api1 result is null !"

    .line 43
    invoke-direct {p0, v0, p2, p1}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_a
    const-string v1, "data"

    .line 46
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "-->absent gt"

    const-string v4, "OK"

    const/4 v5, 0x0

    const-string v6, "-->absent challenge"

    const-string v7, "gt"

    const-string v8, "challenge"

    const-string v9, "success"

    if-eqz v2, :cond_91

    .line 47
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->absent data"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 52
    :cond_3e
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 58
    :cond_63
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 63
    :cond_84
    invoke-virtual {p1, v8}, Lcom/geetest/sdk/model/beans/b;->c(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/b;->g(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/b;->b(I)V

    .line 66
    invoke-direct {p0, v5, v4, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_e3

    .line 69
    :cond_91
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 75
    :cond_b6
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 80
    :cond_d7
    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/b;->c(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v6}, Lcom/geetest/sdk/model/beans/b;->g(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/b;->b(I)V

    .line 83
    invoke-direct {p0, v5, v4, p2}, Lcom/geetest/sdk/q;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    :goto_e3
    return-void
.end method
