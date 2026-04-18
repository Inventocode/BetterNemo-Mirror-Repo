.class public final Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;,
        Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final FILE_TYPE_HEIC:I = 0x2

.field private static final FILE_TYPE_MP4:I = 0x0

.field private static final FILE_TYPE_QUICKTIME:I = 0x1

.field public static final FLAG_READ_MOTION_PHOTO_METADATA:I = 0x2

.field public static final FLAG_READ_SEF_DATA:I = 0x4

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x1

.field private static final MAXIMUM_READ_AHEAD_BYTES_STREAM:J = 0xa00000L

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final STATE_READING_SEF:I = 0x3


# instance fields
.field private accumulatedSampleSizes:[[J

.field private atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private fileType:I

.field private firstVideoTrackIndex:I

.field private final flags:I

.field private motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleTrackIndex:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

.field private final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public static synthetic $r8$lambda$IP-_bKEryH3151zsYMHu9R1OlAQ(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zxba_Jp1gvw4wckCw1roj6rXQ6M()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x3

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 184
    :goto_c
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 185
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    .line 186
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 187
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 188
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 189
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 192
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    return-void
.end method

.method private static brandToFileType(I)I
    .registers 2

    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method private static calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .registers 16

    .line 778
    array-length v0, p0

    new-array v0, v0, [[J

    .line 779
    array-length v1, p0

    new-array v1, v1, [I

    .line 780
    array-length v2, p0

    new-array v2, v2, [J

    .line 781
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 782
    :goto_e
    array-length v6, p0

    if-ge v5, v6, :cond_28

    .line 783
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 784
    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 788
    :goto_2b
    array-length v8, p0

    if-ge v7, v8, :cond_71

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 791
    :goto_35
    array-length v12, p0

    if-ge v11, v12, :cond_48

    .line 792
    aget-boolean v12, v3, v11

    if-nez v12, :cond_45

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_45

    .line 794
    aget-wide v8, v2, v11

    move v10, v11

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 797
    :cond_48
    aget v8, v1, v10

    .line 798
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 799
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 800
    aput v8, v1, v10

    .line 801
    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_6c

    .line 802
    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_2b

    .line 805
    :cond_6c
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_71
    return-object v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    .line 331
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private static getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I
    .registers 5

    .line 843
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 846
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v0

    :cond_b
    return v0
.end method

.method private getTrackIndexOfNextReadSample(J)I
    .registers 23

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    .line 695
    :goto_16
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v1

    if-ge v7, v1, :cond_6b

    .line 696
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v1, v1, v7

    .line 697
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 698
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v4, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v3, v4, :cond_2e

    goto :goto_68

    .line 701
    :cond_2e
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v1, v3

    .line 702
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_50

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v1, 0x1

    :goto_51
    if-nez v1, :cond_55

    if-nez v13, :cond_5b

    :cond_55
    if-ne v1, v13, :cond_60

    cmp-long v3, v4, v14

    if-gez v3, :cond_60

    :cond_5b
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_60
    cmp-long v3, v16, v8

    if-gez v3, :cond_68

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_6b
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_7e

    if-eqz v10, :cond_7e

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_7f

    :cond_7e
    move v2, v6

    :cond_7f
    return v2
.end method

.method private static synthetic lambda$processMoovAtom$1(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .registers 1

    return-object p0
.end method

.method private static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 66
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J
    .registers 5

    .line 823
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 827
    :cond_8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p0, p1

    .line 828
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 752
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 755
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method private processAtomEnded(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 444
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_45

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 446
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_31

    .line 448
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 450
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 451
    :cond_31
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 455
    :cond_45
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_4c

    .line 456
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_4c
    return-void
.end method

.method private processEndOfStreamReadingAtomHeader()V
    .registers 7

    .line 738
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4b

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 741
    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    .line 743
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v3, :cond_1e

    const/4 v2, 0x0

    goto :goto_2b

    :cond_1e
    new-instance v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    move-object v2, v3

    .line 744
    :goto_2b
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 745
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 746
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_4b
    return-void
.end method

.method private static processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x8

    .line 859
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 860
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 861
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    .line 865
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 866
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_25

    .line 867
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 464
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    .line 470
    :goto_11
    new-instance v12, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    const v2, 0x75647461

    .line 471
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 474
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;

    move-result-object v2

    .line 475
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 476
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v3, :cond_30

    .line 478
    invoke-virtual {v12, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_30
    move-object v14, v2

    move-object v15, v3

    goto :goto_35

    :cond_33
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_35
    const v2, 0x6d657461

    .line 482
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 484
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    move-object v8, v2

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    .line 487
    :goto_45
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v6, 0x0

    :goto_4d
    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v5, 0x0

    .line 488
    sget-object v16, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    .line 489
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 498
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 499
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide v10, -0x7fffffffffffffffL  # -4.9E-324

    :goto_72
    if-ge v7, v3, :cond_139

    .line 501
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 502
    iget v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v4, :cond_8e

    move-object/from16 v20, v1

    move/from16 v21, v3

    move-object v5, v9

    const/4 v3, -0x1

    const/4 v9, 0x1

    const-wide v17, -0x7fffffffffffffffL  # -4.9E-324

    goto/16 :goto_130

    .line 505
    :cond_8e
    iget-object v4, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move/from16 v19, v8

    move-object v5, v9

    .line 507
    iget-wide v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    const-wide v17, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v20, v8, v17

    if-eqz v20, :cond_9f

    goto :goto_a1

    :cond_9f
    iget-wide v8, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 508
    :goto_a1
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v20, v1

    .line 509
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    move/from16 v21, v3

    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 510
    invoke-interface {v2, v7, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v3

    invoke-direct {v1, v4, v6, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 513
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    move-wide/from16 v22, v10

    const-string v10, "audio/true-hd"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 515
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v3, v3, 0x10

    goto :goto_cb

    .line 519
    :cond_c7
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v3, v3, 0x1e

    .line 522
    :goto_cb
    iget-object v10, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 523
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 524
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_ee

    const-wide/16 v24, 0x0

    cmp-long v3, v8, v24

    if-lez v3, :cond_ee

    iget v3, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_ee

    int-to-float v3, v3

    long-to-float v6, v8

    const v8, 0x49742400  # 1000000.0f

    div-float/2addr v6, v8

    div-float/2addr v3, v6

    .line 528
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    .line 531
    :cond_ee
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    invoke-static {v3, v12, v10}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILcom/google/android/exoplayer2/extractor/GaplessInfoHolder;Lcom/google/android/exoplayer2/Format$Builder;)V

    .line 532
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    new-array v6, v11, [Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v8, 0x0

    aput-object v14, v6, v8

    .line 538
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_104

    const/4 v8, 0x0

    goto :goto_10b

    :cond_104
    new-instance v8, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_10b
    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 532
    invoke-static {v3, v15, v13, v10, v6}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->setFormatMetadata(ILcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Format$Builder;[Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 539
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 541
    iget v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    move/from16 v6, v19

    if-ne v3, v11, :cond_129

    const/4 v3, -0x1

    if-ne v6, v3, :cond_12a

    .line 542
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move v8, v4

    goto :goto_12b

    :cond_129
    const/4 v3, -0x1

    :cond_12a
    move v8, v6

    .line 544
    :goto_12b
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v22

    :goto_130
    add-int/lit8 v7, v7, 0x1

    move-object v9, v5

    move-object/from16 v1, v20

    move/from16 v3, v21

    goto/16 :goto_72

    :cond_139
    move v6, v8

    move-object v5, v9

    .line 546
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 547
    iput-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 548
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 549
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 551
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 552
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method private processUnparsedAtom(J)V
    .registers 16

    .line 760
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_21

    .line 763
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    :cond_21
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    return v3

    .line 341
    :cond_18
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    .line 347
    :cond_2f
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4e

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 351
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_79

    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_79

    .line 356
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6a

    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    if-eqz v0, :cond_6a

    .line 360
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_6a
    cmp-long v0, v4, v6

    if-eqz v0, :cond_79

    .line 364
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 368
    :cond_79
    :goto_79
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10d

    .line 373
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 374
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a4

    .line 375
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_a4

    .line 376
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 378
    :cond_a4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 379
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_bd

    .line 380
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_10c

    .line 383
    :cond_bd
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_10c

    .line 385
    :cond_c1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 388
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_cf

    const/4 p1, 0x1

    goto :goto_d0

    :cond_cf
    const/4 p1, 0x0

    :goto_d0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 389
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_de

    const/4 p1, 0x1

    goto :goto_df

    :cond_de
    const/4 p1, 0x0

    :goto_df
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 390
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 393
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_10c

    .line 395
    :cond_fc
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    const/4 p1, 0x0

    .line 396
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 397
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_10c
    return v1

    :cond_10d
    const-string p1, "Atom size less than header length (unsupported)."

    .line 369
    invoke-static {p1}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 411
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 413
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_44

    .line 415
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v7, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 416
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_29

    .line 417
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processFtypAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_4f

    .line 418
    :cond_29
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 419
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {p2, v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_4f

    :cond_44
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_51

    long-to-int p2, v0

    .line 424
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    goto :goto_59

    .line 426
    :cond_51
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    .line 430
    :goto_59
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_64

    .line 431
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_64

    goto :goto_65

    :cond_64
    const/4 v5, 0x0

    :goto_65
    return v5
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 571
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 572
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 573
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_16

    return v5

    .line 578
    :cond_16
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 579
    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 580
    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 581
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v8, v7, v15

    .line 582
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v6, v6, v15

    .line 583
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    sub-long v2, v8, v2

    .line 584
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v10, v7

    add-long/2addr v2, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v2, v10

    if-ltz v7, :cond_149

    const-wide/32 v10, 0x40000

    cmp-long v7, v2, v10

    if-ltz v7, :cond_4c

    move-object/from16 v1, p2

    const/16 v17, 0x1

    goto/16 :goto_14d

    .line 589
    :cond_4c
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v7, v12, :cond_57

    const-wide/16 v7, 0x8

    add-long/2addr v2, v7

    add-int/lit8 v6, v6, -0x8

    :cond_57
    long-to-int v3, v2

    .line 595
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 596
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_c2

    .line 599
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 600
    aput-byte v10, v2, v10

    .line 601
    aput-byte v10, v2, v12

    const/4 v3, 0x2

    .line 602
    aput-byte v10, v2, v3

    .line 603
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v7, v3, 0x4

    .line 608
    :goto_76
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v8, v6, :cond_104

    .line 609
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v8, :cond_ae

    .line 611
    invoke-interface {v1, v2, v7, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 612
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 613
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 614
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ltz v8, :cond_a7

    .line 619
    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 621
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 622
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x4

    invoke-interface {v14, v8, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 623
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v7

    goto :goto_76

    :cond_a7
    const-string v1, "Invalid NAL length"

    .line 616
    invoke-static {v1, v11}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 627
    :cond_ae
    invoke-interface {v14, v1, v8, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v8

    .line 628
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 629
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 630
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_76

    .line 634
    :cond_c2
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 635
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_e2

    .line 636
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/audio/Ac4Util;->getAc4SampleHeader(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 637
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 638
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_e2
    add-int/lit8 v6, v6, 0x7

    goto :goto_ea

    :cond_e5
    if-eqz v13, :cond_ea

    .line 642
    invoke-virtual {v13, v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->startSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 645
    :cond_ea
    :goto_ea
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v6, :cond_104

    sub-int v2, v6, v2

    .line 646
    invoke-interface {v14, v1, v2, v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result v2

    .line 647
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 648
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 649
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_ea

    :cond_104
    move v1, v6

    .line 653
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v3, v15

    .line 654
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->flags:[I

    aget v2, v2, v15

    if-eqz v13, :cond_12e

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v6, v13

    move-object v7, v14

    move v10, v2

    move-object v2, v11

    move v11, v1

    const/16 v17, 0x1

    move v12, v3

    move-object v1, v13

    move-object/from16 v13, v16

    .line 656
    invoke-virtual/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->sampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v15, v15, 0x1

    .line 658
    iget-object v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v15, v3, :cond_139

    .line 659
    invoke-virtual {v1, v14, v2}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_139

    :cond_12e
    const/16 v17, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-wide v7, v8

    move v9, v2

    move v10, v1

    .line 662
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 666
    :cond_139
    :goto_139
    iget v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 667
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v1, 0x0

    .line 668
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 669
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 670
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v1

    :cond_149
    const/16 v17, 0x1

    move-object/from16 v1, p2

    .line 586
    :goto_14d
    iput-wide v8, v1, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    return v17
.end method

.method private readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 437
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_16

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_16
    return p1
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_26

    const v0, 0x7472616b

    if-eq p0, v0, :cond_26

    const v0, 0x6d646961

    if-eq p0, v0, :cond_26

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_26

    const v0, 0x7374626c

    if-eq p0, v0, :cond_26

    const v0, 0x65647473

    if-eq p0, v0, :cond_26

    const v0, 0x6d657461

    if-ne p0, v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2

    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72  # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    :goto_5e
    return p0
.end method

.method private updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .registers 7

    .line 727
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 728
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 731
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 733
    :cond_d
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 271
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .registers 15

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v0, v0

    if-nez v0, :cond_13

    .line 277
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    .line 286
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL  # -4.9E-324

    if-eq v2, v3, :cond_5b

    .line 287
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 288
    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;J)I

    move-result v6

    if-ne v6, v3, :cond_33

    .line 290
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 292
    :cond_33
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v7, v6

    .line 294
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_56

    .line 295
    iget v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_56

    .line 296
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p1

    if-eq p1, v3, :cond_56

    if-eq p1, v6, :cond_56

    .line 298
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v0, p2, p1

    .line 299
    iget-object p2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p2, p1

    goto :goto_58

    :cond_56
    move-wide p1, v0

    move-wide v0, v4

    :goto_58
    move-wide v2, p1

    move-wide p1, v8

    goto :goto_62

    :cond_5b
    const-wide v10, 0x7fffffffffffffffL

    move-wide v2, v0

    move-wide v0, v4

    :goto_62
    const/4 v6, 0x0

    .line 308
    :goto_63
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v8, v7

    if-ge v6, v8, :cond_80

    .line 309
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v6, v8, :cond_7d

    .line 310
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 311
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v8

    cmp-long v10, v0, v4

    if-eqz v10, :cond_7c

    .line 313
    invoke-static {v7, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v2

    :cond_7c
    move-wide v10, v8

    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 318
    :cond_80
    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, p1, p2, v10, v11}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v0, v4

    if-nez p1, :cond_8f

    .line 320
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p1

    .line 322
    :cond_8f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    .line 323
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v6, p1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p2
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSefData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 257
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 253
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 248
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 243
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 9

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 210
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 211
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 212
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 213
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_2b

    .line 217
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_20

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_41

    .line 220
    :cond_20
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->sefReader:Lcom/google/android/exoplayer2/extractor/mp4/SefReader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/SefReader;->reset()V

    .line 221
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_41

    .line 223
    :cond_2b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;

    if-eqz p1, :cond_41

    .line 224
    array-length p2, p1

    :goto_30
    if-ge v0, p2, :cond_41

    aget-object v1, p1, v0

    .line 225
    invoke-direct {p0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->updateSampleIndex(Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 226
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v1, :cond_3e

    .line 227
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_41
    :goto_41
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p1

    return p1
.end method
