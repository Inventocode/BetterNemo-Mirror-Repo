.class public Lcom/arthenica/ffmpegkit/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# instance fields
.field private bitrate:D

.field private sessionId:J

.field private size:J

.field private speed:D

.field private time:D

.field private videoFps:F

.field private videoFrameNumber:I

.field private videoQuality:F


# direct methods
.method public constructor <init>(JIFFJDDD)V
    .registers 14

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    .line 37
    iput p3, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    .line 38
    iput p4, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    .line 39
    iput p5, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

    .line 40
    iput-wide p6, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    .line 41
    iput-wide p8, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    .line 42
    iput-wide p10, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    .line 43
    iput-wide p12, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statistics{"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sessionId="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", videoFrameNumber="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFps="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", videoQuality="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
