.class Lcom/umeng/commonsdk/statistics/proto/a$a;
.super Lcom/umeng/analytics/pro/cc;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 411
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V
    .registers 2

    .line 411
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a$a;-><init>()V

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

    .line 411
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 418
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 419
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_33

    .line 460
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 464
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->m()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 468
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->n()V

    return-void

    .line 465
    :cond_18
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_33
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v0, v3, :cond_79

    const/4 v4, 0x2

    if-eq v0, v4, :cond_69

    const/4 v4, 0x3

    if-eq v0, v4, :cond_59

    const/4 v2, 0x4

    if-eq v0, v2, :cond_47

    .line 456
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_88

    :cond_47
    const/16 v0, 0xa

    if-ne v1, v0, :cond_55

    .line 449
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 450
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    goto :goto_88

    .line 452
    :cond_55
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_88

    :cond_59
    if-ne v1, v2, :cond_65

    .line 441
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 442
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->c(Z)V

    goto :goto_88

    .line 444
    :cond_65
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_88

    :cond_69
    if-ne v1, v2, :cond_75

    .line 433
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 434
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->b(Z)V

    goto :goto_88

    .line 436
    :cond_75
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_88

    :cond_79
    if-ne v1, v2, :cond_85

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 426
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->a(Z)V

    goto :goto_88

    .line 428
    :cond_85
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 458
    :goto_88
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

    .line 411
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 473
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->n()V

    .line 475
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->o()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 476
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 477
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->p()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 478
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 481
    :cond_1d
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 482
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 483
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->q()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 484
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 488
    :cond_36
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 489
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->r()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 490
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 493
    :cond_49
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->s()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 494
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bs;->a(J)V

    .line 495
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 496
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 497
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method
