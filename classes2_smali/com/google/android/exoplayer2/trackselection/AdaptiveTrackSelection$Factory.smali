.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2710

    const/16 v1, 0x61a8

    const v2, 0x3f333333  # 0.7f

    .line 64
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 14

    .line 92
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    const/high16 v7, 0x3f400000  # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .registers 16

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 171
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .registers 16

    .line 130
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 v7, 0x3f400000  # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .registers 9

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 219
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 220
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 221
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 222
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 223
    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 224
    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 226
    iput-object p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    .line 276
    new-instance v18, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-object/from16 v1, v18

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v6

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v8

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v10

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    return-object v18
.end method

.method public final createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 14

    .line 236
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 237
    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 238
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    .line 239
    aget-object v2, p1, v1

    if-eqz v2, :cond_39

    .line 240
    iget-object v5, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v5

    if-nez v3, :cond_16

    goto :goto_39

    .line 244
    :cond_16
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    .line 245
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v5, v5, v0

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_37

    .line 249
    :cond_26
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v6, v2, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 254
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    move-object v3, p0

    move-object v7, p2

    .line 249
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object v3

    :goto_37
    aput-object v3, p4, v1

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3c
    return-object p4
.end method
