.class public abstract Lcom/codemao/midi/sun/ModelInstrument;
.super Lcom/codemao/midi/javax/Instrument;
.source "ModelInstrument.java"


# direct methods
.method protected constructor <init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/Soundbank;",
            "Lcom/codemao/midi/javax/Patch;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/midi/javax/Instrument;-><init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getChannelMixer(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/ModelChannelMixer;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDirector([Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/sun/ModelDirectedPlayer;)Lcom/codemao/midi/sun/ModelDirector;
    .registers 4

    .line 59
    new-instance p2, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;

    invoke-direct {p2, p1, p3}, Lcom/codemao/midi/sun/ModelStandardIndexedDirector;-><init>([Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/sun/ModelDirectedPlayer;)V

    return-object p2
.end method

.method public getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/codemao/midi/sun/ModelPerformer;

    return-object v0
.end method
