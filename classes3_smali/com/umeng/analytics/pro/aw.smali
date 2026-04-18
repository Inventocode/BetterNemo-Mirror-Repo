.class public Lcom/umeng/analytics/pro/aw;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/analytics/pro/bs;

.field private final b:Lcom/umeng/analytics/pro/cf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/aw;-><init>(Lcom/umeng/analytics/pro/bu;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/bu;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/cf;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cf;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    .line 58
    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/bu;->a(Lcom/umeng/analytics/pro/cg;)Lcom/umeng/analytics/pro/bs;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    return-void
.end method

.method private varargs a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 241
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/aw;->j([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object p2

    if-eqz p2, :cond_9e

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8f

    const/4 p3, 0x3

    if-eq p1, p3, :cond_80

    const/4 p3, 0x4

    if-eq p1, p3, :cond_71

    const/4 p3, 0x6

    if-eq p1, p3, :cond_62

    const/16 p3, 0x8

    if-eq p1, p3, :cond_53

    const/16 p3, 0x64

    const/16 p4, 0xb

    if-eq p1, p3, :cond_48

    const/16 p3, 0xa

    if-eq p1, p3, :cond_39

    if-eq p1, p4, :cond_24

    goto/16 :goto_9e

    .line 276
    :cond_24
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p4, :cond_9e

    .line 277
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->z()Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_a2
    .catchall {:try_start_0 .. :try_end_2e} :catchall_a0

    .line 291
    :goto_2e
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    return-object p1

    .line 271
    :cond_39
    :try_start_39
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 272
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2e

    .line 281
    :cond_48
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p4, :cond_9e

    .line 282
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->A()Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_2e

    .line 266
    :cond_53
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 267
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2e

    .line 261
    :cond_62
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 262
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->v()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_2e

    .line 256
    :cond_71
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 257
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->y()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_2e

    .line 251
    :cond_80
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 252
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->u()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_2e

    .line 246
    :cond_8f
    iget-byte p1, p2, Lcom/umeng/analytics/pro/bn;->b:B

    if-ne p1, p3, :cond_9e

    .line 247
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->t()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_9d} :catch_a2
    .catchall {:try_start_39 .. :try_end_9d} :catchall_a0

    goto :goto_2e

    :cond_9e
    :goto_9e
    const/4 p1, 0x0

    goto :goto_2e

    :catchall_a0
    move-exception p1

    goto :goto_a9

    :catch_a2
    move-exception p1

    .line 289
    :try_start_a3
    new-instance p2, Lcom/umeng/analytics/pro/az;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a0

    .line 291
    :goto_a9
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 292
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    throw p1
.end method

.method private varargs j([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/cf;->a([B)V

    .line 299
    array-length p1, p3

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [Lcom/umeng/analytics/pro/ba;

    const/4 v1, 0x0

    .line 300
    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 301
    :goto_e
    array-length v2, p3

    if-ge p2, v2, :cond_19

    add-int/lit8 v2, p2, 0x1

    .line 302
    aget-object p2, p3, p2

    aput-object p2, v0, v2

    move p2, v2

    goto :goto_e

    .line 311
    :cond_19
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    const/4 p2, 0x0

    move-object p3, p2

    :cond_20
    :goto_20
    if-ge v1, p1, :cond_59

    .line 314
    iget-object p3, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p3}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object p3

    .line 318
    iget-byte v2, p3, Lcom/umeng/analytics/pro/bn;->b:B

    if-eqz v2, :cond_58

    iget-short v2, p3, Lcom/umeng/analytics/pro/bn;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ba;->a()S

    move-result v3

    if-le v2, v3, :cond_37

    goto :goto_58

    .line 322
    :cond_37
    iget-short v2, p3, Lcom/umeng/analytics/pro/bn;->c:S

    aget-object v3, v0, v1

    invoke-interface {v3}, Lcom/umeng/analytics/pro/ba;->a()S

    move-result v3

    if-eq v2, v3, :cond_4e

    .line 324
    iget-object v2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    iget-byte v3, p3, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;B)V

    .line 325
    iget-object v2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_20

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_20

    .line 330
    iget-object v2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    goto :goto_20

    :cond_58
    :goto_58
    return-object p2

    :cond_59
    return-object p3
.end method


# virtual methods
.method public varargs a([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x2

    .line 127
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public a(Lcom/umeng/analytics/pro/at;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aw;->a(Lcom/umeng/analytics/pro/at;[B)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/at;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aw;->a(Lcom/umeng/analytics/pro/at;[B)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_f
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 91
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->B()V

    return-void

    :catchall_d
    move-exception p1

    goto :goto_26

    .line 89
    :catch_f
    :try_start_f
    new-instance p1, Lcom/umeng/analytics/pro/az;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_d

    .line 91
    :goto_26
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/at;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/pro/cf;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/at;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_15

    .line 72
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 73
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->B()V

    return-void

    :catchall_15
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 73
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    throw p1
.end method

.method public varargs a(Lcom/umeng/analytics/pro/at;[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/umeng/analytics/pro/aw;->j([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 108
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-interface {p1, p2}, Lcom/umeng/analytics/pro/at;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_18
    .catchall {:try_start_0 .. :try_end_b} :catchall_16

    .line 113
    :cond_b
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 114
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->B()V

    return-void

    :catchall_16
    move-exception p1

    goto :goto_1f

    :catch_18
    move-exception p1

    .line 111
    :try_start_19
    new-instance p2, Lcom/umeng/analytics/pro/az;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    .line 113
    :goto_1f
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 114
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    throw p1
.end method

.method public varargs b([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Byte;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x3

    .line 139
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public varargs c([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Double;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x4

    .line 151
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public varargs d([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Short;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x6

    .line 163
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public varargs e([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0x8

    .line 175
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public varargs f([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Long;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0xa

    .line 187
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public varargs g([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0xb

    .line 199
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public varargs h([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0x64

    .line 212
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->a(B[BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public varargs i([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Ljava/lang/Short;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 225
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/aw;->j([BLcom/umeng/analytics/pro/ba;[Lcom/umeng/analytics/pro/ba;)Lcom/umeng/analytics/pro/bn;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 227
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 228
    iget-object p1, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object p1

    iget-short p1, p1, Lcom/umeng/analytics/pro/bn;->c:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_26
    .catchall {:try_start_0 .. :try_end_17} :catchall_24

    .line 234
    :goto_17
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    return-object p1

    :cond_22
    const/4 p1, 0x0

    goto :goto_17

    :catchall_24
    move-exception p1

    goto :goto_2d

    :catch_26
    move-exception p1

    .line 232
    :try_start_27
    new-instance p2, Lcom/umeng/analytics/pro/az;

    invoke-direct {p2, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 234
    :goto_2d
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->b:Lcom/umeng/analytics/pro/cf;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/cf;->e()V

    .line 235
    iget-object p2, p0, Lcom/umeng/analytics/pro/aw;->a:Lcom/umeng/analytics/pro/bs;

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bs;->B()V

    throw p1
.end method
