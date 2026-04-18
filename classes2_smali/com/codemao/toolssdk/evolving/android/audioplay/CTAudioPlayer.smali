.class public final Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
.super Ljava/lang/Object;
.source "CTAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;,
        Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;

.field private static playerAiKids:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

.field private static playerKn:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

.field private static playerPython:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;


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

.field private audioThread:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$BfBe3sx7FqE8EzIyESSure4DIaM(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addPlayAction$lambda$1(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EmmRVCnynGqyIesFVqDU-qVXoCU(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction$lambda$0(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J_dqRTJDI3m-FQyHwX0SGvjPxv8(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopSingleMusic$lambda$2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OYmQSuNljVmv5Hqg7ANJLqpt7GE(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->isPlaying$lambda$6(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbMcUFVyLEpnzyE-3bkhNC6mcAQ(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getCurrentProgress$lambda$7(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$itZI1dvPtVrs2F8IF1I7FlcCx2g(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getTotalTime$lambda$8(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMCG1KJDsmfVC2UPjvBjsEQpFks(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAudioListPlay$lambda$4(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfsK9qJHhjhXTMzPKxmLvW6At3w(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playAudioV2$lambda$5(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoufy8afHTwEEbHIx8-JLZukTtY(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAudioListPlay$lambda$3(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vTvWZPSFL5ibExUzZBaaQXA6b80(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->onStart$lambda$10(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->Companion:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->mainHandler:Landroid/os/Handler;

    .line 81
    new-instance p1, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;

    invoke-direct {p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioThread:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;

    .line 82
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getPlayerAiKids$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 1

    .line 21
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerAiKids:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-object v0
.end method

.method public static final synthetic access$getPlayerKn$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 1

    .line 21
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerKn:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-object v0
.end method

.method public static final synthetic access$getPlayerPython$cp()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 1

    .line 21
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerPython:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-object v0
.end method

.method public static final synthetic access$setPlayerAiKids$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerAiKids:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-void
.end method

.method public static final synthetic access$setPlayerKn$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerKn:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-void
.end method

.method public static final synthetic access$setPlayerPython$cp(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playerPython:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    return-void
.end method

.method private static final addPlayAction$lambda$1(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->existCount(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_32

    .line 121
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "创建mediaPlayer"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioIdSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    new-instance p2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    invoke-direct {p2, p1, p3, v0, p4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/func/IMediaPlayer;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    .line 125
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->playAudioV2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    :cond_32
    return-void
.end method

.method private static final addStopAction$lambda$0(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopMusic(Ljava/lang/String;)V

    return-void
.end method

.method private final audioHandler()Landroid/os/Handler;
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioThread:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private final audioIdSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 498
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->existCount(Ljava/lang/String;)I

    move-result v0

    .line 499
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

.method private final declared-synchronized existCount(Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_20

    .line 490
    iget-object v3, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    iget-object v3, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    if-eqz v3, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 494
    :cond_20
    monitor-exit p0

    return v2

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final getCurrentProgress$lambda$7(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p0

    if-nez p0, :cond_18

    const-wide/16 p0, 0x0

    goto :goto_1c

    .line 313
    :cond_18
    invoke-interface {p0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->getCurrentPositionCompose()J

    move-result-wide p0

    :goto_1c
    const/4 v0, 0x0

    aput-wide p0, p2, v0

    .line 314
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final declared-synchronized getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 295
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 296
    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 297
    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->noNullId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 298
    iget-object v0, v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_25

    goto :goto_23

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 303
    :cond_23
    :goto_23
    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final getTotalTime$lambda$8(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$total"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p0

    if-nez p0, :cond_18

    const-wide/16 p0, 0x0

    goto :goto_1c

    .line 330
    :cond_18
    invoke-interface {p0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->getDurationCompose()J

    move-result-wide p0

    :goto_1c
    const/4 v0, 0x0

    aput-wide p0, p2, v0

    .line 331
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final isPlaying$lambda$6(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$isPlaying"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/codemao/toolssdk/func/IMediaPlayer;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1e

    .line 281
    invoke-interface {p0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    aput-boolean p0, p2, p1

    .line 282
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final onStart(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onStart$lambda$10(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 352
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayStart()V

    :cond_5
    return-void
.end method

.method private final playAudioV2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 13

    const-string v0, "开始播放音频:"

    .line 224
    iget-object v2, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 225
    iget-object v1, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    const-string v3, "null cannot be cast to non-null type com.codemao.toolssdk.func.ToolsMediaPlayer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    .line 227
    :try_start_e
    iget-object v8, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->url:Ljava/lang/String;

    const-string v1, "proxyUrl"

    .line 228
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->resetMediaItem(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v7}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->prepare()V

    .line 230
    sget-object v9, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "prepare"

    invoke-virtual {v9, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 231
    new-instance v10, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v3, p1

    move-object v4, v7

    move-object v5, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 263
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v7}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->start()V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 266
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5d} :catch_5e

    goto :goto_93

    :catch_5e
    move-exception v0

    .line 268
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "播放异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    iget-object p1, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopMusic(Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "播放音频逻辑异常:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    :goto_93
    return-void
.end method

.method private static final playAudioV2$lambda$5(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const-string v0, "$audioBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mediaPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "状态回调:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p5, v1, :cond_85

    const/4 p4, 0x7

    if-eq p5, p4, :cond_47

    const/16 p1, 0x8

    if-eq p5, p1, :cond_43

    const/16 p0, 0x9

    if-eq p5, p0, :cond_3e

    goto/16 :goto_bf

    .line 260
    :cond_3e
    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->deleteCacheFile()V

    goto/16 :goto_bf

    .line 259
    :cond_43
    invoke-direct {p3, p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->onStart(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    goto :goto_bf

    :cond_47
    if-eqz p0, :cond_4c

    .line 249
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayFail()V

    .line 250
    :cond_4c
    iput-object v2, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 251
    invoke-virtual {p2, v2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 252
    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->release()V

    .line 253
    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->deleteCacheFile()V

    .line 254
    iget-object p0, p3, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "播放异常:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 256
    sget-object p0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    goto :goto_bf

    .line 239
    :cond_85
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "播放完成:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    if-eqz p0, :cond_9e

    .line 240
    invoke-interface {p0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;->onPlayComplete()V

    .line 241
    :cond_9e
    iput-object v2, p1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 242
    invoke-virtual {p2, v2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V

    .line 243
    invoke-virtual {p2}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->release()V

    .line 244
    iget-object p0, p3, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    sget-object p0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport(Ljava/lang/String;)V

    :goto_bf
    return-void
.end method

.method private final stopAllMusic()V
    .registers 2

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAllMusic(Z)V

    return-void
.end method

.method private final stopAllMusic(Z)V
    .registers 2

    .line 173
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAllMusicInCurrentThread()V

    return-void
.end method

.method private final stopAllMusicInCurrentThread()V
    .registers 3

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 180
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAudioListPlay(Ljava/util/List;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-void
.end method

.method private final stopAudioListPlay(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_52

    .line 190
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 191
    iget-object v3, v2, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v3, :cond_4f

    .line 193
    :try_start_11
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1f

    new-instance v4, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_30
    .catchall {:try_start_11 .. :try_end_1f} :catchall_2e

    .line 203
    :cond_1f
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4f

    new-instance v4, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    :goto_2a
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4f

    :catchall_2e
    move-exception p1

    goto :goto_40

    :catch_30
    move-exception v3

    .line 201
    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 203
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4f

    new-instance v4, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    goto :goto_2a

    :goto_40
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4e

    new-instance v1, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4e
    throw p1

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_52
    return-void
.end method

.method private static final stopAudioListPlay$lambda$3(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 4

    const-string v0, "$audioBean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_c

    .line 195
    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->stop()V

    .line 197
    :cond_c
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->reset()V

    .line 198
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

.method private static final stopAudioListPlay$lambda$4(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;)V
    .registers 2

    const-string v0, "$audioBean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->destroy()V

    .line 205
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    return-void
.end method

.method private final declared-synchronized stopMusic(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 216
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAllMusic()V

    goto :goto_e

    .line 219
    :cond_b
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopSingleMusic(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 221
    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized stopSingleMusic(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 132
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

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge v1, v0, :cond_6c

    .line 138
    iget-object v3, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    const/4 v4, 0x0

    .line 139
    iput-object v4, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    .line 140
    iget-object v4, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 141
    sget-object v4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "音频id匹配到了："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_66

    new-instance v5, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda8;

    invoke-direct {v5, v3, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_66
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 159
    :cond_6c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_77

    .line 160
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_79

    .line 162
    :cond_77
    monitor-exit p0

    return-void

    :catchall_79
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final stopSingleMusic$lambda$2(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Ljava/lang/String;)V
    .registers 5

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_2a

    .line 145
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

    .line 147
    :cond_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    if-eqz v0, :cond_6b

    .line 148
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "停止音频id对应的音频："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {p0}, Lcom/codemao/toolssdk/func/IMediaPlayer;->stop()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_6b

    :catch_54
    move-exception p0

    .line 152
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


# virtual methods
.method public final addPlayAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 13

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 112
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    nop

    .line 115
    :goto_c
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    if-nez p1, :cond_1b

    goto :goto_30

    .line 119
    :cond_1b
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v7, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void

    .line 116
    :cond_30
    :goto_30
    sget-object p3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "不能播handler:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",id:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    return-void
.end method

.method public final addStopAction(Ljava/lang/String;)V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioThread:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 100
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "推到主线程停止音频播放："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    return-void
.end method

.method public final getCurrentProgress(Ljava/lang/String;)J
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 309
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 311
    :try_start_d
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v6, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1, v1, v5}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    :cond_1b
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 317
    aget-wide v0, v1, v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    return-wide v0

    :catch_21
    move-exception p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v3
.end method

.method public final getTotalTime(Ljava/lang/String;)J
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 326
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 328
    :try_start_d
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v6, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1, v1, v5}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_1b
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 334
    aget-wide v0, v1, v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    return-wide v0

    :catch_21
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v3
.end method

.method public final isPlaying(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 277
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 279
    :try_start_b
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->audioHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v4, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1, v1, v3}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_19
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 285
    aget-boolean p1, v1, v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    return p1

    :catch_1f
    return v2
.end method

.method public final onDestroy(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->stopAllMusic(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->removeAllFileCache(Landroid/content/Context;)V

    .line 88
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 89
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeAllFileCache(Landroid/content/Context;)V
    .registers 2

    .line 479
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->removeAudioCacheFiles(Landroid/content/Context;)V

    return-void
.end method

.method public final declared-synchronized resetAllAudioBeanState()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 466
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 467
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->allPlaySound:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    .line 468
    iget-object v2, v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    invoke-interface {v2}, Lcom/codemao/toolssdk/func/IMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v1, v1, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    if-eqz v1, :cond_21

    .line 469
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

    .line 474
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 476
    :cond_2a
    monitor-exit p0

    return-void

    :goto_2c
    monitor-exit p0

    throw v0
.end method
