.class final Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 47
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v1

    .line 48
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/4 v2, 0x0

    const v3, 0x52494646

    if-eq v1, v3, :cond_14

    return v2

    .line 52
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_41

    const/16 v0, 0x22

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported form type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public static readFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavFormat;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 73
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 76
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    .line 77
    :goto_d
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v5, 0x666d7420

    if-eq v4, v5, :cond_21

    .line 78
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v4, v3

    add-int/lit8 v4, v4, 0x8

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 79
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v3

    goto :goto_d

    .line 82
    :cond_21
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const-wide/16 v6, 0x10

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-ltz v9, :cond_2c

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 83
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {v0, v4, v8, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 84
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v10

    .line 86
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v11

    .line 87
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v12

    .line 88
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v13

    .line 89
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v14

    .line 90
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v15

    .line 92
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v1, v3

    sub-int/2addr v1, v2

    if-lez v1, :cond_60

    .line 95
    new-array v2, v1, [B

    .line 96
    invoke-interface {v0, v2, v8, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    move-object/from16 v16, v2

    goto :goto_64

    .line 98
    :cond_60
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object/from16 v16, v1

    .line 101
    :goto_64
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v1

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    return-object v0
.end method

.method public static skipToSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 128
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 129
    :goto_e
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v4, 0x64617461

    const-string v5, "WavHeaderReader"

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x27

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x8

    .line 131
    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long/2addr v5, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v7, v5, v3

    if-gtz v7, :cond_42

    long-to-int v2, v5

    .line 136
    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 137
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    goto :goto_e

    .line 133
    :cond_42
    iget p0, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/16 v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 140
    :cond_5c
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 142
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 143
    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long/2addr v2, v0

    .line 144
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p0, v6, v8

    if-eqz p0, :cond_93

    cmp-long p0, v2, v6

    if-lez p0, :cond_93

    const/16 p0, 0x45

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Data exceeds input length: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v6

    .line 149
    :cond_93
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
