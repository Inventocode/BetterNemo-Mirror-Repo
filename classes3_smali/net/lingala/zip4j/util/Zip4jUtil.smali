.class public Lnet/lingala/zip4j/util/Zip4jUtil;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# direct methods
.method public static convertCharArrayToByteArray([C)[B
    .registers 4

    .line 102
    :try_start_0
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 104
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 107
    :catch_14
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 108
    :goto_18
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 109
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    return-object v0
.end method

.method public static createDirectoryIfNotExists(Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_1d

    .line 46
    :cond_f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output directory is not valid"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1f

    :goto_1d
    const/4 p0, 0x1

    return p0

    .line 50
    :cond_1f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Cannot create output directories"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_27
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output path is null"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dosToEpochTime(J)J
    .registers 11

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const-wide/16 v2, 0x3e

    and-long/2addr v0, v2

    long-to-int v8, v0

    const/4 v0, 0x5

    shr-long v0, p0, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v7, v0

    const/16 v0, 0xb

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    long-to-int v6, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v5, v0

    const/16 v0, 0x15

    shr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v4, v0

    const/16 v0, 0x19

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    const-wide/16 v0, 0x7bc

    add-long/2addr p0, v0

    long-to-int v3, p0

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    move-object v2, p0

    .line 95
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p1, 0xe

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static dosToExtendedEpochTme(J)J
    .registers 5

    .line 82
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToEpochTime(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getCompressionMethod(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 3

    .line 116
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_d

    .line 117
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p0

    return-object p0

    .line 120
    :cond_d
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 124
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p0

    return-object p0

    .line 121
    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isStringNotNullAndNotEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 131
    array-length v1, p1

    if-eq v0, v1, :cond_17

    .line 132
    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readUntilBufferIsFull(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 134
    array-length p0, p1

    if-ne v0, p0, :cond_f

    goto :goto_17

    .line 135
    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read fully into byte buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_31

    if-ltz p3, :cond_29

    const/4 v0, 0x0

    if-nez p3, :cond_8

    return v0

    :cond_8
    add-int v1, p2, p3

    .line 157
    array-length v2, p1

    if-gt v1, v2, :cond_21

    :goto_d
    if-eq v0, p3, :cond_20

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 162
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    if-nez v0, :cond_1d

    return v2

    :cond_1d
    return v0

    :cond_1e
    add-int/2addr v0, v1

    goto :goto_d

    :cond_20
    return v0

    .line 158
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length greater than buffer size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative offset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readUntilBufferIsFull(Ljava/io/InputStream;[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    :goto_4
    array-length v3, p1

    if-ge p2, v3, :cond_19

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/16 v2, 0xf

    if-ge v1, v2, :cond_19

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_16

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return p2
.end method
