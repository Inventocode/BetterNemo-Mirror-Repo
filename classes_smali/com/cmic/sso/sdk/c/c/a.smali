.class public Lcom/cmic/sso/sdk/c/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cmic/sso/sdk/c/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/c/c/a;
    .registers 2

    sget-object v0, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cmic/sso/sdk/c/c/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cmic/sso/sdk/c/c/a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/c/a;-><init>()V

    sput-object v1, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cmic/sso/sdk/c/c/a;->a:Lcom/cmic/sso/sdk/c/c/a;

    return-object v0
.end method

.method private a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V
    .registers 7

    new-instance v0, Lcom/cmic/sso/sdk/c/a/d;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/a/d;-><init>()V

    new-instance v1, Lcom/cmic/sso/sdk/c/a/c;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/a/c;-><init>()V

    new-instance v2, Lcom/cmic/sso/sdk/c/a/a;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/a/d;->a(Lcom/cmic/sso/sdk/c/a/b;)V

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/c/a/c;->a(Lcom/cmic/sso/sdk/c/a/b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/c/c/c;->a(J)V

    new-instance v1, Lcom/cmic/sso/sdk/c/c/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a$1;-><init>(Lcom/cmic/sso/sdk/c/c/a;Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/cmic/sso/sdk/c/a/d;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "networktype"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/cmic/sso/sdk/c/b/h;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/b/h;-><init>()V

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->b(Ljava/lang/String;)V

    const-string v4, "quick_login_android_5.9.0"

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->c(Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->d(Ljava/lang/String;)V

    const-string v4, "imsi"

    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->e(Ljava/lang/String;)V

    const-string v4, "operatortype"

    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->f(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/n;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->j(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/a;->k(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/a;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/r;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/p;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/e/j;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->o(Ljava/lang/String;)V

    const-string v6, "apppackage"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->q(Ljava/lang/String;)V

    const-string v6, "appsign"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/a;->r(Ljava/lang/String;)V

    const-string v6, "AID"

    invoke-static {v6, v5}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cmic/sso/sdk/c/b/h;->a_(Ljava/lang/String;)V

    const-string v5, "logintype"

    invoke-virtual {v0, v5}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v7, :cond_a7

    const-string v5, "pre"

    :goto_a3
    invoke-virtual {v2, v5}, Lcom/cmic/sso/sdk/c/b/a;->u(Ljava/lang/String;)V

    goto :goto_c1

    :cond_a7
    const-string v6, "userCapaid"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/cmic/sso/sdk/c/b/h;->y(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_b9

    const-string v5, "200"

    goto :goto_bb

    :cond_b9
    const-string v5, "50"

    :goto_bb
    invoke-virtual {v2, v5}, Lcom/cmic/sso/sdk/c/b/h;->y(Ljava/lang/String;)V

    const-string v5, "authz"

    goto :goto_a3

    :goto_c1
    const-string v5, "scripAndTokenForHttps"

    invoke-static {v0, v5}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object v5

    const-string v6, "isCacheScrip"

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "defendEOF"

    const-string v11, "traceId"

    const-string v12, "POST"

    const-string v13, "/unisdk/rs/scripAndTokenForHttps"

    const-string v14, "https://"

    if-eqz v6, :cond_125

    invoke-static {v9}, Lcom/cmic/sso/sdk/e/q;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->s(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cmic/sso/sdk/e/q;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->t(Ljava/lang/String;)V

    const-string v1, "phonescrip"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/h;->x(Ljava/lang/String;)V

    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/g;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cmic/sso/sdk/c/b/a;->p(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/cmic/sso/sdk/c/c/c;

    invoke-virtual {v0, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v2, v12, v6}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10, v4}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b5

    :cond_125
    new-instance v4, Lcom/cmic/sso/sdk/c/b/e;

    invoke-direct {v4}, Lcom/cmic/sso/sdk/c/b/e;-><init>()V

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/cmic/sso/sdk/c/b/e;->a([B)V

    invoke-virtual {v4, v2}, Lcom/cmic/sso/sdk/c/b/e;->a(Lcom/cmic/sso/sdk/c/b/a;)V

    invoke-virtual {v4, v9}, Lcom/cmic/sso/sdk/c/b/e;->a(Z)V

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/a/a;->h()Z

    move-result v2

    const-string v6, "isCloseIpv4"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/a/a;->i()Z

    move-result v2

    const-string v6, "isCloseIpv6"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "use2048PublicKey"

    invoke-virtual {v0, v5, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_185

    const-string v5, "BaseRequest"

    const-string/jumbo v6, "使用2对应的编码"

    invoke-static {v5, v6}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "2"

    invoke-virtual {v4, v5}, Lcom/cmic/sso/sdk/c/b/e;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/i;->a()Lcom/cmic/sso/sdk/e/i;

    move-result-object v5

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cmic/sso/sdk/e/i;->b([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_193

    :cond_185
    invoke-static {}, Lcom/cmic/sso/sdk/e/i;->a()Lcom/cmic/sso/sdk/e/i;

    move-result-object v5

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cmic/sso/sdk/e/i;->a([B)Ljava/lang/String;

    move-result-object v5

    :goto_193
    invoke-virtual {v4, v5}, Lcom/cmic/sso/sdk/c/b/e;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/cmic/sso/sdk/c/c/b;

    invoke-virtual {v0, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v4, v12, v6}, Lcom/cmic/sso/sdk/c/c/b;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v5, v10, v2}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doNetworkSwitch"

    if-ne v1, v7, :cond_1af

    invoke-virtual {v5, v8}, Lcom/cmic/sso/sdk/c/c/c;->a(Z)V

    invoke-virtual {v0, v2, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    goto :goto_1b5

    :cond_1af
    invoke-virtual {v5, v9}, Lcom/cmic/sso/sdk/c/c/c;->a(Z)V

    invoke-virtual {v0, v2, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    :goto_1b5
    const-string v1, "interfaceVersion"

    invoke-virtual {v5, v1, v3}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct {p0, v5, v2, v0}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .registers 9

    new-instance v0, Lcom/cmic/sso/sdk/c/b/f;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/b/f;-><init>()V

    new-instance v1, Lcom/cmic/sso/sdk/c/b/f$a;

    invoke-direct {v1}, Lcom/cmic/sso/sdk/c/b/f$a;-><init>()V

    new-instance v2, Lcom/cmic/sso/sdk/c/b/f$b;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/c/b/f$b;-><init>()V

    invoke-static {}, Lcom/cmic/sso/sdk/e/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->f(Ljava/lang/String;)V

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->b(Ljava/lang/String;)V

    const-string v3, "appid"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/cmic/sso/sdk/c/b/g;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cmic/sso/sdk/c/b/f$b;->d(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/cmic/sso/sdk/c/b/f$a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/f;->a(Lcom/cmic/sso/sdk/c/b/f$a;)V

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/c/b/f;->a(Lcom/cmic/sso/sdk/c/b/f$b;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log/logReport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cmic/sso/sdk/c/c/c;

    const-string v2, "traceId"

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(ZLcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/c/c/d;)V
    .registers 8

    new-instance v0, Lcom/cmic/sso/sdk/c/b/b;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/c/b/b;-><init>()V

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->b(Ljava/lang/String;)V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->c(Ljava/lang/String;)V

    const-string v1, "AID"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/c/b/b;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const-string p1, "1"

    goto :goto_21

    :cond_1f
    const-string p1, "0"

    :goto_21
    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->e(Ljava/lang/String;)V

    const-string p1, "quick_login_android_5.9.0"

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->f(Ljava/lang/String;)V

    const-string p1, "appid"

    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->g(Ljava/lang/String;)V

    const-string p1, "iYm0HAnkxQtpvN44"

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/g;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cmic/sso/sdk/c/b/b;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/a/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/client/uniConfig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/cmic/sso/sdk/c/c/c;

    const-string v2, "traceId"

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, p2}, Lcom/cmic/sso/sdk/c/c/a;->a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/c/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
