.class public Lcom/geetest/sdk/s;
.super Lcom/geetest/sdk/u;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "s"


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
    .registers 10

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->a()Lcom/geetest/sdk/b$b;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 6
    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->g()V

    .line 9
    :cond_14
    invoke-static {p1}, Lcom/geetest/sdk/utils/v;->a(I)Z

    move-result p1

    const-string v0, "208"

    const-string v1, "ajax接口返回错误，错误码为：208-->"

    const-string v2, "0"

    if-nez p1, :cond_177

    const-string p1, "OK"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 11
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    const-string p1, "error_code"

    .line 12
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/geetest/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_192

    .line 15
    :cond_4b
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->o()Ljava/lang/String;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v4}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/geetest/sdk/model/beans/c;->f(Ljava/lang/String;)V

    const-string v4, "success"

    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "1"

    if-eqz v4, :cond_b9

    .line 19
    sget-object p2, Lcom/geetest/sdk/s;->f:Ljava/lang/String;

    const-string p3, "进入一键通过模式！！！"

    invoke-static {p2, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p2}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    .line 23
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    sget-object p3, Lcom/geetest/sdk/an$a;->ONEPASS:Lcom/geetest/sdk/an$a;

    iput-object p3, p2, Lcom/geetest/sdk/an;->k:Lcom/geetest/sdk/an$a;

    .line 24
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/b;->d(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/b;->f(Ljava/lang/String;)V

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "|jordan"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/b;->e(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/an;->b(I)V

    .line 29
    iget-object p1, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    goto/16 :goto_192

    :cond_b9
    const-string v4, "forbidden"

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 32
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ajax接口被forbidden，错误码为：200-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "200"

    invoke-direct {p0, p3, p1, p2}, Lcom/geetest/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_192

    .line 35
    :cond_e6
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/geetest/sdk/model/beans/h;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 37
    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/geetest/sdk/model/beans/h;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_12e

    .line 39
    iget-object p3, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p3}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ajax接口返回错误，dialogHeight为0，错误码为：208-->"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->k()Lcom/geetest/sdk/model/beans/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/h;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_192

    .line 43
    :cond_12e
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1, p3}, Lcom/geetest/sdk/model/beans/b;->c(I)V

    .line 45
    iget-object p1, p0, Lcom/geetest/sdk/u;->a:Lcom/geetest/sdk/u;

    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    goto :goto_192

    .line 48
    :cond_142
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data type error-->"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_192

    .line 53
    :cond_177
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/geetest/sdk/model/beans/c;->a(Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/geetest/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_192
    return-void
.end method

.method static synthetic a(Lcom/geetest/sdk/s;ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/s;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 55
    sget-object v0, Lcom/geetest/sdk/s;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p2}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 57
    invoke-virtual {p2, p3}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p1}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 60
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/model/beans/a;)V

    .line 62
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->e(Lcom/geetest/sdk/an;)V

    .line 63
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p0, p1}, Lcom/geetest/sdk/u;->b(Lcom/geetest/sdk/an;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public a(Lcom/geetest/sdk/an;)V
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/geetest/sdk/an;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p1

    new-instance v1, Lcom/geetest/sdk/s$a;

    invoke-direct {v1, p0}, Lcom/geetest/sdk/s$a;-><init>(Lcom/geetest/sdk/s;)V

    invoke-static {v0, p1, v1}, Lcom/geetest/sdk/d;->a(Landroid/content/Context;Lcom/geetest/sdk/model/beans/b;Lcom/geetest/sdk/ae;)Lcom/geetest/sdk/ad;

    return-void
.end method
