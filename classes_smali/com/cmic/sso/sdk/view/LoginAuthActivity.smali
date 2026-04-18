.class public Lcom/cmic/sso/sdk/view/LoginAuthActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;,
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;,
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Landroid/app/Dialog;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/cmic/sso/sdk/view/c;

.field private f:Lcom/cmic/sso/sdk/view/c;

.field private g:Lcom/cmic/sso/sdk/view/c;

.field private h:Lcom/cmic/sso/sdk/view/c;

.field private i:Lcom/cmic/sso/sdk/view/c;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cmic/sso/sdk/view/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Ljava/lang/String;

.field private m:Lcom/cmic/sso/sdk/a;

.field private n:Lcom/cmic/sso/sdk/auth/a;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:J

.field private t:I

.field private u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

.field private v:Lcom/cmic/sso/sdk/auth/TokenListener;

.field private w:Z

.field private x:Landroid/widget/RelativeLayout;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_59

    const/4 v1, 0x1

    const-string v2, "keepListener"

    const-string v3, "traceId"

    if-eqz v0, :cond_2e

    :try_start_13
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p3, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    :goto_2a
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_64

    :cond_2e
    const-string v0, "200020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {p3, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :cond_4d
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a()V

    goto :goto_64

    :cond_51
    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_58} :catch_59

    goto :goto_2a

    :catch_59
    move-exception p1

    sget-object p2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string p3, "CallbackResult:未知错误"

    invoke-static {p2, p3}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    return-void
.end method

