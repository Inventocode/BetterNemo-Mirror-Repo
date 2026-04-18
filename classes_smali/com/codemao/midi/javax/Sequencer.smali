.class public interface abstract Lcom/codemao/midi/javax/Sequencer;
.super Ljava/lang/Object;
.source "Sequencer.java"

# interfaces
.implements Lcom/codemao/midi/javax/MidiDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/Sequencer$SyncMode;
    }
.end annotation


# virtual methods
.method public abstract getCMMidiFile()Lcom/codemao/midi/javax/CMMidiFile;
.end method

.method public abstract getCurrentDuration()J
.end method

.method public abstract getTotalDuration()J
.end method

.method public abstract getTrackMute(I)Z
.end method

.method public abstract getTrackSolo(I)Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract setSequence(Lcom/codemao/midi/javax/CMMidiFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
