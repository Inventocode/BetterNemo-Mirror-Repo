.class public Lcom/geetest/sdk/model/beans/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/geetest/sdk/model/beans/h;

.field private o:Lcom/geetest/sdk/model/beans/g;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:[B

.field private u:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 9
    iput v0, p0, Lcom/geetest/sdk/model/beans/b;->f:I

    .line 10
    iput v0, p0, Lcom/geetest/sdk/model/beans/b;->g:I

    const-string v0, "api.geetest.com"

    .line 30
    iput-object v0, p0, Lcom/geetest/sdk/model/beans/b;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 8
    iput p1, p0, Lcom/geetest/sdk/model/beans/b;->u:I

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/g;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->o:Lcom/geetest/sdk/model/beans/g;

    return-void
.end method

.method public a(Lcom/geetest/sdk/model/beans/h;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->n:Lcom/geetest/sdk/model/beans/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->s:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/geetest/sdk/model/beans/b;->d:Z

    return-void
.end method

.method public a([B)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->t:[B

    return-void
.end method

.method public a()[B
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->t:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 3
    :goto_5
    iput-boolean v0, p0, Lcom/geetest/sdk/model/beans/b;->j:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->q:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/geetest/sdk/model/beans/b;->h:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/geetest/sdk/model/beans/b;->f:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->k:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/geetest/sdk/model/beans/b;->u:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/geetest/sdk/model/beans/b;->g:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->m:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->s:Ljava/util/Map;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->b:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->a:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Lcom/geetest/sdk/model/beans/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->o:Lcom/geetest/sdk/model/beans/g;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public k()Lcom/geetest/sdk/model/beans/h;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->n:Lcom/geetest/sdk/model/beans/h;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/geetest/sdk/model/beans/b;->p:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/model/beans/b;->h:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/model/beans/b;->f:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/model/beans/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/geetest/sdk/model/beans/b;->g:I

    return v0
.end method

.method public t()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/model/beans/b;->d:Z

    return v0
.end method

.method public u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/model/beans/b;->j:Z

    return v0
.end method
