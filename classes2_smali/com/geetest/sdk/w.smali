.class public Lcom/geetest/sdk/w;
.super Lcom/geetest/sdk/u;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "w"


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

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/geetest/sdk/af<",
            "Ljava/lang/Boolean;",
            "Lcom/geetest/sdk/model/beans/a;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/geetest/sdk/utils/v;->a(I)Z

    move-result p1

    const-string v0, "get接口返回错误，错误码为：207-->"

    const-string v1, "0"

    if-nez p1, :cond_95

    const-string p1, "OK"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "error_code"

    .line 9
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 11
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/geetest/sdk/af;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p3, p1}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 17
    :cond_63
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->g()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8c

    .line 19
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->a()Lcom/geetest/sdk/b$b;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 21
    invoke-static {}, Lcom/geetest/sdk/model/beans/f;->a()Z

    move-result p2

    if-eqz p2, :cond_89

    .line 22
    invoke-interface {p1}, Lcom/geetest/sdk/b$b;->b()V

    goto :goto_8c

    .line 24
    :cond_89
    invoke-interface {p1}, Lcom/geetest/sdk/b$b;->e()V

    .line 29
    :cond_8c
    :goto_8c
    new-instance p1, Lcom/geetest/sdk/af;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 32
    :cond_95
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/geetest/sdk/model/beans/c;->c(Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "207"

    .line 36
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 38
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/geetest/sdk/af;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p3, p1}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic a(Lcom/geetest/sdk/w;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/w;->b(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;

    move-result-object p0

    return-object p0
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/geetest/sdk/af<",
            "Ljava/lang/Boolean;",
            "Lcom/geetest/sdk/model/beans/a;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/geetest/sdk/utils/v;->a(I)Z

    move-result p1

    const-string v0, "0"

    if-nez p1, :cond_77

    const-string p1, "OK"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gettype接口返回错误，错误码为：206-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 8
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "error_code"

    .line 9
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 11
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lcom/geetest/sdk/af;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p3, p1}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 17
    :cond_63
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 19
    new-instance p1, Lcom/geetest/sdk/af;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 22
    :cond_77
    iget-object p1, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p1}, Lcom/geetest/sdk/an;->i()Lcom/geetest/sdk/model/beans/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/model/beans/c;->i(Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gettype接口返回值为null，错误码为：206-->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {p1}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    .line 25
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string p2, "206"

    .line 26
    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 28
    iget-object p2, p0, Lcom/geetest/sdk/u;->b:Lcom/geetest/sdk/an;

    invoke-virtual {p2}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 32
    new-instance p2, Lcom/geetest/sdk/af;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p3, p1}, Lcom/geetest/sdk/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method static synthetic b(Lcom/geetest/sdk/w;ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geetest/sdk/w;->a(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/geetest/sdk/af;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .line 2
    sget-object v0, Lcom/geetest/sdk/w;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/geetest/sdk/an;)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/geetest/sdk/utils/u;->a()Lcom/geetest/sdk/utils/u;

    move-result-object v0

    new-instance v1, Lcom/geetest/sdk/w$a;

    invoke-direct {v1, p0, p1}, Lcom/geetest/sdk/w$a;-><init>(Lcom/geetest/sdk/w;Lcom/geetest/sdk/an;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/utils/u;->a(Ljava/lang/Runnable;)V

    return-void
.end method