.method private a(Z)V
    .registers 5

    :try_start_0
    const-string p1, "authPageOut"

    invoke-static {p1}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V

    const-string p1, "200020"

    const-string/jumbo v0, "登录页面关闭"

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception p1

    sget-object v0, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method private d()V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "traceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->d(Ljava/lang/String;)Lcom/cmic/sso/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/cmic/sso/sdk/a;

    invoke-direct {v0, v2}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    :cond_1a
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->v:Lcom/cmic/sso/sdk/auth/TokenListener;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v1, "securityphone"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSecurityPhone value is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v4, "operatortype"

    invoke-virtual {v1, v4, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAppLanguageType()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_97

    sget-object v0, Lcom/cmic/sso/sdk/c;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    goto :goto_a8

    :cond_97
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAppLanguageType()I

    move-result v0

    if-ne v0, v3, :cond_a4

    sget-object v0, Lcom/cmic/sso/sdk/c;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    goto :goto_a8

    :cond_a4
    sget-object v0, Lcom/cmic/sso/sdk/c;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    :goto_a8
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "http://wap.cmpassport.com/resources/html/contract.html"

    goto :goto_d2

    :cond_b9
    const-string v0, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "https://e.189.cn/sdk/agreement/detail.do?hidetop=true"

    goto :goto_d2

    :cond_ca
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "https://opencloud.wostore.cn/authz/resource/html/disclaimer.html?fromsdk=true"

    :goto_d2
    new-instance v1, Lcom/cmic/sso/sdk/view/c;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x1030010

    invoke-direct {v1, v3, v6, v5, v0}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$1;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$2;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$2;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_130
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16b

    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl2()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$3;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$3;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16b
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a6

    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName3()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl3()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$4;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$4;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a6
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e1

    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName4()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl4()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j()Ljava/lang/String;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyBookSymbol()Z

    move-result v0

    if-eqz v0, :cond_21d

    const/4 v0, 0x0

    :goto_1ed
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21d

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "《%s》"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ed

    :cond_21d
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/view/a;->a(Lcom/cmic/sso/sdk/view/a$a;)V

    return-void
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method private e()V
    .registers 12

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-gtz v1, :cond_5f

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v1

    if-gez v1, :cond_1f

    goto :goto_5f

    :cond_1f
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v1

    if-lez v1, :cond_5b

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v1, v6

    if-lez v1, :cond_5b

    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v6, "numberField_bottom"

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c1

    :cond_5b
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_c1

    :cond_5f
    :goto_5f
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhoneLayout.getMeasuredHeight()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v6

    if-lez v6, :cond_be

    iget v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_be

    const-string v6, "numberField_top"

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_c1

    :cond_be
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_c1
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnMarginLeft()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnMarginRight()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v7

    if-gtz v7, :cond_141

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v7

    if-gez v7, :cond_f3

    goto :goto_141

    :cond_f3
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v7

    if-lez v7, :cond_13d

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v9}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_13d

    sget-object v7, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v8, "logBtn_bottom"

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v7, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_19f

    :cond_13d
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_18e

    :cond_141
    :goto_141
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v7

    if-lez v7, :cond_18b

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v9}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_18b

    sget-object v7, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v8, "logBtn_top"

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v8, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v7, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_19f

    :cond_18b
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_18e
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v7, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_19f
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    const/16 v6, 0x1e

    if-ltz v1, :cond_1d4

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    if-le v1, v6, :cond_1c5

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    goto :goto_1e6

    :cond_1c5
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    goto :goto_1e6

    :cond_1d4
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    if-le v1, v6, :cond_1de

    const/4 v1, 0x0

    goto :goto_1e6

    :cond_1de
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    sub-int/2addr v6, v1

    neg-int v1, v6

    :goto_1e6
    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginRight()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7, v7}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v7

    const-string v8, "privacy_bottom="

    if-gtz v7, :cond_288

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v7

    if-gez v7, :cond_20d

    goto/16 :goto_288

    :cond_20d
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v7

    if-lez v7, :cond_26b

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v7, v9

    if-lez v7, :cond_26b

    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_30f

    :cond_26b
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v2, "privacy_top"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_30f

    :cond_288
    :goto_288
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v7

    if-lez v7, :cond_2e7

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v7, v9

    if-lez v7, :cond_2e7

    sget-object v3, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "privacy_top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v4, v6

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_30f

    :cond_2e7
    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_30f
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_4a
    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_70

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isLightColor()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_70

    :cond_65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_70
    :goto_70
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_95

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_91

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_91
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_aa

    :cond_95
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLayoutResID()I

    move-result v1

    if-eq v1, v3, :cond_aa

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLayoutResID()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_aa
    :goto_aa
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmic/sso/sdk/view/d;->b(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c8

    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    if-gt v3, v5, :cond_ce

    :cond_c8
    if-nez v1, :cond_d4

    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    if-ge v3, v5, :cond_d4

    :cond_ce
    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iput v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    :cond_d4
    sget-object v3, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenWidth = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenHeight = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowWidth()I

    move-result v3

    if-eqz v3, :cond_18d

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowX()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowBottom()I

    move-result v3

    if-ne v3, v4, :cond_177

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    goto :goto_186

    :cond_177
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowY()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_18d
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isFitsSystemWindows()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    :try_start_199
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g()V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k()V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1c9} :catch_219

    :try_start_1c9
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyState()Z

    move-result v0

    if-eqz v0, :cond_1eb

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_235

    :cond_1eb
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ff

    goto :goto_200

    :cond_1ff
    const/4 v4, 0x0

    :goto_200
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_212} :catch_213

    goto :goto_235

    :catch_213
    :try_start_213
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_218} :catch_219

    goto :goto_235

    :catch_219
    move-exception v0

    sget-object v1, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v1, 0x0

    const-string v2, "200040"

    const-string v3, "UI资源加载异常"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_235
    return-void
.end method

.method static synthetic g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private g()V
    .registers 7

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3333

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberOffsetX()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_36

    const/16 v2, 0xd

    :goto_32
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5d

    :cond_36
    if-lez v2, :cond_5d

    iget v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_53

    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5d

    :cond_53
    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v4, "RelativeLayout.ALIGN_PARENT_RIGHT"

    invoke-static {v2, v4}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    goto :goto_32

    :cond_5d
    :goto_5d
    const/4 v2, 0x2

    :try_start_5e
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_68} :catch_69

    goto :goto_6e

    :catch_69
    const/high16 v4, 0x41900000  # 18.0f

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_6e
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isNumberBold()Z

    move-result v2

    if-eqz v2, :cond_80

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_80
    const/16 v2, 0x7777

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_8a
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9a
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneLayout.getMeasuredHeight()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()Landroid/widget/RelativeLayout;
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x4444

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnTextSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isLogBtnTextBold()Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5b
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_69
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_77
    :try_start_77
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnBackgroundPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_88} :catch_89

    goto :goto_9a

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string v2, "umcsdk_login_btn_bg"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_9a
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-object p0
.end method

