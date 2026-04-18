.class public abstract Lcom/codemao/creativecenter/utils/Mp3PlayController;
.super Ljava/lang/Object;
.source "Mp3PlayController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

.field public playBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentPosition()J
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    instance-of v1, v0, Lcom/codemao/creativestore/bean/SoundVO;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2c

    .line 86
    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 87
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_1b

    goto :goto_2b

    :cond_1b
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/CMMidiHelper;->getCurrentDuration(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2b
    return-wide v2

    .line 90
    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_31

    goto :goto_40

    :cond_31
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->getCurrentTime(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :goto_40
    return-wide v2
.end method

.method public getDuration()J
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    instance-of v1, v0, Lcom/codemao/creativestore/bean/SoundVO;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2c

    .line 96
    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_1b

    goto :goto_2b

    :cond_1b
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/CMMidiHelper;->getTotalDuration(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2b
    return-wide v2

    .line 100
    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_31

    goto :goto_40

    :cond_31
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->getTotleTime(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :goto_40
    return-wide v2
.end method

.method public abstract getUrl(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isPlaying()Z
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    instance-of v1, v0, Lcom/codemao/creativestore/bean/SoundVO;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 63
    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 64
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_1a

    goto :goto_2a

    :cond_1a
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/CMMidiHelper;->isRuning(Ljava/lang/String;)Z

    move-result v2

    :goto_2a
    return v2

    .line 67
    :cond_2b
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-nez v0, :cond_30

    goto :goto_3e

    :cond_30
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v2

    :goto_3e
    return v2
.end method

.method public abstract onError(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onPlay(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public play(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    .line 29
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->onPlay(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    instance-of v1, v0, Lcom/codemao/creativestore/bean/SoundVO;

    if-eqz v1, :cond_42

    .line 31
    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 32
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/midi/CMMidiHelper;->playMidiFile(Ljava/lang/String;Ljava/io/File;Z)V

    .line 34
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    invoke-interface {p1}, Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;->onAudioPlayStart()V

    return-void

    .line 38
    :cond_42
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/AudioPlayer;->playSingleMusic(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    goto :goto_53

    .line 40
    :catch_4e
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->onError(Ljava/lang/Object;)V

    :goto_53
    return-void
.end method

.method public setOnAudioPlayerListener(Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    .line 81
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/AudioPlayer;->setAudioPlayerListener(Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3

    .line 76
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/AudioPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public stop(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/codemao/midi/CMMidiHelper;->getInstance()Lcom/codemao/midi/CMMidiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/CMMidiHelper;->stopAll()V

    .line 56
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V

    return-void
.end method
