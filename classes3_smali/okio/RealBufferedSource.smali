.class public final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.kt"

# interfaces
.implements Lokio/BufferedSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,469:1\n32#1:470\n32#1:471\n32#1:472\n32#1:473\n32#1:474\n32#1:475\n32#1:476\n32#1:477\n32#1:478\n32#1:479\n32#1:480\n32#1:481\n32#1:482\n32#1:483\n32#1:484\n32#1:485\n32#1:486\n32#1:487\n32#1:488\n32#1:489\n32#1:490\n32#1:491\n32#1:492\n32#1:493\n32#1:494\n32#1:496\n32#1:497\n32#1:498\n32#1:499\n32#1:500\n32#1:501\n32#1:502\n32#1:503\n32#1:504\n32#1:505\n32#1:506\n32#1:507\n32#1:508\n32#1:509\n32#1:510\n32#1:511\n32#1:512\n32#1:513\n32#1:514\n32#1:515\n32#1:516\n32#1:517\n32#1:518\n32#1:519\n32#1:520\n32#1:521\n32#1:522\n32#1:523\n32#1:525\n32#1:526\n32#1:527\n32#1:528\n32#1:529\n32#1:530\n32#1:531\n32#1:532\n32#1:533\n32#1:534\n32#1:535\n32#1:536\n32#1:537\n32#1:538\n32#1:539\n32#1:540\n32#1:541\n32#1:542\n32#1:543\n32#1:544\n32#1:545\n32#1:546\n32#1:547\n32#1:548\n32#1:549\n32#1:550\n32#1:551\n32#1:552\n75#2:495\n75#2:524\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n40#1:470\n41#1:471\n45#1:472\n46#1:473\n51#1:474\n51#1:475\n61#1:476\n62#1:477\n69#1:478\n73#1:479\n74#1:480\n79#1:481\n86#1:482\n93#1:483\n98#1:484\n106#1:485\n107#1:486\n112#1:487\n123#1:488\n124#1:489\n124#1:490\n131#1:491\n137#1:492\n138#1:493\n142#1:494\n143#1:496\n147#1:497\n148#1:498\n152#1:499\n160#1:500\n164#1:501\n169#1:502\n170#1:503\n173#1:504\n176#1:505\n177#1:506\n178#1:507\n178#1:508\n184#1:509\n185#1:510\n190#1:511\n194#1:512\n195#1:513\n200#1:514\n207#1:515\n208#1:516\n213#1:517\n223#1:518\n225#1:519\n226#1:520\n227#1:521\n230#1:522\n230#1:523\n231#1:525\n238#1:526\n245#1:527\n250#1:528\n255#1:529\n260#1:530\n265#1:531\n270#1:532\n275#1:533\n283#1:534\n295#1:535\n303#1:536\n317#1:537\n324#1:538\n324#1:539\n327#1:540\n328#1:541\n343#1:542\n348#1:543\n349#1:544\n364#1:545\n367#1:546\n368#1:547\n382#1:548\n385#1:549\n386#1:550\n413#1:551\n462#1:552\n142#1:495\n230#1:524\n*E\n"
.end annotation


# instance fields
.field public final bufferField:Lokio/Buffer;

.field public closed:Z

.field public final source:Lokio/Source;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 27
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 2

    .line 34
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2

    .line 459
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 461
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 462
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-void
.end method

