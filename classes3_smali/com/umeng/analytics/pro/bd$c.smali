.class Lcom/umeng/analytics/pro/bd$c;
.super Lcom/umeng/analytics/pro/cd;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cd<",
        "Lcom/umeng/analytics/pro/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bd$1;)V
    .registers 2

    .line 259
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bd$c;-><init>()V

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

    .line 259
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$c;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    .line 264
    iput-object v0, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    .line 265
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->v()S

    move-result v0

    .line 266
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bd;->a(Lcom/umeng/analytics/pro/bs;S)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bd;->a:Ljava/lang/Object;

    if-eqz p1, :cond_17

    .line 268
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bd;->a(S)Lcom/umeng/analytics/pro/ba;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    :cond_17
    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 259
    check-cast p2, Lcom/umeng/analytics/pro/bd;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bd$c;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/bd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 274
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->a()Lcom/umeng/analytics/pro/ba;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bd;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 277
    iget-object v0, p2, Lcom/umeng/analytics/pro/bd;->b:Lcom/umeng/analytics/pro/ba;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/ba;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(S)V

    .line 278
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bd;->b(Lcom/umeng/analytics/pro/bs;)V

    return-void

    .line 275
    :cond_19
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1
.end method
