.class public Lcom/codemao/toolssdk/manager/AudioPlayerManager;
.super Ljava/lang/Object;
.source "AudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;,
        Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;,
        Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;,
        Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;
    }
.end annotation


# instance fields
.field private final allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;",
            ">;"
        }
    .end annotation
.end field

.field private audioThread:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$2W293ll8jcaRfOkKi0jd3FZfMjQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$isPlaying$6(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7rCPT2kl6b79Z6Rs8KiGdpCw5GM(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$stopAudioListPlay$4(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HBVeLdg0b60WPr8axIhzV1HAhM(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$stopAudioByCut$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnGvyMGKaYD1XzIFHNO5Me5B9fg(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$onComplete$11(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PR99RWLju7SKyOY9dAraIFptsuQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$onFail$9(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QXakRc4b8ReuBfrYAqUILjNipuY(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$getTotalTime$8(Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WG5EGNsMkibRuFL0Su6o5SCdyS8(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$stopAudioListPlay$3(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hE7uwumnvp4CQY9mPjUkS_-MW4Y(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$addStopAction$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p8n6YmTYgKiYwdAp-YqWbzg8EM0(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$getCurrentProgress$7(Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_LuURKSqIk-Yzw_KX6xSTawXpo(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$openRawMusic$12(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUTHn4RhPNvdRhZijf-O4TKyddg(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$stopSingleMusic$2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ugSC1-mzd9jDZktia3mCIAO5dBU(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$onStart$10(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w3LMl2PIUf79Ap8GP-rdKkzKQiM(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$addPlayAction$1(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1Ew2xu1Rqv9d5hfE6pfofLYTQQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$playAudioByCut$14(Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKWh_CL30Su2ktkRWE2pM2hpdu0(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->lambda$playAudioV2$5(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->mainHandler:Landroid/os/Handler;

    .line 29
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->initThread()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;-><init>()V

    return-void
.end method

.method private afterPlay(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 331
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object p1, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {p1}, Lcom/codemao/toolssdk/func/IMediaPlayer;->release()V

    :cond_12
    return-void
.end method

.method private audioHandler()Landroid/os/Handler;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioThread:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;

    iget-object v0, v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private audioIdSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 459
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->existCount(Ljava/lang/String;)I

    move-result v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    const/4 v2, 0x1

    if-ge v0, v2, :cond_12

    goto :goto_21

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized existCount(Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 450
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 451
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    iget-object v2, v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_22

    if-eqz v2, :cond_1d

    add-int/lit8 v1, v1, 0x1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 455
    :cond_20
    monitor-exit p0

    return v1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 259
    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 260
    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->noNullId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 261
    iget-object v0, v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 266
    :cond_23
    :goto_23
    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;
    .registers 1

    .line 33
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    return-object v0
.end method

.method private initThread()V
    .registers 2

    .line 53
    new-instance v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioThread:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$addPlayAction$1(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 7

    .line 86
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->existCount(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_20

    .line 87
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "创建mediaPlayer"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioIdSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance p2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    invoke-direct {p2, p1, p3, v0, p4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/func/IMediaPlayer;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->playAudioV2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    :cond_20
    return-void
.end method

.method private synthetic lambda$addStopAction$0(Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopMusic(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getCurrentProgress$7(Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 275
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_d

    .line 276
    :cond_9
    invoke-interface {p1}, Lcom/codemao/toolssdk/func/IMediaPlayer;->getCurrentPositionCompose()J

    move-result-wide v0

    :goto_d
    const/4 p1, 0x0

    aput-wide v0, p2, p1

    .line 277
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$getTotalTime$8(Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 292
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p1

    if-nez p1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_d

    .line 293
    :cond_9
    invoke-interface {p1}, Lcom/codemao/toolssdk/func/IMediaPlayer;->getDurationCompose()J

    move-result-wide v0

    :goto_d
    const/4 p1, 0x0

    aput-wide v0, p2, p1

    .line 294
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$isPlaying$6(Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 244
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 245
    invoke-interface {p1}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    aput-boolean p1, p2, v0

    .line 246
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static synthetic lambda$onComplete$11(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 323
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayComplete()V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$onFail$9(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 307
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayFail()V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$onStart$10(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 315
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayStart()V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$openRawMusic$12(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 344
    invoke-interface {p0, p2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 346
    :cond_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method private synthetic lambda$playAudioByCut$14(Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V
    .registers 10

    .line 386
    :try_start_0
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_42

    .line 387
    :try_start_5
    new-instance v1, Lcom/codemao/toolssdk/func/OriginMediaPlayer;

    invoke-direct {v1}, Lcom/codemao/toolssdk/func/OriginMediaPlayer;-><init>()V

    .line 388
    new-instance v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    invoke-direct {v2, p1, p1, v1, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/func/IMediaPlayer;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 390
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 393
    invoke-virtual {v1, p3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 394
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 395
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->onStart(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 396
    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr p4, p3

    if-lez p4, :cond_3d

    .line 401
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object p3

    int-to-long v3, p4

    invoke-virtual {p3, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 402
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_37

    .line 403
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopMusic(Ljava/lang/String;)V

    .line 405
    :cond_37
    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->afterPlay(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    .line 406
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->onComplete(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 408
    :cond_3d
    monitor-exit v0

    goto :goto_4c

    :catchall_3f
    move-exception p3

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception p3

    .line 410
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->onFail(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopMusic(Ljava/lang/String;)V

    :goto_4c
    return-void
.end method

.method private synthetic lambda$playAudioV2$5(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 194
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "状态回调:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p5, v1, :cond_76

    const/4 p4, 0x7

    if-eq p5, p4, :cond_38

    const/16 p2, 0x8

    if-eq p5, p2, :cond_34

    const/16 p1, 0x9

    if-eq p5, p1, :cond_2f

    goto/16 :goto_b0

    .line 223
    :cond_2f
    invoke-virtual {p3}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->deleteCacheFile()V

    goto/16 :goto_b0

    .line 220
    :cond_34
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->onStart(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    goto :goto_b0

    :cond_38
    if-eqz p1, :cond_3d

    .line 209
    invoke-interface {p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayFail()V

    .line 211
    :cond_3d
    iput-object v2, p2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 212
    invoke-virtual {p3, v2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 213
    invoke-virtual {p3}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->release()V

    .line 214
    invoke-virtual {p3}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->deleteCacheFile()V

    .line 215
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "播放异常:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 217
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    goto :goto_b0

    .line 197
    :cond_76
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "播放完成:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    if-eqz p1, :cond_8f

    .line 199
    invoke-interface {p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayComplete()V

    .line 201
    :cond_8f
    iput-object v2, p2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 202
    invoke-virtual {p3, v2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 203
    invoke-virtual {p3}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->release()V

    .line 204
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    :goto_b0
    return-void
.end method

.method private synthetic lambda$stopAudioByCut$13(Ljava/lang/String;)V
    .registers 9

    .line 357
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_4b

    .line 359
    :try_start_a
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$Holder;->access$000()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_38

    .line 364
    iget-object v5, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 365
    iget-object v6, v5, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 366
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 371
    :cond_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_43

    .line 372
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 375
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_48

    .line 376
    :try_start_44
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAudioListPlay(Ljava/util/List;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_4b

    goto :goto_4f

    :catchall_48
    move-exception p1

    .line 375
    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4f
    return-void
.end method

.method private static synthetic lambda$stopAudioListPlay$3(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->stop()V

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->reset()V

    .line 161
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "停止音频播放:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$stopAudioListPlay$4(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->destroy()V

    .line 168
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    return-void
.end method

.method private static synthetic lambda$stopSingleMusic$2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V
    .registers 5

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_2a

    .line 108
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player是否为空:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",playing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v2}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 110
    :cond_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_6b

    .line 111
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "停止音频id对应的音频："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {p0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->stop()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_6b

    :catch_54
    move-exception p0

    .line 115
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "停止音频异常了:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private onComplete(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onFail(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onStart(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private playAudioV2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 13

    const-string v0, "开始播放音频:"

    .line 186
    iget-object v3, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 187
    iget-object v1, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-object v7, v1

    check-cast v7, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    .line 189
    :try_start_9
    iget-object v8, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->url:Ljava/lang/String;

    .line 190
    invoke-virtual {v7, v8}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->resetMediaItem(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v7}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->prepare()V

    .line 192
    sget-object v9, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "prepare"

    invoke-virtual {v9, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 193
    new-instance v10, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 227
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v7}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->start()V

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_53} :catch_54

    goto :goto_89

    :catch_54
    move-exception v0

    .line 232
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "播放异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object p1, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopMusic(Ljava/lang/String;)V

    .line 235
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "播放音频逻辑异常:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    :goto_89
    return-void
.end method

.method private stopAllMusic()V
    .registers 2

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAllMusic(Z)V

    return-void
.end method

.method private stopAllMusic(Z)V
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAllMusicInCurrentThread()V

    return-void
.end method

.method private stopAllMusicInCurrentThread()V
    .registers 3

    .line 141
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 143
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAudioListPlay(Ljava/util/List;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method private stopAudioListPlay(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 154
    iget-object v3, v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v3, :cond_47

    .line 156
    :try_start_11
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_29
    .catchall {:try_start_11 .. :try_end_1d} :catchall_27

    .line 166
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    goto :goto_36

    :catchall_27
    move-exception p1

    goto :goto_3a

    :catch_29
    move-exception v3

    .line 164
    :try_start_2a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 166
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    :goto_36
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_47

    :goto_3a
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    throw p1

    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private declared-synchronized stopMusic(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 178
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAllMusic()V

    goto :goto_e

    .line 181
    :cond_b
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopSingleMusic(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 183
    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopSingleMusic(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 96
    :try_start_1
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "加锁停止音频播放："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge v1, v0, :cond_6a

    .line 101
    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    const/4 v4, 0x0

    .line 102
    iput-object v4, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 103
    iget-object v4, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 104
    sget-object v4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "音频id匹配到了："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 122
    :cond_6a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_75

    .line 123
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_77

    .line 125
    :cond_75
    monitor-exit p0

    return-void

    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addPlayAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 13

    const-wide/16 v0, 0x64

    .line 79
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    nop

    .line 81
    :goto_7
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    if-nez p1, :cond_16

    goto :goto_29

    .line 85
    :cond_16
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 82
    :cond_29
    :goto_29
    sget-object p3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "不能播handler:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",id:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    return-void
.end method

.method public addStopAction(Ljava/lang/String;)V
    .registers 6

    .line 70
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioThread:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;

    iget-object v0, v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_24

    .line 72
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "推到主线程停止音频播放："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public getCurrentProgress(Ljava/lang/String;)J
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 272
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 274
    :try_start_d
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, p1, v1, v5}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda13;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 280
    aget-wide v0, v1, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    return-wide v0

    :catch_1f
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v3
.end method

.method public getTotalTime(Ljava/lang/String;)J
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 289
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 291
    :try_start_d
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0, p1, v1, v5}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda12;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 297
    aget-wide v0, v1, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    return-wide v0

    :catch_1f
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v3
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 241
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 243
    :try_start_b
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p1, v1, v3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 249
    aget-boolean p1, v1, v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    return v2
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->stopAllMusic(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->removeAllFileCache(Landroid/content/Context;)V

    .line 60
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 61
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public openRawMusic(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 4

    .line 341
    :try_start_0
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 342
    new-instance p2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 348
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public playAudioByCut(Landroid/content/Context;Ljava/lang/String;IILcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 12

    .line 384
    new-instance p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda11;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;II)V

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllFileCache(Landroid/content/Context;)V
    .registers 2

    .line 433
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->removeAudioCacheFiles(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized resetAllAudioBeanState()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 420
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 421
    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 422
    iget-object v2, v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v2}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v1, v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    if-eqz v1, :cond_21

    .line 423
    invoke-interface {v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayComplete()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_26
    .catchall {:try_start_2 .. :try_end_21} :catchall_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_24
    move-exception v0

    goto :goto_2c

    :catch_26
    move-exception v0

    .line 428
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 430
    :cond_2a
    monitor-exit p0

    return-void

    :goto_2c
    monitor-exit p0

    throw v0
.end method

.method public stopAudioByCut(Ljava/lang/String;)V
    .registers 3

    .line 355
    new-instance v0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->singlePost(Ljava/lang/Runnable;)V

    return-void
.end method
