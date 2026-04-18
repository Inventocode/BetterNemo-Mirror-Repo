.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;
.super Ljava/lang/Object;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackInformation"
.end annotation


# instance fields
.field public final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private trackGroupIndex:I

.field public final trackGroupInfo:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

.field public final trackIndex:I

.field public final trackName:Ljava/lang/String;

.field private tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/TracksInfo;IILjava/lang/String;)V
    .registers 5

    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;

    .line 1948
    iput p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroupIndex:I

    .line 1949
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroupInfo:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    .line 1950
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 1951
    iput p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackIndex:I

    .line 1952
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;)I
    .registers 1

    .line 1936
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroupIndex:I

    return p0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;)Lcom/google/android/exoplayer2/TracksInfo;
    .registers 1

    .line 1936
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->tracksInfo:Lcom/google/android/exoplayer2/TracksInfo;

    return-object p0
.end method


# virtual methods
.method public isSelected()Z
    .registers 3

    .line 1956
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroupInfo:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isTrackSelected(I)Z

    move-result v0

    return v0
.end method
