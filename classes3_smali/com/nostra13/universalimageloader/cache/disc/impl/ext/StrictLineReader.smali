.class Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 92
    sget-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 96
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    .line 97
    iput-object p3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 98
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    return-void

    .line 93
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 87
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 71
    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 187
    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    .line 188
    iput v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    return-void

    .line 185
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 110
    iput-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    .line 111
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 113
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    if-eqz v1, :cond_7f

    .line 133
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    if-lt v1, v2, :cond_10

    .line 134
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->fillBuf()V

    .line 137
    :cond_10
    iget v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    :goto_12
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_41

    .line 138
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_3e

    .line 139
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 140
    :goto_2c
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 141
    iput v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    .line 142
    monitor-exit v0

    return-object v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 147
    :cond_41
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader$1;

    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    iget v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader$1;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;I)V

    .line 160
    :cond_4d
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 162
    iput v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    .line 163
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->fillBuf()V

    .line 165
    iget v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    :goto_5f
    iget v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    if-eq v2, v4, :cond_4d

    .line 166
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_7c

    .line 167
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    if-eq v2, v3, :cond_72

    sub-int v5, v2, v3

    .line 168
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 170
    iput v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    .line 171
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 127
    :cond_7f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_87
    move-exception v1

    .line 175
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    throw v1
.end method
