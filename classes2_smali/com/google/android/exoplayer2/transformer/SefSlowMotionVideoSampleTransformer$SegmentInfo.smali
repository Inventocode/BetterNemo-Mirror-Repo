.class final Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;
.super Ljava/lang/Object;
.source "SefSlowMotionVideoSampleTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentInfo"
.end annotation


# instance fields
.field public final endTimeUs:J

.field public final maxLayer:I

.field public final speedDivisor:I

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;II)V
    .registers 6

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;->startTimeUs:J

    .line 371
    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;->endTimeUs:J

    .line 372
    iget p1, p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    iput p1, p0, Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;->speedDivisor:I

    .line 373
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;->getSlowMotionMaxLayer(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/transformer/SefSlowMotionVideoSampleTransformer$SegmentInfo;->maxLayer:I

    return-void
.end method

.method private static getSlowMotionMaxLayer(III)I
    .registers 6

    move v0, p0

    :goto_1
    if-lez v0, :cond_29

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    shr-int/2addr v0, v2

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    const/16 v0, 0x22

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid speed divisor: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    goto :goto_29

    :cond_24
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_29
    :goto_29
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
