.class public Lcom/codemao/midi/javax/CMMidiFile;
.super Ljava/lang/Object;
.source "CMMidiFile.java"


# static fields
.field private static final SUPPORTING_DIVISION_TYPES:[F


# instance fields
.field private calcTickLength:J

.field protected divisionType:F

.field protected midiTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/midi/javax/CMMidiTrack;",
            ">;"
        }
    .end annotation
.end field

.field protected resolution:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 25
    fill-array-data v0, :array_a

    sput-object v0, Lcom/codemao/midi/javax/CMMidiFile;->SUPPORTING_DIVISION_TYPES:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x41c00000  # 24.0f
        0x41c80000  # 25.0f
        0x41f00000  # 30.0f
        0x41efc28f  # 29.97f
    .end array-data
.end method

.method public constructor <init>(FI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/codemao/midi/javax/CMMidiFile;->isSupportingDivisionType(F)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 70
    iput p1, p0, Lcom/codemao/midi/javax/CMMidiFile;->divisionType:F

    .line 71
    iput p2, p0, Lcom/codemao/midi/javax/CMMidiFile;->resolution:I

    .line 72
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    return-void

    .line 68
    :cond_15
    new-instance p2, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported division type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static isSupportingDivisionType(F)Z
    .registers 6

    .line 47
    sget-object v0, Lcom/codemao/midi/javax/CMMidiFile;->SUPPORTING_DIVISION_TYPES:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_12

    aget v4, v0, v3

    cmpl-float v4, p0, v4

    if-nez v4, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    return v2
.end method


# virtual methods
.method public addTrack(Lcom/codemao/midi/javax/CMMidiTrack;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createAndAddTrack()Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 3

    .line 106
    new-instance v0, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-direct {v0}, Lcom/codemao/midi/javax/CMMidiTrack;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public deleteTrack(Lcom/codemao/midi/javax/CMMidiTrack;)Z
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/codemao/midi/javax/CMMidiTrack;

    .line 191
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getCalcTickLength()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->calcTickLength:J

    return-wide v0
.end method

.method public getDivisionType()F
    .registers 2

    .line 135
    iget v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->divisionType:F

    return v0
.end method

.method public getMidiDuration()J
    .registers 8

    const-wide/16 v0, 0x0

    const v2, 0x48f42400  # 500000.0f

    const/4 v3, 0x0

    .line 209
    :goto_6
    iget-object v4, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 210
    iget-object v4, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackMaxTick()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_1f

    move-wide v0, v4

    .line 214
    :cond_1f
    iget-object v4, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiTrack;->getTrackTempo()I

    move-result v4

    if-lez v4, :cond_2e

    int-to-float v2, v4

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_31
    long-to-float v0, v0

    mul-float v2, v2, v0

    const/high16 v0, 0x43f00000  # 480.0f

    div-float/2addr v2, v0

    float-to-long v0, v2

    return-wide v0
.end method

.method public getRealTickLength()J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 177
    :goto_3
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 178
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->ticksByReal()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    return-wide v0
.end method

.method public getResolution()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/codemao/midi/javax/CMMidiFile;->resolution:I

    return v0
.end method

.method public getTickLength()J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 166
    :goto_3
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 167
    iget-object v3, p0, Lcom/codemao/midi/javax/CMMidiFile;->midiTracks:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->ticks()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    return-wide v0
.end method

.method public setCalcTickLength(J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/codemao/midi/javax/CMMidiFile;->calcTickLength:J

    return-void
.end method
