.class public Lcom/cmic/sso/sdk/auth/AuthnHelper;
.super Lcom/cmic/sso/sdk/auth/c;


# static fields
.field private static f:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# instance fields
.field private g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

.field private h:Lcom/cmic/sso/sdk/view/LoginPageInListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/a;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .registers 5

    const-string v0, "traceId"

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    const-string p1, "com.cmic.sso.sdk.view.LoginAuthActivity"

    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/a;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;
    .registers 3

    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/cmic/sso/sdk/a;)V
    .registers 6

    new-instance v0, Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {v0, p0, p1}, Lcom/cmic/sso/sdk/auth/c$a;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/a;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    new-instance v2, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/auth/c$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method public getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    if-nez v0, :cond_f

    new-instance v0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->build()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    :cond_f
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-object v0
.end method

.method public getOverTime()J
    .registers 3

    iget-wide v0, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    return-wide v0
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .registers 13

    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .registers 13

    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    return-void
.end method

.method public loginPageInCallBack(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/cmic/sso/sdk/view/LoginPageInListener;->onLoginPageInComplete(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .registers 13

    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V

    return-void
.end method

.method public quitAuthActivity()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->b()Lcom/cmic/sso/sdk/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->b()Lcom/cmic/sso/sdk/view/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmic/sso/sdk/view/a$a;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_22

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AuthnHelper"

    const-string/jumbo v1, "关闭授权页失败"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public setAuthThemeConfig(Lcom/cmic/sso/sdk/view/AuthThemeConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-void
.end method
