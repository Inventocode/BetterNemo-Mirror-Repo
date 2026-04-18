.class public abstract Lcom/geetest/sdk/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/an$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/geetest/sdk/model/beans/a;

.field private c:Landroid/content/Context;

.field private d:Lcom/geetest/sdk/GT3ConfigBean;

.field private e:Lcom/geetest/sdk/h;

.field private f:Lcom/geetest/sdk/model/beans/b;

.field private g:J

.field private h:Lcom/geetest/sdk/b$b;

.field private i:I

.field private j:Lcom/geetest/sdk/model/beans/c;

.field public k:Lcom/geetest/sdk/an$a;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/geetest/sdk/an;->a:I

    .line 12
    iput v0, p0, Lcom/geetest/sdk/an;->i:I

    .line 134
    sget-object v0, Lcom/geetest/sdk/an$a;->NORMAL:Lcom/geetest/sdk/an$a;

    .line 135
    iput p1, p0, Lcom/geetest/sdk/an;->a:I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geetest/sdk/an;->g:J

    return-void
.end method


# virtual methods
.method public a()Lcom/geetest/sdk/b$b;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/an;->h:Lcom/geetest/sdk/b$b;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 8
    iput p1, p0, Lcom/geetest/sdk/an;->i:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/an;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/an;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-void
.end method

.method public a(Lcom/geetest/sdk/b$b;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/geetest/sdk/an;->h:Lcom/geetest/sdk/b$b;

    return-void
.end method

.method public a(Lcom/geetest/sdk/h;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/an;->e:Lcom/geetest/sdk/h;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/an;->b:Lcom/geetest/sdk/model/beans/a;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/b;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/an;->f:Lcom/geetest/sdk/model/beans/b;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/c;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/geetest/sdk/an;->j:Lcom/geetest/sdk/model/beans/c;

    return-void
.end method

.method public b()Lcom/geetest/sdk/GT3ConfigBean;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/an;->d:Lcom/geetest/sdk/GT3ConfigBean;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/an;->a:I

    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/an;->c:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lcom/geetest/sdk/model/beans/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/an;->f:Lcom/geetest/sdk/model/beans/b;

    return-object v0
.end method

.method public e()Lcom/geetest/sdk/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/an;->e:Lcom/geetest/sdk/h;

    return-object v0
.end method

.method public f()Lcom/geetest/sdk/model/beans/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/an;->b:Lcom/geetest/sdk/model/beans/a;

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/an;->i:I

    return v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/an;->a:I

    return v0
.end method

.method public i()Lcom/geetest/sdk/model/beans/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/an;->j:Lcom/geetest/sdk/model/beans/c;

    return-object v0
.end method

.method public j()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/geetest/sdk/an;->g:J

    return-wide v0
.end method
