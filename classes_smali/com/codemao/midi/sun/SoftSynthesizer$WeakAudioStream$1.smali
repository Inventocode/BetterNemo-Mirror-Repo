.class Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;
.super Ljava/lang/Object;
.source "SoftSynthesizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->read([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field _pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

.field _sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->this$0:Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 117
    iget-object v0, p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 118
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioPusher;->stop()V

    .line 122
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    if-eqz v0, :cond_11

    .line 124
    :try_start_9
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;->_sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    if-eqz v0, :cond_18

    .line 129
    invoke-interface {v0}, Lcom/codemao/midi/javax/sampled/Line;->close()V

    :cond_18
    return-void
.end method
