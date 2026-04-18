.class Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;
.super Ljava/io/InputStream;
.source "SoftJitterCorrector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftJitterCorrector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JitterStream"
.end annotation


# static fields
.field static MAX_BUFFER_SIZE:I = 0x100000


# instance fields
.field active:Z

.field bbuffer:[B

.field bbuffer_max:I

.field bbuffer_pos:I

.field buffers:[[B

.field buffers_mutex:Ljava/lang/Object;

.field readpos:I

.field stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field thread:Ljava/lang/Thread;

.field w:I

.field w_count:I

.field w_max_tol:I

.field w_min:I

.field w_min_tol:I

.field writepos:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;II)V
    .registers 10

    .line 116
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->active:Z

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    .line 49
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    .line 51
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    const/16 v2, 0x3e8

    .line 54
    iput v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    const/4 v2, 0x2

    .line 55
    iput v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min_tol:I

    const/16 v3, 0xa

    .line 56
    iput v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_max_tol:I

    .line 57
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    const/4 v4, -0x1

    .line 58
    iput v4, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    .line 60
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    .line 61
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    const/4 v4, 0x0

    .line 62
    iput-object v4, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    .line 117
    div-int/2addr p2, p3

    mul-int/lit8 v4, p2, 0xa

    iput v4, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_34

    .line 119
    iput v5, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    :cond_34
    add-int/2addr p2, v3

    new-array v2, v2, [I

    aput p3, v2, v0

    aput p2, v2, v1

    .line 120
    const-class p2, B

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    iput-object p2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    .line 122
    sget p2, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->MAX_BUFFER_SIZE:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_max:I

    .line 123
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 126
    new-instance p1, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;

    invoke-direct {p1, p0}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream$1;-><init>(Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;)V

    .line 218
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 220
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {p1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 221
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    monitor-enter p0

    const/4 v0, 0x0

    .line 226
    :try_start_2
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->active:Z

    .line 227
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_10

    .line 229
    :try_start_5
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_a

    .line 233
    :catch_a
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->close()V

    return-void

    :catchall_10
    move-exception v0

    .line 227
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public commit()V
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    iget v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    .line 107
    iget v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    sub-int v4, v1, v3

    iget-object v5, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v6, v5

    if-le v4, v6, :cond_33

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xa

    .line 109
    array-length v3, v5

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    const/4 v5, 0x0

    aget-object v3, v3, v5

    array-length v3, v3

    new-array v4, v4, [I

    aput v3, v4, v2

    aput v1, v4, v5

    const-class v1, B

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    .line 112
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public fillBuffer()V
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->nextReadBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    return-void
.end method

.method public nextReadBuffer()[B
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    iget v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    iget v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    if-le v1, v2, :cond_1c

    sub-int/2addr v1, v2

    .line 68
    iget v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    if-ge v1, v3, :cond_10

    .line 69
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    :cond_10
    add-int/lit8 v1, v2, 0x1

    .line 72
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    .line 73
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    :cond_1c
    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    .line 76
    iget v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    .line 77
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_52

    :goto_26
    const-wide/16 v2, 0x1

    .line 80
    :try_start_28
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_50

    .line 85
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_2e
    iget v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    iget v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    if-le v2, v3, :cond_4b

    const/4 v2, 0x0

    .line 87
    iput v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    .line 88
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_min:I

    .line 89
    iget v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->w:I

    add-int/lit8 v1, v3, 0x1

    .line 91
    iput v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->readpos:I

    .line 92
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    array-length v2, v1

    rem-int/2addr v3, v2

    aget-object v1, v1, v3

    monitor-exit v0

    return-object v1

    .line 94
    :cond_4b
    monitor-exit v0

    goto :goto_26

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_4d

    throw v1

    :catch_50
    const/4 v0, 0x0

    return-object v0

    :catchall_52
    move-exception v1

    .line 77
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public nextWriteBuffer()[B
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers_mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->buffers:[[B

    iget v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->writepos:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 238
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    return v2

    :cond_b
    const/4 v1, 0x0

    .line 240
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 10

    .line 249
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    if-nez v0, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->fillBuffer()V

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    array-length v0, v0

    add-int v1, p2, p3

    :goto_c
    if-ge p2, v1, :cond_2e

    .line 254
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->available()I

    move-result v2

    if-nez v2, :cond_18

    .line 255
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->fillBuffer()V

    goto :goto_c

    .line 257
    :cond_18
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer:[B

    .line 258
    iget v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    :goto_1c
    if-ge p2, v1, :cond_2b

    if-ge v3, v0, :cond_2b

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 260
    aget-byte v3, v2, v3

    aput-byte v3, p1, p2

    move p2, v4

    move v3, v5

    goto :goto_1c

    .line 261
    :cond_2b
    iput v3, p0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;->bbuffer_pos:I

    goto :goto_c

    :cond_2e
    return p3
.end method
