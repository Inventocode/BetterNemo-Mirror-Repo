.class Lio/socket/engineio/parser/Buffer;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public static concat([[B)[B
    .registers 5

    .line 344
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_c

    aget-object v3, p0, v1

    .line 345
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 347
    :cond_c
    invoke-static {p0, v2}, Lio/socket/engineio/parser/Buffer;->concat([[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static concat([[BI)[B
    .registers 5

    .line 351
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    new-array p0, v1, [B

    return-object p0

    .line 353
    :cond_7
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 354
    aget-object p0, p0, v1

    return-object p0

    .line 357
    :cond_e
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 358
    array-length v0, p0

    :goto_13
    if-ge v1, v0, :cond_1d

    aget-object v2, p0, v1

    .line 359
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 362
    :cond_1d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
