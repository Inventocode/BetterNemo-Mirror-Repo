.class public Lcom/codemao/creativestore/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/AudioPlayer$AudioBean;,
        Lcom/codemao/creativestore/AudioPlayer$Holder;,
        Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;,
        Lcom/codemao/creativestore/AudioPlayer$AudioThread;
    }
.end annotation


# instance fields
.field private OnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private allPlaysound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/AudioPlayer$AudioBean;",
            ">;"
        }
    .end annotation
.end field

.field private audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

.field private audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$MwQhLJwIcxcF9hSzxq9qXRuwb9w(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer;->lambda$playAudio$1(Lcom/codemao/creativestore/AudioPlayer$AudioBean;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ud3ZULUMrSXMW2OqBK_1iWzMIOQ(Lcom/codemao/creativestore/AudioPlayer;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer;->lambda$playAudio$0(Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativestore/AudioPlayer$1;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/codemao/creativestore/AudioPlayer;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->stopMusic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativestore/AudioPlayer;)Ljava/util/ArrayList;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->playAudio(Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    return-void
.end method

.method private getPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 161
    :try_start_2
    iget-object v2, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 162
    iget-object v2, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    if-eqz v2, :cond_20

    .line 163
    iget-object v3, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->url:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 164
    iget-object p1, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_23

    move-object v1, p1

    goto :goto_23

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_23
    :cond_23
    :goto_23
    return-object v1
.end method

.method public static getPlayer()Lcom/codemao/creativestore/AudioPlayer;
    .registers 1

    .line 137
    invoke-static {}, Lcom/codemao/creativestore/AudioPlayer$Holder;->access$500()Lcom/codemao/creativestore/AudioPlayer;

    move-result-object v0

    return-object v0
.end method

.method private initThread()V
    .registers 3

    .line 67
    new-instance v0, Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;-><init>(Lcom/codemao/creativestore/AudioPlayer$1;)V

    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$playAudio$0(Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->OnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_7

    .line 114
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_7
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->OnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 118
    iget-object v1, p2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz v1, :cond_11

    .line 119
    invoke-interface {v1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    .line 121
    :cond_11
    iput-object v0, p2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    .line 123
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private synthetic lambda$playAudio$1(Lcom/codemao/creativestore/AudioPlayer$AudioBean;Landroid/media/MediaPlayer;)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativestore/AudioPlayer;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playAudio(Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 6

    .line 102
    iget-object v0, p1, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->url:Ljava/lang/String;

    .line 103
    iget-object v1, p1, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    :try_start_4
    const-string v2, "res/raw/"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_28

    .line 108
    :cond_25
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 110
    :goto_28
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 111
    new-instance v2, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 126
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 127
    iget-object p1, p0, Lcom/codemao/creativestore/AudioPlayer;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    if-eqz p1, :cond_45

    .line 128
    invoke-interface {p1}, Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;->onAudioPlayStart()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_3e

    goto :goto_45

    :catch_3e
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    invoke-direct {p0, v0}, Lcom/codemao/creativestore/AudioPlayer;->stopMusic(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void
.end method

.method private stopAllMusic()V
    .registers 5

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 226
    iget-object v2, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    const/4 v3, 0x0

    .line 227
    iput-object v3, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    .line 228
    iget-object v3, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 229
    iget-object v3, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 231
    :cond_23
    iget-object v2, v2, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 235
    :cond_2b
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method

.method private stopMusic(Ljava/lang/String;)V
    .registers 3

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "all"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_13

    .line 275
    :cond_f
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->stopSingleMusic(Ljava/lang/String;)V

    goto :goto_16

    .line 273
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/codemao/creativestore/AudioPlayer;->stopAllMusic()V

    :goto_16
    return-void
.end method

.method private stopSingleMusic(Ljava/lang/String;)V
    .registers 7

    .line 248
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_36

    .line 254
    iget-object v3, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    const/4 v4, 0x0

    .line 255
    iput-object v4, v3, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    .line 256
    iget-object v4, v3, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->url:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 257
    iget-object v4, v3, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 258
    iget-object v4, v3, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 260
    :cond_30
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 266
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_41

    .line 267
    iget-object p1, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_41
    return-void
.end method


# virtual methods
.method public addPlayAction(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    invoke-static {v0}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 90
    :cond_10
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    invoke-static {v0}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/AudioPlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer$2;-><init>(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addStopAction(Ljava/lang/String;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    invoke-static {v0}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    invoke-static {v0}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/AudioPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativestore/AudioPlayer$1;-><init>(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCurrentTime(Ljava/lang/String;)I
    .registers 2

    .line 176
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 177
    :cond_8
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    :goto_c
    return p1
.end method

.method public getTotleTime(Ljava/lang/String;)I
    .registers 2

    .line 181
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    .line 182
    :cond_8
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    :goto_c
    return p1
.end method

.method public init()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/creativestore/AudioPlayer;->initThread()V

    return-void
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 150
    :try_start_1
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/AudioPlayer;->getPlayer(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 151
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :catch_e
    :cond_e
    return v0
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/codemao/creativestore/AudioPlayer;->stopMusic(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/AudioPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/AudioPlayer;->setAudioPlayerListener(Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;)V

    .line 45
    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer;->allPlaysound:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    if-eqz v1, :cond_27

    invoke-static {v1}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 48
    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer;->audioThread:Lcom/codemao/creativestore/AudioPlayer$AudioThread;

    invoke-static {v1}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

.method public playAssetMusic(Ljava/lang/String;)V
    .registers 9

    .line 206
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 209
    :try_start_5
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/CreativeStoreUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 211
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 212
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 213
    iget-object p1, p0, Lcom/codemao/creativestore/AudioPlayer;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    if-eqz p1, :cond_37

    .line 214
    invoke-interface {p1}, Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;->onAudioPlayStart()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    :goto_37
    return-void
.end method

.method public playMostMusic(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->OnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 193
    iput-object v0, p0, Lcom/codemao/creativestore/AudioPlayer;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativestore/AudioPlayer;->addPlayAction(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public playSingleMusic(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativestore/AudioPlayer;->addPlayAction(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public setAudioPlayerListener(Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer;->audioPlayerListener:Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer;->OnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method
