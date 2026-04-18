.class public Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;
.super Ljava/io/InputStream;
.source "SoftSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeakAudioStream"
.end annotation


# instance fields
.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private framesize:I

.field public jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field public pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

.field private samplesize:I

.field public volatile silent_samples:J

.field private silentbuffer:[F

.field public sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

.field private volatile stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field private weak_stream_link:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/midi/javax/sampled/AudioInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 70
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 71
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    const-wide/16 v1, 0x0

    .line 72
    iput-wide v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->framesize:I

    .line 76
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    .line 142
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    .line 144
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 145
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->samplesize:I

    .line 146
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->framesize:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->available()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    if-eqz v0, :cond_d

    .line 158
    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->close()V

    :cond_d
    return-void
.end method

.method public getAudioInputStream()Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 5

    .line 151
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    return v2

    :cond_b
    const/4 v1, 0x0

    .line 95
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([BII)I

    move-result p1

    return p1

    .line 104
    :cond_9
    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->samplesize:I

    div-int v0, p3, v0

    .line 105
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    if-eqz v1, :cond_14

    array-length v1, v1

    if-ge v1, v0, :cond_18

    .line 106
    :cond_14
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    .line 107
    :cond_18
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iget-object v2, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silentbuffer:[F

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FI[BI)[B

    .line 109
    iget-wide p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    iget v0, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->framesize:I

    div-int v0, p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->silent_samples:J

    .line 111
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    if-eqz p1, :cond_49

    .line 112
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->weak_stream_link:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_49

    .line 114
    new-instance p1, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;

    invoke-direct {p1, p0}, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream$1;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;)V

    const/4 p2, 0x0

    .line 132
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->pusher:Lcom/codemao/midi/sun/SoftAudioPusher;

    .line 133
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->jitter_stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 134
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    .line 135
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_49
    return p3
.end method

.method public setInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftSynthesizer$WeakAudioStream;->stream:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    return-void
.end method
