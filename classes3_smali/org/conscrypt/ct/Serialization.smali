.class public Lorg/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    int-to-byte p0, p0

    return p0

    .line 169
    :cond_9
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    const-string v0, "Premature end of input, could not read byte."

    invoke-direct {p0, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    move-exception p0

    .line 173
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v0, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    .line 46
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_18

    and-int/lit16 v0, v0, -0x81

    .line 48
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 53
    :cond_18
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 43
    :cond_1d
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readDEROctetString([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    if-ltz p1, :cond_2c

    .line 109
    :try_start_2
    new-array v0, p1, [B

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-lt p0, p1, :cond_b

    return-object v0

    .line 112
    :cond_b
    new-instance v0, Lorg/conscrypt/ct/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of input, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only read "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2a
    move-exception p0

    goto :goto_43

    .line 106
    :cond_2c
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_43} :catch_2a

    .line 117
    :goto_43
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 73
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    :goto_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_1c

    .line 76
    invoke-static {p1, p2}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_29

    goto :goto_e

    .line 81
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    :catch_29
    move-exception p0

    .line 79
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readList([BII)[[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object p0

    return-object p0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/16 v0, 0x8

    if-gt p1, v0, :cond_18

    if-ltz p1, :cond_18

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, p1, :cond_17

    shl-long/2addr v1, v0

    .line 155
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-wide v1

    .line 150
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    const/4 v0, 0x4

    if-gt p1, v0, :cond_16

    if-ltz p1, :cond_16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v0, p1, :cond_15

    shl-int/lit8 v1, v1, 0x8

    .line 135
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return v1

    .line 130
    :cond_16
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result p1

    .line 94
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 200
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    if-ltz p3, :cond_5e

    const/16 v0, 0x8

    if-ge p3, v0, :cond_34

    const-wide/16 v0, 0x1

    mul-int/lit8 v2, p3, 0x8

    shl-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gez v2, :cond_10

    goto :goto_34

    .line 218
    :cond_10
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number too large, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " does not fit in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    if-lez p3, :cond_5d

    add-int/lit8 v0, p3, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x40

    cmp-long v4, v0, v2

    if-gez v4, :cond_4f

    long-to-int v1, v0

    shr-long v0, p1, v1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 227
    :try_start_4b
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_53

    :cond_4f
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_56

    :goto_53
    add-int/lit8 p3, p3, -0x1

    goto :goto_34

    :catch_56
    move-exception p0

    .line 235
    new-instance p1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {p1, p0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5d
    return-void

    .line 215
    :cond_5e
    new-instance p0, Lorg/conscrypt/ct/SerializationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Negative width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .line 187
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lorg/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 188
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method
