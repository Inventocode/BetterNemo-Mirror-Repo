.class public final Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;
.super Ljava/lang/Object;
.source "ExoplayerCuesDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;
    }
.end annotation


# static fields
.field private static final INPUT_BUFFER_AVAILABLE:I = 0x0

.field private static final INPUT_BUFFER_DEQUEUED:I = 0x1

.field private static final INPUT_BUFFER_QUEUED:I = 0x2

.field private static final OUTPUT_BUFFERS_COUNT:I = 0x2


# instance fields
.field private final availableOutputBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final cueDecoder:Lcom/google/android/exoplayer2/text/CueDecoder;

.field private final inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private inputBufferState:I

.field private released:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/text/CueDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/CueDecoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->cueDecoder:Lcom/google/android/exoplayer2/text/CueDecoder;

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2a

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    new-instance v3, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$1;-><init>(Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 68
    :cond_2a
    iput v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method private releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 136
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_d
    iput v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->dequeueInputBuffer()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_58

    .line 102
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x4

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    goto :goto_4f

    .line 106
    :cond_2a
    new-instance v4, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v5, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->cueDecoder:Lcom/google/android/exoplayer2/text/CueDecoder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 108
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/text/CueDecoder;->decode([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;-><init>(JLcom/google/common/collect/ImmutableList;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplayer2/text/Subtitle;J)V

    .line 111
    :goto_4f
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v1, 0x0

    .line 112
    iput v1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-object v0

    :cond_58
    :goto_58
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "ExoplayerCuesDecoder"

    return-object v0
.end method

.method public queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-ne v0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 p1, 0x2

    .line 92
    iput p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 37
    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->queueInputBuffer(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;->released:Z

    return-void
.end method

.method public setPositionUs(J)V
    .registers 3

    return-void
.end method
