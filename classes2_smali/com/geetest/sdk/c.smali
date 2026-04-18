.class public Lcom/geetest/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "c"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/geetest/sdk/GT3ConfigBean;

.field private c:Lcom/geetest/sdk/ao;

.field private d:Lcom/geetest/sdk/h;

.field private e:Lcom/geetest/sdk/b$b;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/geetest/sdk/c;->g:Z

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/geetest/sdk/c;->h:I

    .line 9
    iput-object p1, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->a()V

    :cond_13
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/geetest/sdk/c;->h:I

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Lcom/geetest/sdk/b$b;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/c;->e:Lcom/geetest/sdk/b$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/c;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/geetest/sdk/c;->g:Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/geetest/sdk/ad;->b()V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->j()V

    :cond_16
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->c()V

    :cond_13
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/geetest/sdk/GT3ConfigBean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    return-object v0
.end method

.method public f()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/c;->h:I

    return v0
.end method

.method public h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/c;->g:Z

    return v0
.end method

.method public i()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2
    sget-object v0, Lcom/geetest/sdk/c;->i:Ljava/lang/String;

    const-string v1, "api2接口错误，错误码为：209-->API2 Result Error !"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/geetest/sdk/model/beans/a;

    invoke-direct {v0}, Lcom/geetest/sdk/model/beans/a;-><init>()V

    const-string v1, "API2 Result Error !  { 1. 客户端和服务端数据不通，检查数据请求get、post是否对应，检查数据格式json、form表单; 2.服务端SDK二次校验失败，检查传入challenge、validate数据是否正常，排查md5处理后失败原因 }"

    .line 4
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->c(Ljava/lang/String;)V

    const-string v1, "209"

    .line 6
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->b(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v3}, Lcom/geetest/sdk/an;->j()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/model/beans/a;->a(J)V

    .line 8
    iget-object v1, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v1}, Lcom/geetest/sdk/an;->d()Lcom/geetest/sdk/model/beans/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/a;->a(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v1}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/geetest/sdk/model/beans/a;->clone()Lcom/geetest/sdk/GT3ErrorBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/GT3ErrorBean;)V

    :cond_48
    return-void
.end method

.method public j()V
    .registers 4

    .line 1
    new-instance v0, Lcom/geetest/sdk/h;

    iget-object v1, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0, v1, v2}, Lcom/geetest/sdk/h;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v0, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    .line 2
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/h;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->k()V

    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v0}, Lcom/geetest/sdk/an;->e()Lcom/geetest/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->m()V

    :cond_13
    return-void
.end method

.method public l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->h()Lcom/geetest/sdk/h$i;

    move-result-object v0

    sget-object v1, Lcom/geetest/sdk/h$i;->SHOW_WEB:Lcom/geetest/sdk/h$i;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->e()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/geetest/sdk/utils/d;->c:Z

    .line 4
    :try_start_1e
    iget-object v0, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {v0}, Lcom/geetest/sdk/h;->g()Lcom/geetest/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/e;->show()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/geetest/sdk/utils/d;->c:Z

    .line 12
    sget-object v0, Lcom/geetest/sdk/c;->i:Ljava/lang/String;

    const-string v1, "startCustomFlow"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_62

    .line 24
    iget-object v0, p0, Lcom/geetest/sdk/c;->e:Lcom/geetest/sdk/b$b;

    if-eqz v0, :cond_4a

    .line 25
    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->d()V

    .line 26
    iget-object v0, p0, Lcom/geetest/sdk/c;->e:Lcom/geetest/sdk/b$b;

    invoke-interface {v0}, Lcom/geetest/sdk/b$b;->i()V

    .line 33
    :cond_4a
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 37
    iget-object v0, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geetest/sdk/GT3BaseListener;->onButtonClick()V

    goto :goto_6e

    .line 38
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode configuration error !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_62
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->j()V

    .line 48
    iget-object v0, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geetest/sdk/GT3BaseListener;->onButtonClick()V

    :goto_6e
    return-void
