.class Lcom/codemao/midi/sun/SoftSynthesizer$Info;
.super Lcom/codemao/midi/javax/MidiDevice$Info;
.source "SoftSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "Gervill"

    const-string v1, "OpenJDK"

    const-string v2, "Software MIDI Synthesizer"

    const-string v3, "1.0"

    .line 164
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/midi/javax/MidiDevice$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