.method static synthetic i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private i()Landroid/widget/RelativeLayout;
    .registers 13

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v0

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgHeight()I

    move-result v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/16 v6, 0x1e

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v7}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxLocation()I

    move-result v3

    const/16 v5, 0xf

    const/4 v7, 0x1

    if-ne v3, v7, :cond_4a

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_4a
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    const v8, 0x8888

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v11}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    if-le v0, v6, :cond_8c

    const/4 v0, 0x0

    goto :goto_8e

    :cond_8c
    sub-int/2addr v6, v0

    int-to-float v0, v6

    :goto_8e
    invoke-static {v9, v0}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxLocation()I

    move-result v0

    if-ne v0, v7, :cond_a5

    invoke-virtual {v3, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_a5
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/high16 v3, 0x40a00000  # 5.0f

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseBaseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/view/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41000000  # 8.0f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyTextBold()Z

    move-result v1

    if-eqz v1, :cond_11b

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_11b
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyTextGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_128

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_128
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_147
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_156} :catch_157

    goto :goto_162

    :catch_157
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    const-string v1, "umcsdk_uncheck_image"

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_162
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyBookSymbol()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "《%s》"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    :cond_20
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    const-string v1, "$$运营商条款$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    :cond_34
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method static synthetic k(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k()V

    return-void
.end method

.method static synthetic l(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    return-object p0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method static synthetic m(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/auth/a;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->n:Lcom/cmic/sso/sdk/auth/a;

    return-object p0
.end method

.method private m()V
    .registers 9

    const-string v0, "traceId"

    :try_start_2
    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1a

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string/jumbo v1, "网络不稳定,请返回重试其他登录方式"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_5d

    aget-object v5, v1, v4

    const-string v6, "stack"

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    const-string v6, "com.cmic.sso.sdk.activity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_5d
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v2, "loginTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-static {}, Lcom/cmic/sso/sdk/e/r;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v2, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->v:Lcom/cmic/sso/sdk/auth/TokenListener;

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    :cond_8a
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b()V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l()V

    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-direct {v0, p0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Lcom/cmic/sso/sdk/a;)V

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getOverTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;)V

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/o;->a(Lcom/cmic/sso/sdk/e/o$a;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ac} :catch_ad

    goto :goto_b1

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b1
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    :cond_15
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    :cond_24
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c()V

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_53
    return-void
.end method

.method public b()V
    .registers 7

    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v1, "loginClickStart"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/cmic/sso/sdk/view/LoginClickListener;->onLoginClickStart(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_a1

    :cond_20
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    new-instance v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity$8;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$8;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string v5, "dialog_loading"

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x50

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    :cond_92
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a1
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v1, "loginClickComplete"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/view/LoginClickListener;->onLoginClickComplete(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_37

    :cond_23
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x4444

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x6666

    const/4 v2, 0x0

    if-eq p1, v0, :cond_28

    const v0, 0x8888

    if-eq p1, v0, :cond_14

    goto :goto_77

    :cond_14
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_77

    :cond_22
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_77

    :cond_28
    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    goto :goto_77

    :cond_2c
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cmic/sso/sdk/view/CheckBoxListener;->onLoginClick(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :cond_49
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_65
    iget p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_77

    :catch_6e
    move-exception p1

    sget-object v0, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    iput-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getThemeId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getThemeId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_26
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityOut()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityOut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4d
    const-string p1, "authPageIn"

    invoke-static {p1}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/a;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->n:Lcom/cmic/sso/sdk/auth/a;

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d()V

    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_88

    :catch_65
    move-exception p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v0

    iget-object v0, v0, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v0, 0x0

    const-string v1, "200025"

    const-string/jumbo v2, "发生未知错误"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_88
    return-void
.end method

.method protected onDestroy()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "timeOnAuthPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_45

    const-string v2, "authPrivacyState"

    if-eqz v0, :cond_33

    :try_start_2d
    const-string v0, "1"

    :goto_2f
    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_33
    const-string v0, "0"

    goto :goto_2f

    :goto_36
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->c()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_44} :catch_45

    goto :goto_55

    :catch_45
    move-exception v0

    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v2, "LoginAuthActivity clear failed"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_24

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cmic/sso/sdk/view/BackPressedListener;->onBackPressed()V

    :cond_20
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    if-eqz v1, :cond_f

    const-string v2, "loginMethod"

    const-string v3, "loginAuth"

    invoke-virtual {v1, v2, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v1

    const-string v2, "200087"

    invoke-virtual {v1, v2, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginPageInCallBack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_2f

    :catch_19
    move-exception v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v2, "200025"

    const-string/jumbo v3, "发生未知错误"

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_2f
    return-void
.end method
