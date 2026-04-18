.class public Lcom/cmic/sso/sdk/b/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    iput v1, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    iput v1, p0, Lcom/cmic/sso/sdk/b/b$b;->i:I

    iput v1, p0, Lcom/cmic/sso/sdk/b/b$b;->j:I

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/b$b;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/b/b$b;->j:I

    return p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/b$b;I)I
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->i:I

    return p1
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/b/b$b;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/b/b$b;->i:I

    return p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/b/b$b;I)I
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->j:I

    return p1
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/b/b$b;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    return p0
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/b/b$b;I)I
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    return p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/b/b$b;I)I
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    return p1
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/b/b$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/b/b$b;)I
    .registers 1

    iget p0, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    return p0
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/b/b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/cmic/sso/sdk/b/b$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cmic/sso/sdk/b/b$b;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->a:Ljava/lang/String;

    return-object p1

    :cond_7
    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->b:Ljava/lang/String;

    return-object p1

    :cond_e
    const-string p1, ""

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->i:I

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected c(I)V
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->i:I

    return v0
.end method

.method protected d(I)V
    .registers 2

    iput p1, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->j:I

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    return-object p1

    :cond_7
    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    return-object p1

    :cond_e
    const-string p1, ""

    return-object p1
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->e:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    return-object p1

    :cond_7
    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    if-ne v0, p1, :cond_e

    iget-object p1, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    return-object p1

    :cond_e
    const-string p1, ""

    return-object p1
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/cmic/sso/sdk/b/b$b;->f:I

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x2

    return v0

    :cond_22
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/b$b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    return v0

    :cond_45
    :goto_45
    const/4 v0, 0x1

    return v0
.end method
