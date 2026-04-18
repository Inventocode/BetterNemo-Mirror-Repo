.class Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;
.super Ljava/lang/Thread;
.source "SequencerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/impl/SequencerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequencerThread"
.end annotation


# instance fields
.field private needRefreshPlayingTrack:Z

.field private playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

.field private recordStartedTick:J

.field private recordingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

.field private recordingStartedTime:J

.field private runningStoppedTime:J

.field final synthetic this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

.field private tickPosition:J

.field private tickPositionSetTime:J


# direct methods
.method private constructor <init>(Lcom/codemao/midi/javax/impl/SequencerImpl;)V
    .registers 4

    .line 95
    iput-object p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/midi/javax/impl/SequencerImpl;Lcom/codemao/midi/javax/impl/SequencerImpl$1;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;-><init>(Lcom/codemao/midi/javax/impl/SequencerImpl;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;Lcom/codemao/midi/javax/CMMidiMessage;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->fireEventListeners(Lcom/codemao/midi/javax/CMMidiMessage;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->stopPlaying()V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->stopRecording()V

    return-void
.end method

.method static synthetic access$1702(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->getTickPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->startPlaying()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordStartedTick:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingStartedTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    return-object p0
.end method

.method private fireEventListeners(Lcom/codemao/midi/javax/CMMidiMessage;)V
    .registers 7

    .line 229
    instance-of v0, p1, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v0, :cond_2f

    .line 230
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$400(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_b
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$400(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/MetaEventListener;

    .line 233
    move-object v3, p1

    check-cast v3, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-interface {v2, v3}, Lcom/codemao/midi/javax/MetaEventListener;->meta(Lcom/codemao/midi/javax/CMMidiMessage;)V
    :try_end_27
    .catch Ljava/util/ConcurrentModificationException; {:try_start_b .. :try_end_27} :catch_2a
    .catchall {:try_start_b .. :try_end_27} :catchall_28

    goto :goto_15

    :catchall_28
    move-exception p1

    goto :goto_2d

    .line 238
    :catch_2a
    :cond_2a
    :try_start_2a
    monitor-exit v0

    goto/16 :goto_aa

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_28

    throw p1

    .line 239
    :cond_2f
    instance-of v0, p1, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v0, :cond_aa

    .line 240
    move-object v0, p1

    check-cast v0, Lcom/codemao/midi/javax/ShortMessageCM;

    .line 241
    invoke-virtual {v0}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_46

    invoke-virtual {v0}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6d

    .line 242
    :cond_46
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$500(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_4d
    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$500(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/NoteEventListener;

    .line 245
    move-object v4, p1

    check-cast v4, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-interface {v3, v4}, Lcom/codemao/midi/javax/NoteEventListener;->note(Lcom/codemao/midi/javax/ShortMessageCM;)V
    :try_end_69
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4d .. :try_end_69} :catch_6c
    .catchall {:try_start_4d .. :try_end_69} :catchall_6a

    goto :goto_57

    :catchall_6a
    move-exception p1

    goto :goto_a8

    .line 250
    :catch_6c
    :cond_6c
    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6a

    .line 252
    :cond_6d
    invoke-virtual {v0}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result p1

    const/16 v1, 0xb0

    if-ne p1, v1, :cond_aa

    .line 253
    iget-object p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {p1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$600(Lcom/codemao/midi/javax/impl/SequencerImpl;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 255
    :try_start_7c
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$600(Lcom/codemao/midi/javax/impl/SequencerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_a4

    .line 257
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/ControllerEventListener;

    .line 258
    invoke-interface {v2, v0}, Lcom/codemao/midi/javax/ControllerEventListener;->controlChange(Lcom/codemao/midi/javax/ShortMessageCM;)V
    :try_end_a1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7c .. :try_end_a1} :catch_a4
    .catchall {:try_start_7c .. :try_end_a1} :catchall_a2

    goto :goto_92

    :catchall_a2
    move-exception v0

    goto :goto_a6

    .line 264
    :catch_a4
    :cond_a4
    :try_start_a4
    monitor-exit p1

    goto :goto_aa

    :goto_a6
    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a2

    throw v0

    .line 250
    :goto_a8
    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_6a

    throw p1

    :cond_aa
    :goto_aa
    return-void
.end method

.method private getTickPosition()J
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    const/high16 v1, 0x447a0000  # 1000.0f

    if-eqz v0, :cond_22

    .line 104
    iget-wide v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    long-to-float v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v1

    :goto_1d
    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    return-wide v0

    .line 107
    :cond_22
    iget-wide v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    iget-wide v4, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v1

    goto :goto_1d
.end method

.method private isRecordable(Ljava/util/Collection;Lcom/codemao/midi/javax/CMMidiEvent;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/codemao/midi/javax/CMMidiEvent;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, -0x1

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    return v1

    .line 487
    :cond_11
    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiMessage;->getStatus()I

    move-result p2

    and-int/lit16 v0, p2, 0xf0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_38

    const/16 v2, 0x90

    if-eq v0, v2, :cond_38

    const/16 v2, 0xa0

    if-eq v0, v2, :cond_38

    const/16 v2, 0xb0

    if-eq v0, v2, :cond_38

    const/16 v2, 0xc0

    if-eq v0, v2, :cond_38

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_38

    const/16 v2, 0xe0

    if-eq v0, v2, :cond_38

    return v1

    :cond_38
    and-int/lit8 p2, p2, 0xf

    .line 498
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private processTempoChange(Lcom/codemao/midi/javax/MetaMessageCM;)Z
    .registers 7

    .line 438
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getLength()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3b

    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getStatus()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3b

    .line 439
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object p1

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    .line 440
    aget-byte v2, p1, v0

    and-int/2addr v2, v1

    const/16 v3, 0x51

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x5

    .line 441
    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/2addr v4, v1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget-byte p1, p1, v3

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v2

    .line 445
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->setTempoInMPQ(F)V

    return v0

    :cond_3b
    const/4 p1, 0x0

    return p1
.end method

.method private refreshPlayingTrack()V
    .registers 3

    .line 456
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 460
    :cond_9
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    .line 461
    array-length v0, v0

    if-lez v0, :cond_22

    .line 464
    :try_start_16
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->mergeSequenceToTrack(Lcom/codemao/midi/javax/Sequencer;Ljava/util/Map;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;
    :try_end_22
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_16 .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-void
.end method

.method private startPlaying()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopStartPoint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    .line 193
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$002(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z

    .line 195
    monitor-enter p0

    .line 196
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v0
.end method

.method private stopPlaying()V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 206
    monitor-enter p0

    .line 207
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 209
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_11
    move-exception v0

    .line 208
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    .line 213
    :cond_14
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$002(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    .line 217
    monitor-enter p0

    .line 218
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 220
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_29
    move-exception v0

    .line 219
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private stopRecording()V
    .registers 18

    move-object/from16 v0, p0

    .line 142
    iget-object v1, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 147
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 148
    iget-object v3, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$102(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z

    .line 150
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 151
    iget-object v5, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v6, :cond_9d

    aget-object v8, v5, v7

    .line 152
    iget-object v9, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v9}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 155
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    const/4 v10, 0x0

    .line 156
    :goto_3a
    invoke-virtual {v8}, Lcom/codemao/midi/javax/CMMidiTrack;->size()I

    move-result v11

    if-ge v10, v11, :cond_62

    .line 157
    invoke-virtual {v8, v10}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v11

    .line 158
    invoke-direct {v0, v9, v11}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->isRecordable(Ljava/util/Collection;Lcom/codemao/midi/javax/CMMidiEvent;)Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 159
    invoke-virtual {v11}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingStartedTime:J

    cmp-long v16, v12, v14

    if-ltz v16, :cond_5f

    invoke-virtual {v11}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v12

    cmp-long v14, v12, v1

    if-gtz v14, :cond_5f

    .line 160
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 164
    :cond_62
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_66
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_76

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codemao/midi/javax/CMMidiEvent;

    .line 165
    invoke-virtual {v8, v11}, Lcom/codemao/midi/javax/CMMidiTrack;->remove(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    goto :goto_66

    :cond_76
    const/4 v10, 0x0

    .line 169
    :goto_77
    iget-object v11, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v11}, Lcom/codemao/midi/javax/CMMidiTrack;->size()I

    move-result v11

    if-ge v10, v11, :cond_97

    .line 170
    iget-object v11, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v11, v10}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->isRecordable(Ljava/util/Collection;Lcom/codemao/midi/javax/CMMidiEvent;)Z

    move-result v11

    if-eqz v11, :cond_94

    .line 171
    iget-object v11, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->recordingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v11, v10}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    :cond_94
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    .line 175
    :cond_97
    invoke-static {v8}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_9d
    const/4 v1, 0x1

    .line 179
    iput-boolean v1, v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 271
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 273
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    .line 276
    new-instance v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;

    invoke-direct {v0, p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;-><init>(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    .line 292
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_12
    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/Transmitter;

    .line 295
    invoke-interface {v3, v0}, Lcom/codemao/midi/javax/Transmitter;->setReceiver(Lcom/codemao/midi/javax/Receiver;)V

    goto :goto_1c

    .line 297
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_203

    .line 300
    :goto_2d
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_202

    .line 301
    monitor-enter p0

    .line 304
    :goto_36
    :try_start_36
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_49} :catch_4d
    .catchall {:try_start_36 .. :try_end_49} :catchall_4a

    goto :goto_36

    :catchall_4a
    move-exception v0

    goto/16 :goto_200

    .line 310
    :catch_4d
    :cond_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    .line 312
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    if-nez v0, :cond_5e

    .line 313
    iget-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v0, :cond_59

    .line 314
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    .line 317
    :cond_59
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    if-nez v0, :cond_5e

    goto :goto_2d

    :cond_5e
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 323
    :goto_60
    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1f3

    .line 324
    iget-boolean v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v2, :cond_71

    .line 325
    invoke-direct {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->refreshPlayingTrack()V

    :cond_71
    const/4 v2, 0x0

    .line 328
    :goto_72
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiTrack;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e4

    .line 329
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->playingCMMidiTrack:Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-virtual {v3, v2}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v3

    .line 330
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v4

    .line 332
    iget-boolean v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_12f

    .line 334
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_12d

    .line 335
    instance-of v3, v4, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v3, :cond_c8

    .line 337
    move-object v3, v4

    check-cast v3, Lcom/codemao/midi/javax/MetaMessageCM;

    .line 338
    invoke-direct {p0, v3}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->processTempoChange(Lcom/codemao/midi/javax/MetaMessageCM;)Z

    move-result v3

    if-nez v3, :cond_1e0

    .line 340
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 341
    :try_start_a8
    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/midi/javax/Receiver;

    .line 342
    invoke-interface {v8, v4, v6, v7}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    goto :goto_b2

    .line 344
    :cond_c2
    monitor-exit v3

    goto/16 :goto_1e0

    :catchall_c5
    move-exception v0

    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_a8 .. :try_end_c7} :catchall_c5

    throw v0

    .line 346
    :cond_c8
    instance-of v3, v4, Lcom/codemao/midi/javax/SysexMessageCM;

    if-eqz v3, :cond_f3

    .line 348
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 349
    :try_start_d3
    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_dd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/midi/javax/Receiver;

    .line 350
    invoke-interface {v8, v4, v6, v7}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    goto :goto_dd

    .line 352
    :cond_ed
    monitor-exit v3

    goto/16 :goto_1e0

    :catchall_f0
    move-exception v0

    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_d3 .. :try_end_f2} :catchall_f0

    throw v0

    .line 353
    :cond_f3
    instance-of v3, v4, Lcom/codemao/midi/javax/ShortMessageCM;

    if-eqz v3, :cond_1e0

    .line 355
    move-object v3, v4

    check-cast v3, Lcom/codemao/midi/javax/ShortMessageCM;

    .line 356
    invoke-virtual {v3}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v3

    const/16 v5, 0x80

    if-eq v3, v5, :cond_1e0

    const/16 v5, 0x90

    if-eq v3, v5, :cond_1e0

    .line 361
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 362
    :try_start_10d
    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_117
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_127

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/midi/javax/Receiver;

    .line 363
    invoke-interface {v8, v4, v6, v7}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    goto :goto_117

    .line 365
    :cond_127
    monitor-exit v3

    goto/16 :goto_1e0

    :catchall_12a
    move-exception v0

    monitor-exit v3
    :try_end_12c
    .catchall {:try_start_10d .. :try_end_12c} :catchall_12a

    throw v0

    .line 373
    :cond_12d
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    .line 377
    :cond_12f
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopStartPoint()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1d4

    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopEndPoint()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_159

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    iget-object v5, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v5}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopEndPoint()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-lez v5, :cond_159

    goto/16 :goto_1d4

    :cond_159
    const/high16 v5, 0x3f800000  # 1.0f

    .line 385
    :try_start_15b
    iget-object v8, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v8}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v8

    div-float/2addr v5, v8

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    mul-float v5, v5, v8

    const/high16 v8, 0x447a0000  # 1000.0f

    div-float/2addr v5, v8

    iget-object v8, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v8}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTempoFactor()F

    move-result v8

    div-float/2addr v5, v8

    float-to-long v8, v5

    cmp-long v5, v8, v6

    if-lez v5, :cond_17e

    .line 387
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 389
    :cond_17e
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J
    :try_end_18a
    .catch Ljava/lang/InterruptedException; {:try_start_15b .. :try_end_18a} :catch_18b

    goto :goto_18c

    :catch_18b
    nop

    .line 395
    :goto_18c
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result v3

    if-nez v3, :cond_195

    goto :goto_1e4

    .line 399
    :cond_195
    iget-boolean v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->needRefreshPlayingTrack:Z

    if-eqz v3, :cond_19a

    goto :goto_1e4

    .line 404
    :cond_19a
    instance-of v3, v4, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v3, :cond_1ab

    .line 405
    move-object v3, v4

    check-cast v3, Lcom/codemao/midi/javax/MetaMessageCM;

    .line 406
    invoke-direct {p0, v3}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->processTempoChange(Lcom/codemao/midi/javax/MetaMessageCM;)Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 407
    invoke-direct {p0, v4}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->fireEventListeners(Lcom/codemao/midi/javax/CMMidiMessage;)V

    goto :goto_1e0

    .line 415
    :cond_1ab
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    .line 416
    :try_start_1b2
    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/midi/javax/Receiver;

    .line 417
    invoke-interface {v8, v4, v6, v7}, Lcom/codemao/midi/javax/Receiver;->send(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    goto :goto_1bc

    .line 419
    :cond_1cc
    monitor-exit v5
    :try_end_1cd
    .catchall {:try_start_1b2 .. :try_end_1cd} :catchall_1d1

    .line 421
    invoke-direct {p0, v4}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->fireEventListeners(Lcom/codemao/midi/javax/CMMidiMessage;)V

    goto :goto_1e0

    :catchall_1d1
    move-exception v0

    .line 419
    :try_start_1d2
    monitor-exit v5
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    throw v0

    .line 379
    :cond_1d4
    :goto_1d4
    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPosition:J

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->tickPositionSetTime:J

    :cond_1e0
    :goto_1e0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_72

    .line 323
    :cond_1e4
    :goto_1e4
    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getLoopCount()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1ef

    goto/16 :goto_60

    :cond_1ef
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_60

    .line 426
    :cond_1f3
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {v1, v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$002(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->runningStoppedTime:J

    goto/16 :goto_2d

    .line 310
    :goto_200
    :try_start_200
    monitor-exit p0
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_4a

    throw v0

    :cond_202
    return-void

    :catchall_203
    move-exception v0

    .line 297
    :try_start_204
    monitor-exit v1
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    throw v0
.end method
