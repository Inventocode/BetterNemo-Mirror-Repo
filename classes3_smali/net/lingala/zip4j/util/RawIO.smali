.class public Lnet/lingala/zip4j/util/RawIO;
.super Ljava/lang/Object;
.source "RawIO.java"


# instance fields
.field private final intBuff:[B

.field private final longBuff:[B

.field private final shortBuff:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 29
    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 31
    iput-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    return-void
.end method

.method private readFully(Ljava/io/InputStream;[BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, p2, v0, p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ne p1, p3, :cond_8

    return-void

    .line 156
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not fill buffer"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resetBytes([B)V
    .registers 3

    const/4 v0, 0x0

    .line 161
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public readIntLittleEndian(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 87
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result p1

    return p1
.end method

.method public readIntLittleEndian(Ljava/io/RandomAccessFile;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 82
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->intBuff:[B

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([B)I

    move-result p1

    return p1
.end method

.method public readIntLittleEndian([B)I
    .registers 3

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result p1

    return p1
.end method

.method public readIntLittleEndian([BI)I
    .registers 5

    .line 95
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    return p1
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v1, v0

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 46
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/InputStream;I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 51
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 52
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public readLongLittleEndian(Ljava/io/RandomAccessFile;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 35
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLittleEndian(Ljava/io/RandomAccessFile;I)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 40
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 41
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-virtual {p0, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method public readLongLittleEndian([BI)J
    .registers 9

    .line 56
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_b

    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/util/RawIO;->resetBytes([B)V

    .line 59
    :cond_b
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    array-length v2, p1

    if-ge v2, v1, :cond_13

    array-length v2, p1

    sub-int/2addr v2, p2

    goto :goto_15

    :cond_13
    const/16 v2, 0x8

    :goto_15
    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 p1, 0x0

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->longBuff:[B

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x6

    .line 64
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x5

    .line 66
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x4

    .line 68
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x3

    .line 70
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x2

    .line 72
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    const/4 v2, 0x1

    .line 74
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    or-long/2addr p1, v4

    shl-long/2addr p1, v1

    .line 76
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public readShortLittleEndian(Ljava/io/InputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    array-length v1, v0

    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readFully(Ljava/io/InputStream;[BI)V

    .line 106
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p1

    return p1
.end method

.method public readShortLittleEndian(Ljava/io/RandomAccessFile;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 101
    iget-object p1, p0, Lnet/lingala/zip4j/util/RawIO;->shortBuff:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p1

    return p1
.end method

.method public readShortLittleEndian([BI)I
    .registers 4

    .line 110
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method
