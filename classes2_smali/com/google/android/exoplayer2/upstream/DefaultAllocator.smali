.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private final singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 9

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 64
    :goto_a
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-ltz p3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 65
    :goto_12
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 66
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    .line 67
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 68
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 p1, p3, 0x64

    .line 69
    new-array p1, p1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    if-lez p3, :cond_3b

    mul-int p1, p3, p2

    .line 71
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :goto_29
    if-ge v0, p3, :cond_3e

    mul-int p1, v0, p2

    .line 74
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :cond_3e
    new-array p1, v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer2/upstream/Allocation;
    .registers 5

    monitor-enter p0

    .line 98
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_21

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_2b

    .line 104
    :cond_21
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 106
    :goto_2b
    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .registers 3

    monitor-enter p0

    .line 175
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .registers 4

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 113
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .registers 8

    monitor-enter p0

    .line 117
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v3, v2

    if-lt v1, v3, :cond_1b

    .line 118
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    .line 121
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 123
    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    .line 124
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 126
    :cond_2e
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 129
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 83
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 86
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 90
    :goto_8
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 94
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .registers 8

    monitor-enter p0

    .line 133
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v0

    .line 134
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 135
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_68

    if-lt v0, v2, :cond_17

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_5c

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-gt v1, v2, :cond_52

    .line 147
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 148
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v4, v5, :cond_32

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 151
    :cond_32
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 152
    iget-object v5, v4, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v5, v6, :cond_45

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 155
    :cond_45
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 156
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_1d

    .line 161
    :cond_52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 162
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_68

    if-lt v0, v1, :cond_5c

    .line 164
    monitor-exit p0

    return-void

    .line 169
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 170
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_68

    .line 171
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method