.end method

.method public m()V
    .registers 6

    .line 1
    new-instance v0, Lcom/geetest/sdk/ao;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geetest/sdk/ao;-><init>(I)V

    iput-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    .line 2
    iget-object v2, p0, Lcom/geetest/sdk/c;->e:Lcom/geetest/sdk/b$b;

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/b$b;)V

    .line 3
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/an;->a(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 5
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/an;->a(I)V

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    new-instance v2, Lcom/geetest/sdk/model/beans/c;

    invoke-direct {v2}, Lcom/geetest/sdk/model/beans/c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/model/beans/c;)V

    .line 7
    new-instance v0, Lcom/geetest/sdk/model/beans/b;

    invoke-direct {v0}, Lcom/geetest/sdk/model/beans/b;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getUserInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->b(Ljava/util/Map;)V

    .line 10
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getGTViewWithParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->a(Ljava/util/Map;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->a(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->h(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->d(I)V

    .line 14
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getWebviewTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->e(I)V

    .line 15
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->e()Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/GT3ConfigBean;->getCorners()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->a(I)V

    .line 18
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geetest/sdk/model/beans/b;->a(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_97

    .line 22
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->b(Ljava/lang/String;)V

    goto :goto_9e

    .line 24
    :cond_97
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/model/beans/b;->b(Ljava/lang/String;)V

    .line 27
    :goto_9e
    iget-object v1, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v1, v0}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/model/beans/b;)V

    .line 30
    new-instance v0, Lcom/geetest/sdk/q;

    invoke-direct {v0}, Lcom/geetest/sdk/q;-><init>()V

    .line 33
    new-instance v1, Lcom/geetest/sdk/w;

    invoke-direct {v1}, Lcom/geetest/sdk/w;-><init>()V

    .line 34
    new-instance v2, Lcom/geetest/sdk/s;

    invoke-direct {v2}, Lcom/geetest/sdk/s;-><init>()V

    .line 35
    new-instance v3, Lcom/geetest/sdk/x;

    invoke-direct {v3}, Lcom/geetest/sdk/x;-><init>()V

    .line 36
    new-instance v4, Lcom/geetest/sdk/t;

    invoke-direct {v4}, Lcom/geetest/sdk/t;-><init>()V

    .line 39
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 44
    invoke-virtual {v2, v3}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 45
    invoke-virtual {v3, v4}, Lcom/geetest/sdk/u;->a(Lcom/geetest/sdk/u;)V

    .line 48
    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_df

    .line 49
    iget-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    if-nez v1, :cond_ea

    .line 50
    new-instance v1, Lcom/geetest/sdk/h;

    iget-object v2, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v1, v2, v3}, Lcom/geetest/sdk/h;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    goto :goto_ea

    .line 53
    :cond_df
    new-instance v1, Lcom/geetest/sdk/h;

    iget-object v2, p0, Lcom/geetest/sdk/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/geetest/sdk/c;->b:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v1, v2, v3}, Lcom/geetest/sdk/h;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V

    iput-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    .line 55
    :cond_ea
    :goto_ea
    iget-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/h;->a(I)V

    .line 56
    iget-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    iget-object v2, p0, Lcom/geetest/sdk/c;->e:Lcom/geetest/sdk/b$b;

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/b$b;)V

    .line 57
    iget-object v1, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {p0}, Lcom/geetest/sdk/c;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/h;->a(Z)V

    .line 58
    iget-object v1, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    iget-object v2, p0, Lcom/geetest/sdk/c;->d:Lcom/geetest/sdk/h;

    invoke-virtual {v1, v2}, Lcom/geetest/sdk/an;->a(Lcom/geetest/sdk/h;)V

    .line 60
    iget-object v1, p0, Lcom/geetest/sdk/c;->c:Lcom/geetest/sdk/ao;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/u;->c(Lcom/geetest/sdk/an;)V

    return-void
.end method
