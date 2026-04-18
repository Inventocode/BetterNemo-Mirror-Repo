.class public interface abstract Lcom/codemao/midi/javax/MidiDevice;
.super Ljava/lang/Object;
.source "MidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/MidiDevice$Info;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDeviceInfo()Lcom/codemao/midi/javax/MidiDevice$Info;
.end method

.method public abstract getReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransmitters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Transmitter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation
.end method
