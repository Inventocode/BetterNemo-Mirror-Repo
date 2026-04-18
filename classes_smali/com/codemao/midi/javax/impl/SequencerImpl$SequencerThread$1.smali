.class Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;
.super Ljava/lang/Object;
.source "SequencerImpl.java"

# interfaces
.implements Lcom/codemao/midi/javax/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;


# direct methods
.method constructor <init>(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public send(Lcom/codemao/midi/javax/CMMidiMessage;J)V
    .registers 9

    .line 279
    iget-object p2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    iget-object p2, p2, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-static {p2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->access$100(Lcom/codemao/midi/javax/impl/SequencerImpl;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 280
    iget-object p2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {p2}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$900(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    new-instance p3, Lcom/codemao/midi/javax/CMMidiEvent;

    iget-object v0, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {v0}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$700(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {v3}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$800(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000  # 1000.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    iget-object v2, v2, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->this$0:Lcom/codemao/midi/javax/impl/SequencerImpl;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/impl/SequencerImpl;->getTicksPerMicrosecond()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p3, p1, v0, v1}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p2, p3}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    .line 283
    :cond_3b
    iget-object p2, p0, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread$1;->this$1:Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;

    invoke-static {p2, p1}, Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;->access$1000(Lcom/codemao/midi/javax/impl/SequencerImpl$SequencerThread;Lcom/codemao/midi/javax/CMMidiMessage;)V

    return-void
.end method
