.class public final Lio/socket/utf8/UTF8;
.super Ljava/lang/Object;
.source "UTF8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/utf8/UTF8$Options;
    }
.end annotation


# static fields
.field private static byteArray:[I

.field private static byteCount:I

.field private static byteIndex:I


# direct methods
.method private static checkScalarValue(IZ)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const v0, 0xd800

    if-lt p0, v0, :cond_32

    const v0, 0xdfff

    if-gt p0, v0, :cond_32

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 177
    :cond_e
    new-instance p1, Lio/socket/utf8/UTF8Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lone surrogate U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a scalar value"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method private static createByte(II)[C
    .registers 2

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    .line 92
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 44
    iget-boolean p1, p1, Lio/socket/utf8/UTF8$Options;->strict:Z

    .line 46
    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object p0

    sput-object p0, Lio/socket/utf8/UTF8;->byteArray:[I

    .line 47
    array-length p0, p0

    sput p0, Lio/socket/utf8/UTF8;->byteCount:I

    const/4 p0, 0x0

    .line 48
    sput p0, Lio/socket/utf8/UTF8;->byteIndex:I

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :goto_13
    invoke-static {p1}, Lio/socket/utf8/UTF8;->decodeSymbol(Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 54
    :cond_22
    invoke-static {p0}, Lio/socket/utf8/UTF8;->listToArray(Ljava/util/List;)[I

    move-result-object p0

    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2encode([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeSymbol(Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 102
    sget v0, Lio/socket/utf8/UTF8;->byteIndex:I

    sget v1, Lio/socket/utf8/UTF8;->byteCount:I

    if-gt v0, v1, :cond_8d

    if-ne v0, v1, :cond_a

    const/4 p0, -0x1

    return p0

    .line 110
    :cond_a
    sget-object v1, Lio/socket/utf8/UTF8;->byteArray:[I

    aget v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 111
    sput v0, Lio/socket/utf8/UTF8;->byteIndex:I

    and-int/lit16 v0, v1, 0x80

    if-nez v0, :cond_19

    return v1

    :cond_19
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    const-string v3, "Invalid continuation byte"

    if-ne v0, v2, :cond_35

    .line 118
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result p0

    and-int/lit8 v0, v1, 0x1f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p0, v0

    const/16 v0, 0x80

    if-lt p0, v0, :cond_2f

    return p0

    .line 123
    :cond_2f
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    and-int/lit16 v0, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_60

    .line 128
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v0

    .line 129
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    const/16 v1, 0x800

    if-lt v0, v1, :cond_5a

    .line 132
    invoke-static {v0, p0}, Lio/socket/utf8/UTF8;->checkScalarValue(IZ)Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_59

    :cond_56
    const v0, 0xfffd

    :goto_59
    return v0

    .line 134
    :cond_5a
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    and-int/lit16 p0, v1, 0xf8

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_87

    .line 139
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result p0

    .line 140
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v0

    .line 141
    invoke-static {}, Lio/socket/utf8/UTF8;->readContinuationByte()I

    move-result v2

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x12

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p0, v0

    or-int/2addr p0, v2

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_87

    const v0, 0x10ffff

    if-gt p0, v0, :cond_87

    return p0

    .line 148
    :cond_87
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    invoke-direct {p0, v3}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_8d
    new-instance p0, Lio/socket/utf8/UTF8Exception;

    const-string v0, "Invalid byte index"

    invoke-direct {p0, v0}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 25
    iget-boolean p1, p1, Lio/socket/utf8/UTF8$Options;->strict:Z

    .line 27
    invoke-static {p0}, Lio/socket/utf8/UTF8;->ucs2decode(Ljava/lang/String;)[I

    move-result-object p0

    .line 28
    array-length v0, p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    :goto_d
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1b

    .line 33
    aget v3, p0, v2

    .line 34
    invoke-static {v3, p1}, Lio/socket/utf8/UTF8;->encodeCodePoint(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 36
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeCodePoint(IZ)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, -0x80

    if-nez v1, :cond_15

    .line 72
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    and-int/lit16 v1, p0, -0x800

    if-nez v1, :cond_27

    shr-int/lit8 p1, p0, 0x6

    and-int/lit8 p1, p1, 0x1f

    or-int/lit16 p1, p1, 0xc0

    .line 75
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_27
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    const/4 v2, 0x6

    if-nez v1, :cond_4b

    .line 77
    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->checkScalarValue(IZ)Z

    move-result p1

    if-nez p1, :cond_36

    const p0, 0xfffd

    :cond_36
    shr-int/lit8 p1, p0, 0xc

    and-int/lit8 p1, p1, 0xf

    or-int/lit16 p1, p1, 0xe0

    .line 80
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p0, v2}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_4b
    const/high16 p1, -0x200000

    and-int/2addr p1, p0

    if-nez p1, :cond_6d

    shr-int/lit8 p1, p0, 0x12

    and-int/lit8 p1, p1, 0x7

    or-int/lit16 p1, p1, 0xf0

    .line 83
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 p1, 0xc

    .line 84
    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p0, v2}, Lio/socket/utf8/UTF8;->createByte(II)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_6d
    :goto_6d
    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    .line 87
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static listToArray(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 191
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method

.method private static readContinuationByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 152
    sget v0, Lio/socket/utf8/UTF8;->byteIndex:I

    sget v1, Lio/socket/utf8/UTF8;->byteCount:I

    if-ge v0, v1, :cond_21

    .line 156
    sget-object v1, Lio/socket/utf8/UTF8;->byteArray:[I

    aget v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    .line 157
    sput v0, Lio/socket/utf8/UTF8;->byteIndex:I

    and-int/lit16 v0, v1, 0xc0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_19

    and-int/lit8 v0, v1, 0x3f

    return v0

    .line 163
    :cond_19
    new-instance v0, Lio/socket/utf8/UTF8Exception;

    const-string v1, "Invalid continuation byte"

    invoke-direct {v0, v1}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_21
    new-instance v0, Lio/socket/utf8/UTF8Exception;

    const-string v1, "Invalid byte index"

    invoke-direct {v0, v1}, Lio/socket/utf8/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ucs2decode(Ljava/lang/String;)[I
    .registers 7

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_c
    if-ge v1, v0, :cond_1d

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 64
    aput v4, v2, v3

    .line 62
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v5

    goto :goto_c

    :cond_1d
    return-object v2
.end method

.method private static ucs2encode([I)Ljava/lang/String;
    .registers 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 171
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
