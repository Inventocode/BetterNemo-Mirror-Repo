.class Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;
.super Ljava/io/InputStream;
.source "ModelByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/ModelByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RandomFileInputStream"
.end annotation


# instance fields
.field private left:J

.field private mark:J

.field private markleft:J

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/ModelByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->mark:J

    .line 55
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->markleft:J

    .line 58
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/codemao/midi/sun/ModelByteBuffer;->access$000(Lcom/codemao/midi/sun/ModelByteBuffer;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/midi/sun/ModelByteBuffer;->access$100(Lcom/codemao/midi/sun/ModelByteBuffer;)Ljava/io/File;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 59
    invoke-static {p1}, Lcom/codemao/midi/sun/ModelByteBuffer;->access$000(Lcom/codemao/midi/sun/ModelByteBuffer;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/midi/sun/ModelByteBuffer;->access$200(Lcom/codemao/midi/sun/ModelByteBuffer;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 60
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    const v0, 0x7fffffff

    return v0

    :cond_d
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

    .line 134
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object p1, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->mark:J

    .line 72
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->markleft:J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_11
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 76
    :catch_11
    :goto_11
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_a

    return v2

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ne v0, v2, :cond_13

    return v2

    .line 129
    :cond_13
    iget-wide v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    return v0
.end method

.method public read([B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    array-length v0, p1

    int-to-long v1, v0

    .line 112
    iget-wide v3, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_9

    long-to-int v0, v3

    :cond_9
    const-wide/16 v1, 0x0

    const/4 v5, -0x1

    cmp-long v6, v3, v1

    if-nez v6, :cond_11

    return v5

    .line 116
    :cond_11
    iget-object v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_1b

    return v5

    .line 119
    :cond_1b
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    return p1
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 99
    iget-wide v2, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    long-to-int p3, v2

    :cond_8
    const-wide/16 v0, 0x0

    const/4 v4, -0x1

    cmp-long v5, v2, v0

    if-nez v5, :cond_10

    return v4

    .line 103
    :cond_10
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_19

    return v4

    .line 106
    :cond_19
    iget-wide p2, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->mark:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 84
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->markleft:J

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 85
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    return-wide v0

    .line 90
    :cond_7
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    move-wide p1, v0

    .line 92
    :cond_e
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 93
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->raf:Ljava/io/RandomAccessFile;

    add-long/2addr v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelByteBuffer$RandomFileInputStream;->left:J

    return-wide p1
.end method
