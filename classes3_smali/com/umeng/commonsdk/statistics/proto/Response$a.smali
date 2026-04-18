.class Lcom/umeng/commonsdk/statistics/proto/Response$a;
.super Lcom/umeng/analytics/pro/cc;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cc<",
        "Lcom/umeng/commonsdk/statistics/proto/Response;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .registers 2

    .line 358
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$a;-><init>()V

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

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 365
    :goto_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    .line 366
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez v1, :cond_33

    .line 400
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->k()V

    .line 404
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetResp_code()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 408
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    return-void

    .line 405
    :cond_18
    new-instance p1, Lcom/umeng/analytics/pro/bt;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_33
    iget-short v0, v0, Lcom/umeng/analytics/pro/bn;->c:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_58

    const/4 v3, 0x3

    if-eq v0, v3, :cond_42

    .line 396
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_7b

    :cond_42
    const/16 v0, 0xc

    if-ne v1, v0, :cond_54

    .line 388
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 389
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->read(Lcom/umeng/analytics/pro/bs;)V

    .line 390
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setImprintIsSet(Z)V

    goto :goto_7b

    .line 392
    :cond_54
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_7b

    :cond_58
    const/16 v0, 0xb

    if-ne v1, v0, :cond_66

    .line 380
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    .line 381
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setMsgIsSet(Z)V

    goto :goto_7b

    .line 383
    :cond_66
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    goto :goto_7b

    :cond_6a
    const/16 v0, 0x8

    if-ne v1, v0, :cond_78

    .line 372
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    .line 373
    invoke-virtual {p2, v2}, Lcom/umeng/commonsdk/statistics/proto/Response;->setResp_codeIsSet(Z)V

    goto :goto_7b

    .line 375
    :cond_78
    invoke-static {p1, v1}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 398
    :goto_7b
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_3
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 358
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/Response;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/Response$a;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/commonsdk/statistics/proto/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 413
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->validate()V

    .line 415
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$300()Lcom/umeng/analytics/pro/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bx;)V

    .line 416
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$400()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 417
    iget v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->resp_code:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(I)V

    .line 418
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 419
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 420
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetMsg()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 421
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$500()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 422
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 426
    :cond_32
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v0, :cond_4b

    .line 427
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/Response;->isSetImprint()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 428
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/Response;->access$600()Lcom/umeng/analytics/pro/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bn;)V

    .line 429
    iget-object p2, p2, Lcom/umeng/commonsdk/statistics/proto/Response;->imprint:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/proto/d;->write(Lcom/umeng/analytics/pro/bs;)V

    .line 430
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->c()V

    .line 433
    :cond_4b
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->d()V

    .line 434
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->b()V

    return-void
.end method
