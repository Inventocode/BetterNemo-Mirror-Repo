.class public Lcom/codemao/midi/sun/ModelByteBuffer;
.super Ljava/lang/Object;
.source "ModelByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private file:Ljava/io/File;

.field private fileoffset:J

.field private final len:J

.field private offset:J

.field private root:Lcom/codemao/midi/sun/ModelByteBuffer;


# direct methods
.method private constructor <init>(Lcom/codemao/midi/sun/ModelByteBuffer;JJZ)V
    .registers 12

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 140
    iget-object v0, p1, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    const-wide/16 v1, 0x0

    .line 141
    iput-wide v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    .line 142
    iget-wide v3, p1, Lcom/codemao/midi/sun/ModelByteBuffer;->len:J

    cmp-long p1, p2, v1

    if-gez p1, :cond_14

    move-wide p2, v1

    :cond_14
    cmp-long p1, p2, v3

    if-lez p1, :cond_19

    move-wide p2, v3

    :cond_19
    cmp-long p1, p4, v1

    if-gez p1, :cond_1e

    move-wide p4, v1

    :cond_1e
    cmp-long p1, p4, v3

    if-lez p1, :cond_23

    goto :goto_24

    :cond_23
    move-wide v3, p4

    :goto_24
    cmp-long p1, p2, v3

    if-lez p1, :cond_29

    move-wide p2, v3

    .line 153
    :cond_29
    iput-wide p2, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    sub-long/2addr v3, p2

    .line 154
    iput-wide v3, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->len:J

    if-eqz p6, :cond_4e

    .line 156
    iget-object p1, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    .line 157
    iget-object p1, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz p1, :cond_46

    .line 158
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    .line 159
    iget-wide p1, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->fileoffset:J

    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->fileoffset:J

    .line 160
    iput-wide v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    goto :goto_4c

    .line 162
    :cond_46
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    .line 163
    :goto_4c
    iput-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    :cond_4e
    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .registers 6

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 186
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    .line 187
    iput-wide p2, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->fileoffset:J

    .line 188
    iput-wide p4, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->len:J

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 168
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    .line 170
    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->len:J

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/sun/ModelByteBuffer;)Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/sun/ModelByteBuffer;)Ljava/io/File;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/sun/ModelByteBuffer;)J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->fileoffset:J

    return-wide v0
.end method

.method public static loadAll(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codemao/midi/sun/ModelByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    :try_start_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_68

    move-object v1, v0

    move-object v2, v1

    :goto_7
    :try_start_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 260
    iget-object v3, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 261
    iget-object v4, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    if-nez v4, :cond_1a

    goto :goto_7

    .line 263
    :cond_1a
    iget-object v5, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    if-eqz v5, :cond_1f

    goto :goto_7

    :cond_1f
    if-eqz v2, :cond_27

    .line 265
    invoke-virtual {v2, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    :cond_27
    if-eqz v1, :cond_2d

    .line 267
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    move-object v1, v0

    .line 270
    :cond_2d
    iget-object v2, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    .line 271
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v4

    .line 273
    :cond_39
    iget-wide v4, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->fileoffset:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 274
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v4

    long-to-int v5, v4

    new-array v4, v5, [B

    const/4 v6, 0x0

    :goto_46
    if-eq v6, v5, :cond_58

    sub-int v7, v5, v6

    const/high16 v8, 0x10000

    if-le v7, v8, :cond_53

    .line 280
    invoke-virtual {v1, v4, v6, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    add-int/2addr v6, v8

    goto :goto_46

    .line 283
    :cond_53
    invoke-virtual {v1, v4, v6, v7}, Ljava/io/RandomAccessFile;->readFully([BII)V

    move v6, v5

    goto :goto_46

    .line 289
    :cond_58
    iput-object v4, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    const-wide/16 v4, 0x0

    .line 290
    iput-wide v4, v3, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_65

    goto :goto_7

    :cond_5f
    if-eqz v1, :cond_64

    .line 294
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_64
    return-void

    :catchall_65
    move-exception p0

    move-object v0, v1

    goto :goto_69

    :catchall_68
    move-exception p0

    :goto_69
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 295
    :cond_6e
    throw p0
.end method


# virtual methods
.method public array()[B
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    iget-object v0, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    return-object v0
.end method

.method public arrayOffset()J
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    if-eq v0, p0, :cond_c

    .line 234
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    add-long/2addr v0, v2

    return-wide v0

    .line 235
    :cond_c
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->offset:J

    return-wide v0
.end method

.method public capacity()J
    .registers 3

    .line 239
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->len:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 7

    .line 203
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer;->root:Lcom/codemao/midi/sun/ModelByteBuffer;

    iget-object v1, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->file:Ljava/io/File;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/codemao/midi/sun/ModelByteBuffer;->buffer:[B

    if-nez v0, :cond_12

    .line 205
    :try_start_a
    new-instance v0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;-><init>(Lcom/codemao/midi/sun/ModelByteBuffer;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBuffer;->array()[B

    move-result-object v1

    .line 212
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public subbuffer(JJ)Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/ModelByteBuffer;->subbuffer(JJZ)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public subbuffer(JJZ)Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 14

    .line 225
    new-instance v7, Lcom/codemao/midi/sun/ModelByteBuffer;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/codemao/midi/sun/ModelByteBuffer;-><init>(Lcom/codemao/midi/sun/ModelByteBuffer;JJZ)V

    return-object v7
.end method
