.class Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;
.super Ljava/io/InputStream;
.source "ModelByteBufferWavetable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/ModelByteBufferWavetable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Buffer8PlusInputStream"
.end annotation


# instance fields
.field private bigendian:Z

.field private framesize_pc:I

.field markpos:I

.field markpos2:I

.field pos:I

.field pos2:I

.field final synthetic this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 47
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 48
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    .line 49
    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I

    .line 52
    invoke-static {p1}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$000(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-static {p1}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$000(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    .line 53
    invoke-static {p1}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$000(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->bigendian:Z

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$100(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$200(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->capacity()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v1, v0

    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 118
    :try_start_1
    iget p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iput p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    .line 119
    iget p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    iput p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 120
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p0, v1, v2, v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    return v2
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->available()I

    move-result p2

    if-gtz p2, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-le p3, p2, :cond_b

    move p3, p2

    .line 62
    :cond_b
    iget-object p2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {p2}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$100(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/sun/ModelByteBuffer;->array()[B

    move-result-object p2

    .line 63
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$200(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->array()[B

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v3}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$100(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 65
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v3}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$200(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 66
    iget-boolean v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->bigendian:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_67

    :goto_47
    if-ge v2, p3, :cond_86

    .line 68
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v4, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    invoke-static {p2, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    iget v4, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v4, v2

    invoke-static {v0, v1, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v4, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 71
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_47

    :cond_67
    :goto_67
    if-ge v2, p3, :cond_86

    .line 75
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    invoke-static {p2, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    iget v4, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 78
    iget v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_67

    .line 81
    :cond_86
    iget p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long p1, p1

    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$100(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 82
    iget p1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long p1, p1

    iget-object v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->this$0:Lcom/codemao/midi/sun/ModelByteBufferWavetable;

    invoke-static {v0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable;->access$200(Lcom/codemao/midi/sun/ModelByteBufferWavetable;)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelByteBuffer;->arrayOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_1
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos:I

    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 124
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->markpos2:I

    iput v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 126
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_9

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_9
    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    move-wide p1, v0

    .line 92
    :cond_f
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    int-to-long v0, v0

    iget v2, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->framesize_pc:I

    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    div-long v3, p1, v3

    int-to-long v5, v2

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    long-to-int v1, v0

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos:I

    .line 93
    iget v0, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    int-to-long v0, v0

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    div-long v2, p1, v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/codemao/midi/sun/ModelByteBufferWavetable$Buffer8PlusInputStream;->pos2:I

    .line 94
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
