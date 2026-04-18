.class public final Lcom/google/android/exoplayer2/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private albumArtist:Ljava/lang/CharSequence;

.field private albumTitle:Ljava/lang/CharSequence;

.field private artist:Ljava/lang/CharSequence;

.field private artworkData:[B

.field private artworkDataType:Ljava/lang/Integer;

.field private artworkUri:Landroid/net/Uri;

.field private compilation:Ljava/lang/CharSequence;

.field private composer:Ljava/lang/CharSequence;

.field private conductor:Ljava/lang/CharSequence;

.field private description:Ljava/lang/CharSequence;

.field private discNumber:Ljava/lang/Integer;

.field private displayTitle:Ljava/lang/CharSequence;

.field private extras:Landroid/os/Bundle;

.field private folderType:Ljava/lang/Integer;

.field private genre:Ljava/lang/CharSequence;

.field private isPlayable:Ljava/lang/Boolean;

.field private mediaUri:Landroid/net/Uri;

.field private overallRating:Lcom/google/android/exoplayer2/Rating;

.field private recordingDay:Ljava/lang/Integer;

.field private recordingMonth:Ljava/lang/Integer;

.field private recordingYear:Ljava/lang/Integer;

.field private releaseDay:Ljava/lang/Integer;

.field private releaseMonth:Ljava/lang/Integer;

.field private releaseYear:Ljava/lang/Integer;

.field private subtitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private totalDiscCount:Ljava/lang/Integer;

.field private totalTrackCount:Ljava/lang/Integer;

.field private trackNumber:Ljava/lang/Integer;

.field private userRating:Lcom/google/android/exoplayer2/Rating;

.field private writer:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 87
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 89
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->mediaUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaUri:Landroid/net/Uri;

    .line 91
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;

    .line 92
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;

    .line 93
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 94
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 95
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 96
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 97
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 98
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 99
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 101
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 102
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 103
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 113
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Lcom/google/android/exoplayer2/Rating;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaMetadata;
    .registers 3

    .line 497
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    return-object v0
.end method

.method public maybeSetArtworkData([BI)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    if-eqz v0, :cond_1f

    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 212
    :cond_1f
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    :cond_2d
    return-object p0
.end method

.method public populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 398
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 401
    :cond_a
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 402
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 404
    :cond_11
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_18

    .line 405
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 407
    :cond_18
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 408
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 410
    :cond_1f
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    .line 411
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 413
    :cond_26
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    .line 414
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 416
    :cond_2d
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_34

    .line 417
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 419
    :cond_34
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->mediaUri:Landroid/net/Uri;

    if-eqz v0, :cond_3b

    .line 420
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 422
    :cond_3b
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->userRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v0, :cond_42

    .line 423
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setUserRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 425
    :cond_42
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->overallRating:Lcom/google/android/exoplayer2/Rating;

    if-eqz v0, :cond_49

    .line 426
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setOverallRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 428
    :cond_49
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_52

    .line 429
    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 431
    :cond_52
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v0, :cond_59

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 434
    :cond_59
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_60

    .line 435
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 437
    :cond_60
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v0, :cond_67

    .line 438
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 440
    :cond_67
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v0, :cond_6e

    .line 441
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 443
    :cond_6e
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_75

    .line 444
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 446
    :cond_75
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_7c

    .line 447
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 449
    :cond_7c
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_83

    .line 450
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 452
    :cond_83
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_8a

    .line 453
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 455
    :cond_8a
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v0, :cond_91

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 458
    :cond_91
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v0, :cond_98

    .line 459
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 461
    :cond_98
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_9f

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 464
    :cond_9f
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v0, :cond_a6

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 467
    :cond_a6
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_ad

    .line 468
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 470
    :cond_ad
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b4

    .line 471
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 473
    :cond_b4
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_bb

    .line 474
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 476
    :cond_bb
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_c2

    .line 477
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 479
    :cond_c2
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v0, :cond_c9

    .line 480
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 482
    :cond_c9
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d0

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 485
    :cond_d0
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d7

    .line 486
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 488
    :cond_d7
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz p1, :cond_de

    .line 489
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_de
    return-object p0
.end method

.method public populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 4

    const/4 v0, 0x0

    .line 365
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 366
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 367
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-object p0
.end method

.method public populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaMetadata$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 383
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 384
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v3, 0x0

    .line 385
    :goto_f
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_1f

    .line 386
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 387
    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtworkData([B)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 195
    :cond_4
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_a
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 196
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->mediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setOverallRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->overallRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method

.method public setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setUserRating(Lcom/google/android/exoplayer2/Rating;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->userRating:Lcom/google/android/exoplayer2/Rating;

    return-object p0
.end method

.method public setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p1

    return-object p1
.end method
