.class public final Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "ByteArrayDataSource.java"


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 40
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    array-length v1, p1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferEnded()V

    :cond_a
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 49
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v3, v2

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_3a

    long-to-int v3, v0

    .line 52
    iput v3, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 53
    array-length v2, v2

    long-to-int v1, v0

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 54
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_29

    int-to-long v5, v2

    .line 55
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    :cond_29
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->opened:Z

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 59
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_36

    goto :goto_39

    :cond_36
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, p1

    :goto_39
    return-wide v0

    .line 50
    :cond_3a
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1
.end method

.method public read([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    .line 73
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;->bytesTransferred(I)V

    return p3
.end method
