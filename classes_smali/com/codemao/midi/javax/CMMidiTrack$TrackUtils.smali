.class public Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;
.super Ljava/lang/Object;
.source "CMMidiTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/CMMidiTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackUtils"
.end annotation


# direct methods
.method public static mergeSequenceToTrack(Lcom/codemao/midi/javax/Sequencer;Ljava/util/Map;)Lcom/codemao/midi/javax/CMMidiTrack;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/Sequencer;",
            "Ljava/util/Map<",
            "Lcom/codemao/midi/javax/CMMidiTrack;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/codemao/midi/javax/CMMidiTrack;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    .line 91
    invoke-interface {p0}, Lcom/codemao/midi/javax/Sequencer;->getCMMidiFile()Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/codemao/midi/javax/CMMidiTrack;

    invoke-direct {v1}, Lcom/codemao/midi/javax/CMMidiTrack;-><init>()V

    if-nez v0, :cond_10

    .line 97
    invoke-static {}, Lcom/codemao/midi/javax/CMMidiTrack;->access$000()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    goto :goto_14

    .line 99
    :cond_10
    invoke-virtual {v0}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object v0

    :goto_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 103
    :goto_16
    array-length v4, v0

    if-ge v3, v4, :cond_24

    .line 104
    invoke-interface {p0, v3}, Lcom/codemao/midi/javax/Sequencer;->getTrackSolo(I)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v3, 0x1

    goto :goto_25

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_24
    const/4 v3, 0x0

    .line 110
    :goto_25
    array-length v4, v0

    if-ge v2, v4, :cond_61

    .line 111
    invoke-interface {p0, v2}, Lcom/codemao/midi/javax/Sequencer;->getTrackMute(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_5e

    :cond_2f
    if-eqz v3, :cond_38

    .line 115
    invoke-interface {p0, v2}, Lcom/codemao/midi/javax/Sequencer;->getTrackSolo(I)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_5e

    .line 119
    :cond_38
    invoke-interface {p0}, Lcom/codemao/midi/javax/Sequencer;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_55

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_55

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_55

    goto :goto_5e

    .line 124
    :cond_55
    iget-object v4, v1, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 127
    :cond_61
    invoke-static {v1}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    return-object v1
.end method

.method public static sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V
    .registers 9

    .line 138
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    monitor-enter v0

    .line 140
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/CMMidiEvent;

    if-eqz v3, :cond_e

    .line 143
    invoke-static {}, Lcom/codemao/midi/javax/CMMidiTrack;->access$100()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_e

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 148
    :cond_32
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 149
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    sget-object v2, Lcom/codemao/midi/javax/CMMidiTrack;->midiEventComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 156
    iget-object p0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    new-instance v1, Lcom/codemao/midi/javax/CMMidiEvent;

    new-instance v2, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-static {}, Lcom/codemao/midi/javax/CMMidiTrack;->access$100()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>([B)V

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 158
    :cond_61
    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    new-instance v2, Lcom/codemao/midi/javax/CMMidiEvent;

    new-instance v3, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-static {}, Lcom/codemao/midi/javax/CMMidiTrack;->access$100()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>([B)V

    iget-object p0, p0, Lcom/codemao/midi/javax/CMMidiTrack;->events:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    add-long/2addr v4, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_89
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw p0
.end method
