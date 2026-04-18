.class public final Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 87
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1b

    .line 147
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method private createExtractorByFileType(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    if-eqz p1, :cond_44

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_38

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_21

    const/16 p3, 0xd

    if-eq p1, p3, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_19
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1

    .line 171
    :cond_21
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    .line 169
    :cond_2a
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 167
    :cond_2f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    .line 161
    :cond_38
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    .line 165
    :cond_3e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    .line 163
    :cond_44
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1
.end method

.method private static createFragmentedMp4Extractor(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    .line 230
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x4

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    const/4 v1, 0x0

    if-eqz p2, :cond_f

    goto :goto_13

    .line 233
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_13
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Ljava/util/List;)V

    return-object v0
.end method

.method private static createTsExtractor(IZLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_7

    or-int/lit8 p0, p0, 0x20

    goto :goto_21

    :cond_7
    if-eqz p1, :cond_1d

    .line 198
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string p3, "application/cea-608"

    .line 200
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 199
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_21

    .line 202
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 204
    :goto_21
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3d

    const-string p2, "audio/mp4a-latm"

    .line 209
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_33

    or-int/lit8 p0, p0, 0x2

    :cond_33
    const-string p2, "video/avc"

    .line 212
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3d

    or-int/lit8 p0, p0, 0x4

    .line 217
    :cond_3d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static isFmp4Variant(Lcom/google/android/exoplayer2/Format;)Z
    .registers 5

    .line 238
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    .line 242
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 243
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 244
    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_20

    .line 245
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return v0
.end method

.method private static sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/Extractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_d
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 259
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_11

    :catchall_8
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 260
    throw p0

    .line 259
    :catch_d
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            ")",
            "Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p5

    .line 104
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 110
    invoke-static {p5, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 111
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 112
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v3, :cond_2c

    aget v6, v2, v5

    .line 113
    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_2c
    const/4 v2, 0x0

    .line 118
    invoke-interface {p6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 119
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_66

    .line 120
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 123
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v5

    .line 122
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 124
    invoke-static {v5, p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 125
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    invoke-direct {p1, v5, p2, p4}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1

    :cond_56
    if-nez v2, :cond_63

    if-eq v3, v0, :cond_62

    if-eq v3, p5, :cond_62

    if-eq v3, p1, :cond_62

    const/16 v6, 0xb

    if-ne v3, v6, :cond_63

    :cond_62
    move-object v2, v5

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 138
    :cond_66
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    .line 139
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-direct {p1, p3, p2, p4}, Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-object p1
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunkExtractor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/source/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method
