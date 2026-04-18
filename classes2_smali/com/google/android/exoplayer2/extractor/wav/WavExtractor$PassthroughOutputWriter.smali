.class final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 277
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 278
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    .line 280
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 282
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    if-ne p2, p1, :cond_51

    .line 288
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int p2, p2, p1

    .line 289
    div-int/lit8 p2, p2, 0xa

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 291
    new-instance p2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 293
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 294
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 295
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 296
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->numChannels:I

    .line 297
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    .line 298
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_51
    const/16 p3, 0x32

    .line 283
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Expected block size: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public init(IJ)V
    .registers 13

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 314
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 305
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    .line 306
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 307
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_4
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2d

    .line 320
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v7, v8, :cond_2d

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 321
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 322
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    move-wide v1, v4

    goto :goto_4

    .line 326
    :cond_25
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_4

    .line 334
    :cond_2d
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->blockSize:I

    .line 335
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v4, v2

    if-lez v4, :cond_5d

    .line 337
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    const-wide/32 v11, 0xf4240

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v1

    .line 339
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v4, v2

    .line 342
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v1, v15

    .line 343
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 345
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v4, v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 346
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_5d
    if-gtz v6, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    return v3
.end method
