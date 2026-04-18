.class public Lcom/codemao/midi/sun/SoftChannelProxy;
.super Ljava/lang/Object;
.source "SoftChannelProxy.java"

# interfaces
.implements Lcom/codemao/midi/javax/MidiChannel;


# instance fields
.field private channel:Lcom/codemao/midi/javax/MidiChannel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChannelProxy;->channel:Lcom/codemao/midi/javax/MidiChannel;

    return-void
.end method


# virtual methods
.method public controlChange(II)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannelProxy;->channel:Lcom/codemao/midi/javax/MidiChannel;

    if-nez v0, :cond_5

    return-void

    .line 62
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/codemao/midi/javax/MidiChannel;->controlChange(II)V

    return-void
.end method

.method public programChange(I)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannelProxy;->channel:Lcom/codemao/midi/javax/MidiChannel;

    if-nez v0, :cond_5

    return-void

    .line 146
    :cond_5
    invoke-interface {v0, p1}, Lcom/codemao/midi/javax/MidiChannel;->programChange(I)V

    return-void
.end method

.method public setChannel(Lcom/codemao/midi/javax/MidiChannel;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannelProxy;->channel:Lcom/codemao/midi/javax/MidiChannel;

    return-void
.end method
