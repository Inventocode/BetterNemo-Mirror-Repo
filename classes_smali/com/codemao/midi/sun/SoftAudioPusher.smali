.class public Lcom/codemao/midi/sun/SoftAudioPusher;
.super Ljava/lang/Object;
.source "SoftAudioPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile active:Z

.field private ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

.field private audiothread:Ljava/lang/Thread;

.field private buffer:[B

.field private sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/SourceDataLine;Lcom/codemao/midi/javax/sampled/AudioInputStream;I)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    .line 47
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 48
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->buffer:[B

    .line 49
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->buffer:[B

    .line 75
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->ais:Lcom/codemao/midi/javax/sampled/AudioInputStream;

    .line 76
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->sourceDataLine:Lcom/codemao/midi/javax/sampled/SourceDataLine;

    :goto_6
    const/4 v3, 0x0

    .line 79
    :try_start_7
    iget-boolean v4, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z

    if-eqz v4, :cond_18

    .line 81
    invoke-virtual {v1, v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_12

    goto :goto_18

    .line 84
    :cond_12
    invoke-interface {v2, v0, v3, v4}, Lcom/codemao/midi/javax/sampled/SourceDataLine;->write([BII)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_6

    .line 87
    :catch_16
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z

    :cond_18
    :goto_18
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 53
    :try_start_1
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-eqz v0, :cond_7

    .line 54
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 55
    :try_start_8
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z

    .line 56
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 58
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 59
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    .line 60
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    .line 63
    :try_start_1
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    .line 64
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 65
    :try_start_8
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->active:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_11

    .line 67
    :try_start_a
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioPusher;->audiothread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    .line 71
    :catch_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