.method public exhausted()Z
    .registers 7

    .line 50
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_22

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 51
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v3, 0x2000

    int-to-long v3, v3

    .line 51
    invoke-interface {v0, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    .line 50
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBuffer()Lokio/Buffer;
    .registers 2

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    return-object v0
.end method

.method public indexOf(B)J
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .line 333
    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .registers 14

    .line 339
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6c

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p2

    if-lez v0, :cond_d

    goto :goto_12

    :cond_d
    cmp-long v0, p4, p2

    if-ltz v0, :cond_12

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_49

    :goto_15
    const-wide/16 v0, -0x1

    cmp-long v2, p2, p4

    if-gez v2, :cond_48

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 343
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_29

    return-wide v2

    .line 32
    :cond_29
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p4

    if-gez v4, :cond_48

    .line 349
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 349
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_43

    goto :goto_48

    .line 352
    :cond_43
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_15

    :cond_48
    :goto_48
    return-wide v0

    .line 340
    :cond_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fromIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " toIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 339
    :cond_6c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 12

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    .line 32
    :goto_b
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 364
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    return-wide v0

    .line 32
    :cond_18
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 368
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 368
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2e

    return-wide v2

    .line 371
    :cond_2e
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_b

    .line 361
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 375
    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 12

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    .line 32
    :goto_b
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 382
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    return-wide v0

    .line 32
    :cond_18
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 386
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 386
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2e

    return-wide v2

    .line 389
    :cond_2e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_b

    .line 379
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 423
    new-instance v0, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public peek()Lokio/BufferedSource;
    .registers 2

    .line 419
    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    .line 148
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 148
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_24

    const/4 p1, -0x1

    return p1

    .line 32
    :cond_24
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 152
    invoke-virtual {v0, p1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_4f

    .line 38
    iget-boolean v3, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_43

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_32

    .line 41
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 41
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    return-wide v2

    .line 32
    :cond_32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 45
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    .line 38
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readAll(Lokio/Sink;)J
    .registers 11

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 169
    :cond_8
    :goto_8
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v6, 0x2000

    int-to-long v6, v6

    .line 169
    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2a

    .line 32
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 170
    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_8

    add-long/2addr v2, v4

    .line 32
    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 173
    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_8

    .line 32
    :cond_2a
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_44

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 178
    invoke-interface {p1, v0, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_44
    return-wide v2
.end method

.method public readByte()B
    .registers 3

    const-wide/16 v0, 0x1

    .line 68
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 69
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 106
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 107
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4

    .line 111
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 112
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p1

    return-object p1
.end method

.method public readByteString()Lokio/ByteString;
    .registers 3

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 73
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 74
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 4

    .line 78
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 79
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readDecimalLong()J
    .registers 11

    const-wide/16 v0, 0x1

    .line 279
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_8
    add-long v6, v4, v0

    .line 282
    invoke-virtual {p0, v6, v7}, Lokio/RealBufferedSource;->request(J)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 32
    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 283
    invoke-virtual {v8, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0x30

    int-to-byte v9, v9

    if-lt v8, v9, :cond_20

    const/16 v9, 0x39

    int-to-byte v9, v9

    if-le v8, v9, :cond_2a

    :cond_20
    cmp-long v9, v4, v2

    if-nez v9, :cond_2c

    const/16 v4, 0x2d

    int-to-byte v4, v4

    if-eq v8, v4, :cond_2a

    goto :goto_2c

    :cond_2a
    move-wide v4, v6

    goto :goto_8

    :cond_2c
    :goto_2c
    if-eqz v9, :cond_2f

    goto :goto_50

    .line 287
    :cond_2f
    new-instance v0, Ljava/lang/NumberFormatException;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 288
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    .line 287
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_50
    :goto_50
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 295
    invoke-virtual {v0}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_e

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_e
    move-exception p2

    .line 32
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 160
    invoke-virtual {p1, p3}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 161
    throw p2
.end method

.method public readFully([B)V
    .registers 9

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :try_start_5
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_a} :catch_10

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 131
    invoke-virtual {v0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    .line 32
    :goto_12
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_34

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 32
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v4, v3

    .line 124
    invoke-virtual {v2, p1, v1, v4}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    add-int/2addr v1, v2

    goto :goto_12

    .line 125
    :cond_2e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 128
    :cond_34
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7

    const-wide/16 v0, 0x1

    .line 299
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 302
    invoke-virtual {p0, v3, v4}, Lokio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 32
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v4, v1

    .line 303
    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    int-to-byte v4, v4

    if-lt v3, v4, :cond_21

    const/16 v4, 0x39

    int-to-byte v4, v4

    if-le v3, v4, :cond_36

    :cond_21
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v3, v4, :cond_2b

    const/16 v4, 0x66

    int-to-byte v4, v4

    if-le v3, v4, :cond_36

    :cond_2b
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v3, v4, :cond_38

    const/16 v4, 0x46

    int-to-byte v4, v4

    if-le v3, v4, :cond_36

    goto :goto_38

    :cond_36
    move v1, v2

    goto :goto_7

    :cond_38
    :goto_38
    if-eqz v1, :cond_3b

    goto :goto_5b

    .line 309
    :cond_3b
    new-instance v1, Ljava/lang/NumberFormatException;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 310
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v0

    .line 309
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 317
    invoke-virtual {v0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 3

    const-wide/16 v0, 0x4

    .line 259
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 260
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3

    const-wide/16 v0, 0x4

    .line 264
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 265
    invoke-virtual {v0}, Lokio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    const-wide/16 v0, 0x8

    .line 269
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 270
    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3

    const-wide/16 v0, 0x2

    .line 249
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 250
    invoke-virtual {v0}, Lokio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3

    const-wide/16 v0, 0x2

    .line 254
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 255
    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 194
    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 195
    invoke-virtual {v0, p1}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    .line 217
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_ae

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_18

    move-wide v4, v2

    goto :goto_1a

    :cond_18
    add-long v4, p1, v0

    :goto_1a
    const/16 v6, 0xa

    int-to-byte v12, v6

    const-wide/16 v8, 0x0

    move-object v6, p0

    move v7, v12

    move-wide v10, v4

    .line 222
    invoke-virtual/range {v6 .. v11}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_33

    .line 32
    iget-object p1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 223
    invoke-virtual {p1, v6, v7}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    cmp-long v6, v4, v2

    if-gez v6, :cond_60

    .line 225
    invoke-virtual {p0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    sub-long v6, v4, v0

    .line 225
    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_60

    add-long/2addr v0, v4

    .line 226
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 226
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v0

    if-ne v0, v12, :cond_60

    .line 32
    iget-object p1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 227
    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->readUtf8Line$jvm(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_60
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 32
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const/16 v1, 0x20

    .line 32
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v7, v1

    .line 75
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, v6

    .line 230
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 231
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 231
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "…"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public request(J)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_3b

    .line 60
    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/2addr v2, v1

    if-eqz v2, :cond_2f

    .line 32
    :cond_12
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_2e

    .line 62
    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 62
    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_12

    return v0

    :cond_2e
    return v1

    .line 60
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public require(J)V
    .registers 3

    .line 55
    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Lokio/Options;)I
    .registers 10

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3b

    .line 32
    :cond_b
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 86
    invoke-virtual {v0, p1, v1}, Lokio/Buffer;->selectPrefix$jvm(Lokio/Options;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_29

    if-eq v0, v3, :cond_28

    .line 97
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$jvm()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    .line 32
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v2, p1

    .line 98
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    return v0

    :cond_28
    return v3

    .line 93
    :cond_29
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v4, 0x2000

    int-to-long v4, v4

    .line 93
    invoke-interface {v0, v2, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    return v3

    .line 83
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)V
    .registers 8

    .line 322
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    :goto_6
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_2e

    .line 324
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 32
    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const/16 v2, 0x2000

    int-to-long v2, v2

    .line 324
    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    goto :goto_2e

    .line 325
    :cond_28
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 32
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 327
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 328
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_6

    :cond_3f
    return-void

    .line 322
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 465
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
