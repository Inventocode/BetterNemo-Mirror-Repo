.class public final Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;
.super Ljava/lang/Object;
.source "MediaParserExtractorAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field private final inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

.field private parserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    sget-object v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->FACTORY:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    .line 58
    new-instance v1, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 59
    invoke-static {v0, v1}, Landroid/media/MediaParser;->create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    .line 60
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.inBandCryptoInfo"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.includeSupplementalData"

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaparser.UNKNOWN"

    .line 63
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    const-string v1, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->disableSeeking()V

    :cond_f
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer2/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p8}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    .line 76
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p2, p1, p6, p7}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setDataReader(Lcom/google/android/exoplayer2/upstream/DataReader;J)V

    .line 77
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p1, p4, p5}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 78
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.mediaparser.UNKNOWN"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 81
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p1, p2}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    goto :goto_47

    .line 84
    :cond_32
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 86
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->getAndResetSeekPosition()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    if-nez v0, :cond_14

    const/4 p1, -0x1

    goto :goto_1d

    :cond_14
    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public release()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->release()V

    return-void
.end method

.method public seek(JJ)V
    .registers 9

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->inputReaderAdapter:Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p3

    .line 114
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaParser$SeekPoint;

    iget-wide v1, v1, Landroid/media/MediaParser$SeekPoint;->position:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1b

    check-cast v0, Landroid/media/MediaParser$SeekPoint;

    goto :goto_20

    :cond_1b
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/media/MediaParser$SeekPoint;

    :goto_20
    invoke-virtual {p4, v0}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    return-void
.end method
