.class Lcom/umeng/analytics/pro/bd$a;
.super Lcom/umeng/analytics/pro/cc;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/analytics/pro/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bd$1;)V
    .registers 2

    .line 215
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bd$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 220
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 224
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 226
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bn;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1c

    .line 228
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 231
    :cond_1c
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    .line 235
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    .line 236
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 241
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->a()Lcom/umeng/analytics/pro/ba;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 244
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->d()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 245
    iget-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bd;->c(Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 246
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/bs;)V

    .line 247
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 249
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void

    .line 242
    :cond_29
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1
.end method
