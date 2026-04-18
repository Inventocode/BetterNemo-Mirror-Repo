.class public interface abstract Lcom/codemao/midi/javax/sampled/SourceDataLine;
.super Ljava/lang/Object;
.source "SourceDataLine.java"

# interfaces
.implements Lcom/codemao/midi/javax/sampled/DataLine;


# virtual methods
.method public abstract open(Lcom/codemao/midi/javax/sampled/AudioFormat;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/LineUnavailableException;
        }
    .end annotation
.end method

.method public abstract write([BII)I
.end method
