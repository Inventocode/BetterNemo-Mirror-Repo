.class public Lcom/cmic/sso/sdk/d/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/cmic/sso/sdk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/d/d;)Lcom/cmic/sso/sdk/a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/d/d;->a:Lcom/cmic/sso/sdk/a;

    return-object p0
.end method

.method private static a(Lcom/cmic/sso/sdk/d/b;Lcom/cmic/sso/sdk/a;)V
    .registers 9

    if-eqz p0, :cond_f9

    if-nez p1, :cond_6

    goto/16 :goto_f9

    :cond_6
    const-string v0, "appid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "1"

    goto :goto_1c

    :cond_1a
    const-string v0, "0"

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->g(Ljava/lang/String;)V

    const-string v0, "interfaceType"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->j(Ljava/lang/String;)V

    const-string v0, "interfaceCode"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->i(Ljava/lang/String;)V

    const-string v0, "interfaceElasped"

    invoke-virtual {p1, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->h(Ljava/lang/String;)V

    const-string v0, "timeOut"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmic/sso/sdk/d/b;->m(Ljava/lang/String;)V

    const-string v0, "traceId"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->t(Ljava/lang/String;)V

    const-string v2, "networkClass"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->v(Ljava/lang/String;)V

    const-string v2, "simCardNum"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->o(Ljava/lang/String;)V

    const-string v2, "operatortype"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->q(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->r(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "networktype"

    invoke-virtual {p1, v3, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->z(Ljava/lang/String;)V

    const-string v2, "starttime"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->u(Ljava/lang/String;)V

    const-string v2, "endtime"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->x(Ljava/lang/String;)V

    const-string v2, "systemEndTime"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "systemStartTime"

    invoke-virtual {p1, v2, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->n(Ljava/lang/String;)V

    const-string v2, "imsiState"

    invoke-virtual {p1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cmic/sso/sdk/d/b;->d(Ljava/lang/String;)V

    const-string v2, "AID"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cmic/sso/sdk/d/b;->A(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/e/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cmic/sso/sdk/d/b;->B(Ljava/lang/String;)V

    const-string v1, "scripType"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cmic/sso/sdk/d/b;->C(Ljava/lang/String;)V

    const-string v1, "eipKey"

    invoke-virtual {p1, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cmic/sso/sdk/d/b;->D(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SendLog"

    invoke-static {p1, p0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/cmic/sso/sdk/c/c/a;->a()Lcom/cmic/sso/sdk/c/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/d/d;->a:Lcom/cmic/sso/sdk/a;

    new-instance v2, Lcom/cmic/sso/sdk/d/d$1;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/d/d$1;-><init>(Lcom/cmic/sso/sdk/d/d;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/cmic/sso/sdk/c/c/a;->a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .registers 14

    const-string v0, ""

    :try_start_2
    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v1

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2}, Lcom/cmic/sso/sdk/d/b;->e(Ljava/lang/String;)V

    const-string p2, "loginMethod"

    invoke-virtual {p3, p2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/cmic/sso/sdk/d/b;->y(Ljava/lang/String;)V

    const-string p2, "isCacheScrip"

    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_25

    const-string p2, "scrip"

    :goto_21
    invoke-virtual {v1, p2}, Lcom/cmic/sso/sdk/d/b;->s(Ljava/lang/String;)V

    goto :goto_28

    :cond_25
    const-string p2, "pgw"

    goto :goto_21

    :goto_28
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/d/b;->k(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move-object v0, v2

    :goto_37
    invoke-virtual {v1, v0}, Lcom/cmic/sso/sdk/d/b;->l(Ljava/lang/String;)V

    const-string p1, "hsaReadPhoneStatePermission"

    invoke-virtual {p3, p1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "1"

    goto :goto_47

    :cond_45
    const-string p1, "0"

    :goto_47
    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/d/b;->c(Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/cmic/sso/sdk/d/d;->a(Lcom/cmic/sso/sdk/d/b;Lcom/cmic/sso/sdk/a;)V

    const/4 p1, 0x0

    iget-object p2, v1, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_ab

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object p2, v1, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_61
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_7d
    if-ge v7, v6, :cond_90

    aget-object v8, v5, v7

    const-string v9, "\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    :cond_90
    const-string v5, "message"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stack"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_61

    :cond_a6
    iget-object p2, v1, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_ab
    if-eqz p1, :cond_b6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_b6

    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/d/b;->a(Lorg/json/JSONArray;)V

    :cond_b6
    const-string p1, "SendLog"

    const-string/jumbo p2, "登录日志"

    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/d/b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/cmic/sso/sdk/d/d;->a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ca
    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;)V
    .registers 3

    iput-object p2, p0, Lcom/cmic/sso/sdk/d/d;->a:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/d/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method
