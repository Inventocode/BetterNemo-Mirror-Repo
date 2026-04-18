.class public Lcom/codemao/midi/javax/MidiSystem$MidiSystemUtils;
.super Ljava/lang/Object;
.source "MidiSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/MidiSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiSystemUtils"
.end annotation


# direct methods
.method public static getReceivers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Receiver;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem;->getMidiDeviceInfo()[Lcom/codemao/midi/javax/MidiDevice$Info;

    move-result-object v1

    .line 91
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 92
    invoke-static {v4}, Lcom/codemao/midi/javax/MidiSystem;->getMidiDevice(Lcom/codemao/midi/javax/MidiDevice$Info;)Lcom/codemao/midi/javax/MidiDevice;

    move-result-object v4

    invoke-interface {v4}, Lcom/codemao/midi/javax/MidiDevice;->getReceivers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public static getTransmitters()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/javax/Transmitter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/MidiUnavailableException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-static {}, Lcom/codemao/midi/javax/MidiSystem;->getMidiDeviceInfo()[Lcom/codemao/midi/javax/MidiDevice$Info;

    move-result-object v1

    .line 108
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 109
    invoke-static {v4}, Lcom/codemao/midi/javax/MidiSystem;->getMidiDevice(Lcom/codemao/midi/javax/MidiDevice$Info;)Lcom/codemao/midi/javax/MidiDevice;

    move-result-object v4

    invoke-interface {v4}, Lcom/codemao/midi/javax/MidiDevice;->getTransmitters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1d
    return-object v0
.end method
