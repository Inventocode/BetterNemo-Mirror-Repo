.class public Lcom/codemao/midi/javax/impl/SequencerImpl;
.super Ljava/lang/Object;
.source "SequencerImpl.java"

# interfaces
.implements Lcom/codemao/midi/javax/Sequencer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;
    }
.end annotation


# instance fields
.field private final controllerEventListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/codemao/midi/javax/ControllerEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile isOpen:Z

.field private volatile isRecording:Z

.field private volatile isRunning:Z

.field private loopCount:I

.field private loopEndPoint:J

.field private loopStartPoint:J

.field private final metaEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/codemao/midi/javax/MetaEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private midiFile:Lcom/codemao/midi/javax/CMMidiFile;

.field private final noteEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/codemao/midi/javax/NoteEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final recordEnable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/codemao/midi/javax/CMMidiTrack;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

.field private volatile tempoFactor:F

.field private tempoInBPM:F

.field private final trackMute:Landroid/util/SparseBooleanArray;

.field private final trackSolo:Landroid/util/SparseBooleanArray;

.field private final transmitters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Transmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    sget-object v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->INTERNAL_CLOCK:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    .line 48
    sget-object v0, Lcom/codemao/midi/javax/Sequencer$SyncMode;->NO_SYNC:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->noteEventListeners:Ljava/util/Set;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    .line 58
    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isOpen:Z

    .line 60
    iput v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopCount:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopStartPoint:J

    const-wide/16 v1, -0x1

    .line 62
    iput-wide v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopEndPoint:J

    const/high16 v1, 0x3f800000  # 1.0f

    .line 63
    iput v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->tempoFactor:F

    .line 64
    sget-object v1, Lcom/codemao/midi/javax/Sequencer$SyncMode;->INTERNAL_CLOCK:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    .line 65
    sget-object v1, Lcom/codemao/midi/javax/Sequencer$SyncMode;->NO_SYNC:Lcom/codemao/midi/javax/Sequencer$SyncMode;

    .line 66
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->trackMute:Landroid/util/SparseBooleanArray;

    .line 67
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->trackSolo:Landroid/util/SparseBooleanArray;

    const/high16 v1, 0x42f00000  # 120.0f

    .line 68
    iput v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->tempoInBPM:F

    .line 70
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRunning:Z

    .line 71
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRecording:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRunning:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRecording:Z

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/midi/javax/impl/SequencerImpl;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isOpen:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/List;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/midi/javax/impl/SequencerImpl;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Map;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->recordEnable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/midi/javax/impl/SequencerImpl;)Ljava/util/Set;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->noteEventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/midi/javax/impl/SequencerImpl;)Landroid/util/SparseArray;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 552
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 553
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4c

    .line 555
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v1

    .line 556
    :try_start_c
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 557
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_49

    .line 559
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_24

    .line 560
    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1500(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    .line 561
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1600(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isOpen:Z

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    .line 566
    :cond_24
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 567
    :try_start_27
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->metaEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 568
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_46

    .line 569
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->noteEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 570
    :try_start_30
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->noteEventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 571
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_43

    .line 573
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 574
    :try_start_39
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->controllerEventListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 575
    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_40

    throw v1

    :catchall_43
    move-exception v0

    .line 571
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :catchall_46
    move-exception v1

    .line 568
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1

    :catchall_49
    move-exception v0

    .line 557
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0

    :catchall_4c
    move-exception v1

    .line 553
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getCMMidiFile()Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    return-object v0
.end method

.method public getCurrentDuration()J
    .registers 5

    .line 1009
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getMidiDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTickPosition()J

    move-result-wide v2

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTickLength()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDeviceInfo()Lcom/codemao/midi/javax/MidiDevice$Info;
    .registers 6

    .line 515
    new-instance v0, Lcom/codemao/midi/javax/MidiDevice$Info;

    const-string v1, "Sequencer"

    const-string v2, "jp.kshoji"

    const-string v3, "Android MIDI Sequencer"

    const-string v4, "0.1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/midi/javax/MidiDevice$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 715
    iget v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopCount:I

    return v0
.end method

.method public getLoopEndPoint()J
    .registers 3

    .line 741
    iget-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopEndPoint:J

    return-wide v0
.end method

.method public getLoopStartPoint()J
    .registers 3

    .line 728
    iget-wide v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->loopStartPoint:J

    return-wide v0
.end method

.method public getReceivers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 614
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getTempoFactor()F
    .registers 2

    .line 852
    iget v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->tempoFactor:F

    return v0
.end method

.method public getTickLength()J
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 889
    :cond_7
    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getTickLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTickPosition()J
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 897
    :cond_7
    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1800(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTicksPerMicrosecond()F
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    if-nez v0, :cond_7

    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0

    .line 794
    :cond_7
    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getDivisionType()F

    move-result v0

    const/4 v1, 0x0

    const v2, 0x49742400  # 1000000.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 796
    iget v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->tempoInBPM:F

    const/high16 v1, 0x42700000  # 60.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiFile;->getResolution()I

    move-result v1

    goto :goto_2b

    .line 799
    :cond_1f
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getDivisionType()F

    move-result v0

    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiFile;->getResolution()I

    move-result v1

    :goto_2b
    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float/2addr v0, v2

    return v0
.end method

.method public getTotalDuration()J
    .registers 3

    .line 1005
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getMidiDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackMute(I)Z
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->trackMute:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public getTrackSolo(I)Z
    .registers 3

    .line 919
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->trackSolo:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public getTransmitters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Transmitter;",
            ">;"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v0

    .line 633
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 634
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isRecording()Z
    .registers 2

    .line 971
    iget-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRecording:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 992
    iget-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isRunning:Z

    return v0
.end method

.method public open()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    monitor-enter v0

    .line 522
    :try_start_3
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 523
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->receivers:Ljava/util/List;

    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem$MidiSystemUtils;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 524
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_62

    .line 526
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    monitor-enter v1

    .line 527
    :try_start_15
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 528
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->transmitters:Ljava/util/List;

    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem$MidiSystemUtils;->getTransmitters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_5f

    .line 531
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-nez v0, :cond_4f

    .line 532
    new-instance v0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;-><init>(Lcom/codemao/midi/javax/impl/SequencerImpl;Lcom/codemao/midi/javax/impl/SequencerImpl$1;)V

    iput-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MidiSequencer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 535
    :try_start_4a
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4f
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4a .. :try_end_4f} :catch_4f

    :catch_4f
    :cond_4f
    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->isOpen:Z

    .line 542
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    monitor-enter v0

    .line 543
    :try_start_55
    iget-object v1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 544
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw v1

    :catchall_5f
    move-exception v0

    .line 529
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0

    :catchall_62
    move-exception v1

    .line 524
    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public setSequence(Lcom/codemao/midi/javax/CMMidiFile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->midiFile:Lcom/codemao/midi/javax/CMMidiFile;

    .line 824
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 825
    invoke-static {v0, p1}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1702(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;Z)Z

    :cond_c
    return-void
.end method

.method public setTempoInMPQ(F)V
    .registers 3

    const v0, 0x4c64e1c0  # 6.0E7f

    div-float/2addr v0, p1

    .line 881
    iput v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->tempoInBPM:F

    return-void
.end method

.method public start()V
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_7

    .line 986
    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$2100(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    :cond_7
    return-void
.end method

.method public stop()V
    .registers 2

    .line 998
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    if-eqz v0, :cond_c

    .line 999
    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1600(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    .line 1000
    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl;->sequencerThread:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1500(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V

    :cond_c
    return-void
.end method
