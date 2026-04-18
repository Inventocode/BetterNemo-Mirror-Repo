.class public final Lcom/codemao/midi/javax/MidiSystem;
.super Ljava/lang/Object;
.source "MidiSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/MidiSystem$MidiSystemUtils;
    }
.end annotation


# static fields
.field private static final midiDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/codemao/midi/javax/MidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final standardMidiFileReader:Lcom/codemao/midi/javax/io/StandardMidiFileReader;

.field private static final synthesizers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/codemao/midi/javax/Synthesizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/codemao/midi/javax/MidiSystem;->midiDevices:Ljava/util/Collection;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/codemao/midi/javax/MidiSystem;->synthesizers:Ljava/util/Collection;

    .line 29
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileReader;

    invoke-direct {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;-><init>()V

    sput-object v0, Lcom/codemao/midi/javax/MidiSystem;->standardMidiFileReader:Lcom/codemao/midi/javax/io/StandardMidiFileReader;

    .line 30
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;

    invoke-direct {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;-><init>()V

    return-void
.end method

.method public static addMidiDevice(Lcom/codemao/midi/javax/MidiDevice;)V
    .registers 2

    .line 38
    sget-object v0, Lcom/codemao/midi/javax/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v0

    .line 39
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static addSynthesizer(Lcom/codemao/midi/javax/Synthesizer;)V
    .registers 2

    .line 60
    sget-object v0, Lcom/codemao/midi/javax/MidiSystem;->synthesizers:Ljava/util/Collection;

    monitor-enter v0

    .line 61
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static getMidiDevice(Lcom/codemao/midi/javax/MidiDevice$Info;)Lcom/codemao/midi/javax/MidiDevice;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/codemao/midi/javax/MidiSystem;->midiDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 155
    monitor-enter v0

    .line 156
    :try_start_9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/javax/MidiDevice;

    .line 157
    invoke-interface {v2}, Lcom/codemao/midi/javax/MidiDevice;->getDeviceInfo()Lcom/codemao/midi/javax/MidiDevice$Info;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/codemao/midi/javax/MidiDevice$Info;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 158
    monitor-exit v0

    return-object v2

    .line 161
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_3d

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested device not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3d
    move-exception p0

    .line 161
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    .line 152
    :cond_40
    new-instance p0, Lcom/codemao/midi/javax/MidiUnavailableException;

    const-string v0, "MidiDevice not found"

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/MidiUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMidiDeviceInfo()[Lcom/codemao/midi/javax/MidiDevice$Info;
    .registers 4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    sget-object v1, Lcom/codemao/midi/javax/MidiSystem;->midiDevices:Ljava/util/Collection;

    monitor-enter v1

    .line 131
    :try_start_8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/javax/MidiDevice;

    .line 132
    invoke-interface {v3}, Lcom/codemao/midi/javax/MidiDevice;->getDeviceInfo()Lcom/codemao/midi/javax/MidiDevice$Info;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 134
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 137
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_30

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/codemao/midi/javax/MidiDevice$Info;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/midi/javax/MidiDevice$Info;

    return-object v0

    :catchall_30
    move-exception v0

    .line 137
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public static getSequence(Ljava/io/File;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/codemao/midi/javax/MidiSystem;->standardMidiFileReader:Lcom/codemao/midi/javax/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->getSequence(Ljava/io/File;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p0

    return-object p0
.end method

.method public static getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/codemao/midi/javax/MidiSystem;->standardMidiFileReader:Lcom/codemao/midi/javax/io/StandardMidiFileReader;

    invoke-virtual {v0, p0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p0

    return-object p0
.end method

.method public static getSequencer()Lcom/codemao/midi/javax/Sequencer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-direct {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl;-><init>()V

    return-object v0
.end method
