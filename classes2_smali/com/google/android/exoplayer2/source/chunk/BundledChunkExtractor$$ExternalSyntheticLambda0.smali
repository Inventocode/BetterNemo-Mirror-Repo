.class public final synthetic Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/chunk/BundledChunkExtractor;->$r8$lambda$EjkRXB56HGkkuVE4DGlCmQxjyo8(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor;

    move-result-object p1

    return-object p1
.end method
