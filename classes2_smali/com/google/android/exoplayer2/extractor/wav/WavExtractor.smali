.class public final Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;,
        Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final STATE_READING_FILE_TYPE:I = 0x0

.field private static final STATE_READING_FORMAT:I = 0x1

.field private static final STATE_READING_SAMPLE_DATA:I = 0x3

.field private static final STATE_SKIPPING_TO_SAMPLE_DATA:I = 0x2

.field private static final TARGET_SAMPLES_PER_SECOND:I = 0xa


# instance fields
.field private dataEndPosition:J

.field private dataStartPosition:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

.field private state:I

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public static synthetic $r8$lambda$Qwcn1NjCsgxYvA5Vzd4jHyQOX2k()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    const-wide/16 v0, -0x1

    .line 87
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method

.method private assertInitialized()V
    .registers 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private readFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 145
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x3

    .line 146
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return-void

    .line 149
    :cond_1d
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 154
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 155
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return-void

    :cond_33
    const/4 p1, 0x0

    const-string v0, "Unsupported or unrecognized wav file type."

    .line 151
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 160
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->readFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/wav/WavFormat;

    move-result-object v3

    .line 161
    iget p1, v3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_16

    .line 162
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-direct {p1, v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_52

    :cond_16
    const/4 v0, 0x6

    if-ne p1, v0, :cond_29

    .line 164
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-alaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_52

    :cond_29
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3c

    .line 172
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-mlaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_52

    .line 181
    :cond_3c
    iget v0, v3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->bitsPerSample:I

    .line 182
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    if-eqz v5, :cond_56

    .line 187
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const-string v4, "audio/raw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    :goto_52
    const/4 p1, 0x2

    .line 191
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return-void

    .line 184
    :cond_56
    iget p1, v3, Lcom/google/android/exoplayer2/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 206
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v3, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v2, -0x1

    :cond_25
    return v2
.end method

.method private skipToSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->skipToSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object p1

    .line 196
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 197
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 198
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    const/4 p1, 0x3

    .line 199
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 4

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 98
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 99
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->assertInitialized()V

    .line 119
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1c

    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->readSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 132
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 127
    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->skipToSampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v0

    .line 124
    :cond_20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->readFormat(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v0

    .line 121
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->readFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x3

    .line 104
    :goto_9
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->state:I

    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p1, :cond_12

    .line 106
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_12
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
