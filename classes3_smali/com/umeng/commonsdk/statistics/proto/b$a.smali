.class Lcom/umeng/commonsdk/statistics/proto/b$a;
.super Lcom/umeng/analytics/pro/cc;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/commonsdk/statistics/proto/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V
    .registers 2

    .line 351
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b$a;-><init>()V

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

    .line 351
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 358
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 359
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_54

    .line 392
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 396
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->g()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 400
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->k()V

    return-void

    .line 401
    :cond_1e
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_39
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_54
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_87

    const/4 v3, 0x2

    if-eq v0, v3, :cond_75

    const/4 v3, 0x3

    if-eq v0, v3, :cond_63

    .line 388
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_98

    :cond_63
    const/16 v0, 0x8

    if-ne v1, v0, :cond_71

    .line 381
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 382
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    goto :goto_98

    .line 384
    :cond_71
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_98

    :cond_75
    const/16 v0, 0xa

    if-ne v1, v0, :cond_83

    .line 373
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 374
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    goto :goto_98

    .line 376
    :cond_83
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_98

    :cond_87
    const/16 v0, 0xb

    if-ne v1, v0, :cond_95

    .line 365
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/b;->a(Z)V

    goto :goto_98

    .line 368
    :cond_95
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 390
    :goto_98
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    goto/16 :goto_3
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 351
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/b$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 409
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/b;->k()V

    .line 411
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->l()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 412
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 413
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->m()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 414
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 417
    :cond_1d
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->n()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 418
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bs;->a(J)V

    .line 419
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 420
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/b;->o()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 421
    iget p2, p2, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 422
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 424
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method
