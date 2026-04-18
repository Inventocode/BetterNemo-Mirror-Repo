.class public Lcom/codemao/midi/sun/RIFFReader;
.super Ljava/io/InputStream;
.source "RIFFReader.java"


# instance fields
.field private avail:J

.field private ckSize:J

.field private filepointer:J

.field private fourcc:Ljava/lang/String;

.field private lastiterator:Lcom/codemao/midi/sun/RIFFReader;

.field private riff_type:Ljava/lang/String;

.field private root:Lcom/codemao/midi/sun/RIFFReader;

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Lcom/codemao/midi/sun/RIFFReader;->riff_type:Ljava/lang/String;

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->ckSize:J

    .line 45
    iput-object v2, p0, Lcom/codemao/midi/sun/RIFFReader;->lastiterator:Lcom/codemao/midi/sun/RIFFReader;

    .line 49
    instance-of v3, p1, Lcom/codemao/midi/sun/RIFFReader;

    if-eqz v3, :cond_1a

    .line 50
    move-object v3, p1

    check-cast v3, Lcom/codemao/midi/sun/RIFFReader;

    iget-object v3, v3, Lcom/codemao/midi/sun/RIFFReader;->root:Lcom/codemao/midi/sun/RIFFReader;

    iput-object v3, p0, Lcom/codemao/midi/sun/RIFFReader;->root:Lcom/codemao/midi/sun/RIFFReader;

    goto :goto_1c

    .line 52
    :cond_1a
    iput-object p0, p0, Lcom/codemao/midi/sun/RIFFReader;->root:Lcom/codemao/midi/sun/RIFFReader;

    .line 54
    :goto_1c
    iput-object p1, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    const-wide/32 v3, 0x7fffffff

    .line 55
    iput-wide v3, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    .line 56
    iput-wide v3, p0, Lcom/codemao/midi/sun/RIFFReader;->ckSize:J

    .line 61
    :cond_25
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_35

    const-string p1, ""

    .line 63
    iput-object p1, p0, Lcom/codemao/midi/sun/RIFFReader;->fourcc:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/codemao/midi/sun/RIFFReader;->riff_type:Ljava/lang/String;

    .line 67
    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    return-void

    :cond_35
    if-eqz p1, :cond_25

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x3

    .line 76
    invoke-virtual {p0, v1, p1, v2}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    .line 77
    new-instance p1, Ljava/lang/String;

    const-string v2, "ascii"

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/midi/sun/RIFFReader;->fourcc:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/codemao/midi/sun/RIFFReader;->ckSize:J

    .line 80
    iput-wide v3, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    .line 82
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RIFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    :cond_6c
    new-array p1, v0, [B

    .line 84
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/RIFFReader;->readFully([B)V

    .line 85
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->riff_type:Ljava/lang/String;

    :cond_78
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 203
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    long-to-int v1, v0

    return v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->finish()V

    .line 328
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->root:Lcom/codemao/midi/sun/RIFFReader;

    if-ne p0, v0, :cond_c

    .line 329
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    return-void
.end method

.method public finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->skipBytes(J)J

    :cond_b
    return-void
.end method

.method public getFilePointer()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->root:Lcom/codemao/midi/sun/RIFFReader;

    iget-wide v0, v0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->fourcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->ckSize:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->riff_type:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextChunk()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->lastiterator:Lcom/codemao/midi/sun/RIFFReader;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->finish()V

    .line 96
    :cond_7
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public nextChunk()Lcom/codemao/midi/sun/RIFFReader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->lastiterator:Lcom/codemao/midi/sun/RIFFReader;

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->finish()V

    .line 102
    :cond_7
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_11
    new-instance v0, Lcom/codemao/midi/sun/RIFFReader;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->lastiterator:Lcom/codemao/midi/sun/RIFFReader;

    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_a

    return v2

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_13

    return v2

    .line 126
    :cond_13
    iget-wide v1, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    .line 127
    iget-wide v1, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    return v0
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_a

    return v4

    :cond_a
    int-to-long v5, p3

    cmp-long v7, v5, v0

    if-lez v7, :cond_21

    .line 135
    iget-object p3, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v4, :cond_1e

    .line 137
    iget-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    .line 138
    :cond_1e
    iput-wide v2, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    return p1

    .line 141
    :cond_21
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_2a

    return v4

    .line 144
    :cond_2a
    iget-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    .line 145
    iget-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    return p1
.end method

.method public readByte()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v0

    if-ltz v0, :cond_8

    int-to-byte v0, v0

    return v0

    .line 228
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readFully([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_19

    :goto_2
    if-lez p3, :cond_18

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/midi/sun/RIFFReader;->read([BII)I

    move-result v0

    if-ltz v0, :cond_12

    if-nez v0, :cond_f

    .line 162
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_f
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_2

    .line 160
    :cond_12
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_18
    return-void

    .line 156
    :cond_19
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v1

    if-ltz v0, :cond_17

    if-ltz v1, :cond_11

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 239
    :cond_11
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 237
    :cond_17
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-array v0, p1, [B

    .line 215
    invoke-virtual {p0, v0}, Lcom/codemao/midi/sun/RIFFReader;->readFully([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const-string v3, "ascii"

    if-ge v2, p1, :cond_18

    .line 217
    aget-byte v4, v0, v2

    if-nez v4, :cond_15

    .line 218
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object p1

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 221
    :cond_18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 294
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedInt()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v0

    int-to-long v0, v0

    .line 312
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v2

    int-to-long v2, v2

    .line 313
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v4

    int-to-long v4, v4

    .line 314
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-ltz v10, :cond_47

    cmp-long v10, v2, v8

    if-ltz v10, :cond_41

    cmp-long v10, v4, v8

    if-ltz v10, :cond_3b

    cmp-long v10, v6, v8

    if-ltz v10, :cond_35

    const/16 v8, 0x8

    shl-long/2addr v2, v8

    add-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    return-wide v0

    .line 322
    :cond_35
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 320
    :cond_3b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 318
    :cond_41
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 316
    :cond_47
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v0

    .line 301
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->read()I

    move-result v1

    if-ltz v0, :cond_16

    if-ltz v1, :cond_10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0

    .line 305
    :cond_10
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 303
    :cond_16
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_b

    return-wide v4

    :cond_b
    cmp-long v6, p1, v0

    if-lez v6, :cond_21

    .line 187
    iget-object p1, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1e

    .line 189
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    .line 190
    :cond_1e
    iput-wide v2, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    return-wide p1

    .line 193
    :cond_21
    iget-object v0, p0, Lcom/codemao/midi/sun/RIFFReader;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-nez v0, :cond_2c

    return-wide v4

    .line 196
    :cond_2c
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->avail:J

    .line 197
    iget-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/codemao/midi/sun/RIFFReader;->filepointer:J

    return-wide p1
.end method

.method public final skipBytes(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    :cond_7
    move-wide v2, v0

    :goto_8
    cmp-long v4, v2, p1

    if-eqz v4, :cond_1e

    sub-long v4, p1, v2

    .line 173
    invoke-virtual {p0, v4, v5}, Lcom/codemao/midi/sun/RIFFReader;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_17

    goto :goto_1e

    :cond_17
    if-nez v6, :cond_1c

    .line 177
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_1c
    add-long/2addr v2, v4

    goto :goto_8

    :cond_1e
    :goto_1e
    return-wide v2
.end method
