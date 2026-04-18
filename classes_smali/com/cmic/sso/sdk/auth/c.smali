.class public Lcom/cmic/sso/sdk/auth/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/auth/c$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/cmic/sso/sdk/auth/a;

.field protected final b:Landroid/content/Context;

.field protected c:J

.field protected final d:Landroid/os/Handler;

.field protected e:Ljava/lang/String;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/a;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/s;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/s;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/k;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/j;->a(Landroid/content/Context;)V

    new-instance p1, Lcom/cmic/sso/sdk/auth/c$1;

    invoke-direct {p1, p0}, Lcom/cmic/sso/sdk/auth/c$1;-><init>(Lcom/cmic/sso/sdk/auth/c;)V

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmic/sso/sdk/e/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthnHelperCore"

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/k;->a()Lcom/cmic/sso/sdk/e/k$a;

    move-result-object v1

    const-string v2, "AID"

    invoke-virtual {v1, v2, v0}, Lcom/cmic/sso/sdk/e/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/e/k$a;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V
    .registers 5

    new-instance v0, Lcom/cmic/sso/sdk/auth/c$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/cmic/sso/sdk/auth/c$4;-><init>(Lcom/cmic/sso/sdk/auth/c;Ljava/lang/String;Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/cmic/sso/sdk/auth/c;->a()V

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/c;->a(Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;
    .registers 5

    new-instance v0, Lcom/cmic/sso/sdk/a;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/r;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmic/sso/sdk/d/b;

    invoke-direct {v2}, Lcom/cmic/sso/sdk/d/b;-><init>()V

    invoke-virtual {v0, v2}, Lcom/cmic/sso/sdk/a;->a(Lcom/cmic/sso/sdk/d/b;)V

    const-string v2, "traceId"

    invoke-virtual {v0, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_20

    invoke-static {v1, p1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    :cond_20
    return-object v0
.end method

.method protected a(Lcom/cmic/sso/sdk/a;)V
    .registers 6

    new-instance v0, Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {v0, p0, p1}, Lcom/cmic/sso/sdk/auth/c$a;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/a;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    new-instance v2, Lcom/cmic/sso/sdk/auth/c$2;

    invoke-direct {v2, p0, v0}, Lcom/cmic/sso/sdk/auth/c$2;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/c$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method protected a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cmic/sso/sdk/auth/TokenListener;)Z
    .registers 15

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/a/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/c;->a()Lcom/cmic/sso/sdk/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->a(Lcom/cmic/sso/sdk/a/a;)V

    const-string v1, "use2048PublicKey"

    const-string v2, "rsa2048"

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    const-string v1, "systemStartTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    const-string v1, "starttime"

    invoke-static {}, Lcom/cmic/sso/sdk/e/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loginMethod"

    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appkey"

    invoke-virtual {p1, p4, p3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "appid"

    invoke-virtual {p1, p4, p2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "timeOut"

    iget-wide v1, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p4, v1}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    const-string v1, "AuthnHelperCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "有READ_PHONE_STATE权限？"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hsaReadPhoneStatePermission"

    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p4}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/content/Context;Z)V

    const-string p4, "networkClass"

    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cmic/sso/sdk/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "simCardNum"

    invoke-static {}, Lcom/cmic/sso/sdk/b/b;->a()Lcom/cmic/sso/sdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/b/b;->b()Lcom/cmic/sso/sdk/b/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/b/b$b;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object p4

    invoke-virtual {p4}, Lcom/cmic/sso/sdk/e/j;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/e/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/e/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cmic/sso/sdk/e/j;->a(Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "imsi"

    invoke-virtual {p1, v5, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "operatortype"

    invoke-virtual {p1, v5, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "iccid"

    invoke-virtual {p1, v5, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "logintype"

    invoke-virtual {p1, v5, p5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    const-string v5, "AuthnHelperCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AuthnHelperCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AuthnHelperCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_139

    const-string v1, "AuthnHelperCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "使用imsi作为缓存key = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scripType"

    const-string v2, "imsi"

    invoke-virtual {p1, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scripKey"

    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b6

    :cond_139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_163

    const-string p4, "AuthnHelperCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "使用iccid作为缓存key = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripType"

    const-string v2, "iccid"

    invoke-virtual {p1, p4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripKey"

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    :cond_163
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_18d

    const-string p4, "AuthnHelperCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "使用subId作为缓存key = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripType"

    const-string v1, "subid"

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripKey"

    invoke-virtual {p1, p4, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b6

    :cond_18d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1b6

    const-string p4, "AuthnHelperCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "使用operator作为缓存key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripType"

    const-string v1, "operator"

    invoke-virtual {p1, p4, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "scripKey"

    invoke-virtual {p1, p4, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b6
    :goto_1b6
    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p4, v3}, Lcom/cmic/sso/sdk/e/n;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    const-string v1, "networktype"

    invoke-virtual {p1, v1, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c4
    invoke-static {p1}, Lcom/cmic/sso/sdk/e/h;->a(Lcom/cmic/sso/sdk/a;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1f3

    const-string v6, "securityphone"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "securityphone"

    invoke-virtual {p1, v7, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    if-eq v6, p5, :cond_1f3

    if-eqz p4, :cond_1f3

    iget-object p5, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p5}, Lcom/cmic/sso/sdk/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1ef

    const-string v6, "phonescrip"

    invoke-virtual {p1, v6, p5}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f0

    :cond_1ef
    const/4 v2, 0x0

    :goto_1f0
    invoke-static {v5, v4}, Lcom/cmic/sso/sdk/e/h;->a(ZZ)V

    :cond_1f3
    const-string p5, "isCacheScrip"

    invoke-virtual {p1, p5, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    const-string p5, "AuthnHelperCore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCachePhoneScrip = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p5, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_20f
    .catchall {:try_start_1c4 .. :try_end_20f} :catchall_295

    const/4 p5, 0x0

    if-nez p6, :cond_21a

    const-string p2, "102203"

    const-string p3, "listener不能为空"

    :goto_216
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return v4

    :cond_21a
    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->g()Z

    move-result p6

    if-eqz p6, :cond_226

    :goto_220
    const-string p2, "200082"

    const-string/jumbo p3, "服务器繁忙，请稍后重试"

    goto :goto_216

    :cond_226
    if-nez p2, :cond_22b

    const-string p2, ""

    goto :goto_22f

    :cond_22b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_22f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_23a

    const-string p2, "102203"

    const-string p3, "appId 不能为空"

    goto :goto_216

    :cond_23a
    if-nez p3, :cond_23f

    const-string p2, ""

    goto :goto_243

    :cond_23f
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :goto_243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_24e

    const-string p2, "102203"

    const-string p3, "appkey不能为空"

    goto :goto_216

    :cond_24e
    if-nez p4, :cond_256

    const-string p2, "102101"

    const-string/jumbo p3, "未检测到网络"

    goto :goto_216

    :cond_256
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_26b

    const-string p2, "authType"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "200010"

    const-string/jumbo p3, "无法识别sim卡或没有sim卡"

    goto :goto_216

    :cond_26b
    const/4 p2, 0x2

    if-ne p4, p2, :cond_276

    if-nez v2, :cond_276

    const-string p2, "102103"

    const-string/jumbo p3, "无数据网络"

    goto :goto_216

    :cond_276
    const-string p2, "2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_285

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->f()Z

    move-result p2

    if-eqz p2, :cond_285

    goto :goto_220

    :cond_285
    const-string p2, "3"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_294

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a/a;->e()Z

    move-result p2

    if-eqz p2, :cond_294

    goto :goto_220

    :cond_294
    return v5

    :catchall_295
    move-exception p1

    :try_start_296
    monitor-exit v1
    :try_end_297
    .catchall {:try_start_296 .. :try_end_297} :catchall_295

    throw p1
.end method

.method public callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .registers 10

    :try_start_0
    const-string v0, "traceId"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKRequestCode"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_a1

    :try_start_14
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v2

    if-eqz p4, :cond_23

    const-string v3, "keepListener"

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_23
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->b(Ljava/lang/String;)V

    :cond_26
    if-nez v2, :cond_2a

    monitor-exit p0

    return-void

    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_9e

    :try_start_2b
    const-string v0, "systemEndTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p3, v0, v3, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    const-string v0, "endtime"

    invoke-static {}, Lcom/cmic/sso/sdk/e/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logintype"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v0

    if-nez p4, :cond_49

    invoke-static {p1, p2}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    :cond_49
    const/4 v3, 0x3

    if-ne v0, v3, :cond_51

    invoke-static {p1, p3, p4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_55

    :cond_51
    invoke-static {p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    :goto_55
    const-string p4, "scripExpiresIn"

    invoke-static {}, Lcom/cmic/sso/sdk/e/h;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p4, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    new-instance v0, Lcom/cmic/sso/sdk/auth/c$3;

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/cmic/sso/sdk/auth/c$3;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/TokenListener;ILorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/cmic/sso/sdk/a/c;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/a/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cmic/sso/sdk/a/c;->a(Lcom/cmic/sso/sdk/a;)V

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a/a;->j()Z

    move-result p2

    if-nez p2, :cond_8e

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/a;->b()Lcom/cmic/sso/sdk/a/a;

    move-result-object p2

    invoke-static {p2}, Lcom/cmic/sso/sdk/e/r;->a(Lcom/cmic/sso/sdk/a/a;)Z

    move-result p2

    if-nez p2, :cond_8e

    iget-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-direct {p0, p2, p1, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    :cond_8e
    invoke-static {}, Lcom/cmic/sso/sdk/e/e;->a()Z

    move-result p1

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/s;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/e/s;->b()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_9d} :catch_a1

    goto :goto_a5

    :catchall_9e
    move-exception p1

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw p1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public delScrip()V
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0, v0}, Lcom/cmic/sso/sdk/e/h;->a(ZZ)V

    const-string v0, "AuthnHelperCore"

    const-string/jumbo v1, "删除scrip"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8

    const-string v0, "AuthnHelperCore"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    invoke-static {}, Lcom/cmic/sso/sdk/e/j;->a()Lcom/cmic/sso/sdk/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/e/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cmic/sso/sdk/e/n;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v3, "operatortype"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "networktype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "网络类型: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "运营商类型: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_58} :catch_59

    return-object v1

    :catch_59
    :try_start_59
    const-string p1, "errorDes"

    const-string/jumbo v0, "发生未知错误"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_66
    return-object v1
.end method

.method public setOverTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    return-void
.end method
