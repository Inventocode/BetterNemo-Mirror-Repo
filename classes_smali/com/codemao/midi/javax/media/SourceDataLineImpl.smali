.class public Lcom/codemao/midi/javax/media/SourceDataLineImpl;
.super Ljava/lang/Object;
.source "SourceDataLineImpl.java"

# interfaces
.implements Lcom/codemao/midi/javax/sampled/SourceDataLine;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferSize:I

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFormat;)V
    .registers 9

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v6, Lcom/codemao/midi/javax/sampled/AudioFormat;

    const v1, 0x472c4400  # 44100.0f

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v6, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 23
    iput-object p1, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    .line 55
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 56
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    :cond_f
    return-void
.end method

.method public getBufferSize()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 87
    iget v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->bufferSize:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRunning()Z
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 69
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public open(Lcom/codemao/midi/javax/sampled/AudioFormat;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/LineUnavailableException;
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 166
    iput p2, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->bufferSize:I

    .line 167
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v3, v0

    .line 170
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 p1, 0x4

    const/4 v4, 0x4

    goto :goto_1e

    .line 172
    :cond_13
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2b

    const/16 p1, 0xc

    const/16 v4, 0xc

    .line 178
    :goto_1e
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    return-void

    .line 175
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format.getChannels() must in (1,2)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_7
    return-void
.end method

.method public write([BII)I
    .registers 8

    .line 209
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget-byte v3, p1, v2

    if-eqz v3, :cond_b

    const/4 v0, 0x1

    goto :goto_f

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    .line 215
    :goto_f
    iget-object v2, p0, Lcom/codemao/midi/javax/media/SourceDataLineImpl;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 216
    invoke-virtual {v2, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1

    :cond_1a
    return v1
.end method
