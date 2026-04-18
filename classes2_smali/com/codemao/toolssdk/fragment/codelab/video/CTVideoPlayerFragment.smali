.class public Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;
.super Landroidx/fragment/app/Fragment;
.source "CTVideoPlayerFragment.kt"


# instance fields
.field private final autoCleanRun$delegate:Lkotlin/Lazy;

.field private back:Landroid/view/View;

.field private backListener:Landroid/view/View$OnClickListener;

.field private handler:Landroid/os/Handler;

.field private isLock:Z

.field private isPlaying:Z

.field private lock:Landroid/widget/ImageView;

.field private mediaControl:Landroid/widget/ImageView;

.field private mediaControlContainer:Landroid/view/ViewGroup;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private progressCurrent:Landroid/widget/TextView;

.field private final progressRun$delegate:Lkotlin/Lazy;

.field private progressTotal:Landroid/widget/TextView;

.field private seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public static synthetic $r8$lambda$-x5ksO-EFKoJscoZ4K78oAPeg_c(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener$lambda$2(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dy529Yt8x9yiYI8NAxxmx_8zvNE(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EoNCeePBtHBJi_LsIN0OCMVpPAg(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener$lambda$1(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressRun$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->autoCleanRun$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$changePlayingView(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->changePlayingView(Z)V

    return-void
.end method

.method public static final synthetic access$displayScreenView(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->displayScreenView(Z)V

    return-void
.end method

.method public static final synthetic access$fetchDurationProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->fetchDurationProgress()V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Landroid/os/Handler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method public static final synthetic access$launchDelayCleanScreen(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->launchDelayCleanScreen()V

    return-void
.end method

.method public static final synthetic access$mediaSeekTo(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;F)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaSeekTo(F)V

    return-void
.end method

.method public static final synthetic access$removeDelayCleanRun(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->removeDelayCleanRun()V

    return-void
.end method

.method public static final synthetic access$setCurrentTime(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;J)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->setCurrentTime(J)V

    return-void
.end method

.method public static final synthetic access$setPlaying$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isPlaying:Z

    return-void
.end method

.method public static final synthetic access$setTotalTime(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;J)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->setTotalTime(J)V

    return-void
.end method

.method public static final synthetic access$stopFetchDuration(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->stopFetchDuration()V

    return-void
.end method

.method public static final synthetic access$updateBufferProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->updateBufferProgress(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;JJ)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->updateProgress(JJ)V

    return-void
.end method

.method private final appendNumber(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    const-string p1, "00"

    goto :goto_25

    :cond_9
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-gez v2, :cond_21

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 338
    :cond_21
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_25
    return-object p1
.end method

.method private final changeLockView(Z)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->lock:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_lock_white_bg_grey:I

    goto :goto_b

    :cond_9
    sget v1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_unlock_white_bg_grey:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    if-eqz p1, :cond_13

    const/16 p1, 0x8

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 258
    :goto_14
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->back:Landroid/view/View;

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControlContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_24
    return-void
.end method

.method private final changePlayingView(Z)V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    sget p1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_media_stop_white:I

    goto :goto_b

    :cond_9
    sget p1, Lcom/codemao/toolssdk/R$drawable;->toolsdk_ic_media_play_white:I

    :goto_b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    return-void
.end method

.method private final createHandler()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-nez v0, :cond_d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_d
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private final displayScreenView(Z)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    const/16 v0, 0x8

    .line 264
    :goto_6
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->back:Landroid/view/View;

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_e
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->lock:Landroid/widget/ImageView;

    if-nez v1, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :goto_16
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControlContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1b

    goto :goto_1e

    :cond_1b
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1e
    if-eqz p1, :cond_25

    .line 268
    iget-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isLock:Z

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->changeLockView(Z)V

    :cond_25
    return-void
.end method

.method private final fetchDurationProgress()V
    .registers 3

    .line 283
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->createHandler()V

    .line 284
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->getProgressRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private final getAutoCleanRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->autoCleanRun$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    return-object v0
.end method

.method private final getProgressRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressRun$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;

    return-object v0
.end method

.method private final initPlayer()V
    .registers 4

    .line 145
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 146
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v1, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 147
    :goto_17
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_23

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 201
    :cond_23
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    iput-boolean v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isPlaying:Z

    return-void
.end method

.method private final launchDelayCleanScreen()V
    .registers 5

    .line 277
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->createHandler()V

    .line 278
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->getAutoCleanRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->getAutoCleanRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private final mediaSeekTo(F)V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    long-to-float v0, v0

    mul-float p1, p1, v0

    .line 236
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_16

    float-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_16
    return-void
.end method

.method private final removeDelayCleanRun()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->getAutoCleanRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$autoCleanRun$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private final setCurrentTime(J)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressCurrent:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->transformTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    return-void
.end method

.method private final setTotalTime(J)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressTotal:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_c

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->transformTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    return-void
.end method

.method private final stopFetchDuration()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->getProgressRun()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private final transformTime(J)Ljava/lang/String;
    .registers 12

    long-to-float p1, p1

    const/high16 p2, 0x447a0000  # 1000.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const/16 v0, 0x3c

    int-to-long v0, v0

    .line 318
    rem-long v2, p1, v0

    .line 319
    div-long v4, p1, v0

    rem-long/2addr v4, v0

    const-wide/16 v0, 0x0

    const-wide/16 v6, 0xe10

    cmp-long v8, p1, v6

    if-lez v8, :cond_1a

    const/16 v6, 0xe10

    int-to-long v6, v6

    .line 320
    div-long/2addr p1, v6

    goto :goto_1b

    :cond_1a
    move-wide p1, v0

    .line 321
    :goto_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    cmp-long v8, p1, v0

    if-lez v8, :cond_30

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->appendNumber(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_30
    invoke-direct {p0, v4, v5}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->appendNumber(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {p0, v2, v3}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->appendNumber(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final updateBufferProgress(Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V
    .registers 9

    if-eqz p1, :cond_4f

    .line 293
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    .line 294
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_18

    const/16 p1, 0x64

    int-to-long v4, p1

    mul-long v4, v4, v0

    .line 296
    div-long/2addr v4, v2

    long-to-int p1, v4

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    const/4 v4, 0x2

    if-nez p2, :cond_1d

    goto :goto_21

    .line 297
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 298
    :goto_21
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "总:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",当前:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",百分比:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-nez p2, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private final updateProgress(JJ)V
    .registers 5

    long-to-float p3, p3

    const/high16 p4, 0x3f800000  # 1.0f

    div-float/2addr p3, p4

    long-to-float p1, p1

    div-float/2addr p3, p1

    const/16 p1, 0x64

    int-to-float p1, p1

    mul-float p3, p3, p1

    .line 305
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-nez p1, :cond_10

    goto :goto_14

    :cond_10
    float-to-int p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_14
    return-void
.end method

.method private static final viewListener$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "当前播放器状态:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    .line 101
    iget-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isPlaying:Z

    if-eqz p1, :cond_31

    .line 102
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->pausePlay()V

    goto :goto_34

    .line 104
    :cond_31
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->continuePlay()V

    :goto_34
    const/4 p1, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->displayScreenView(Z)V

    .line 107
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->launchDelayCleanScreen()V

    return-void
.end method

.method private static final viewListener$lambda$1(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isLock:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isLock:Z

    .line 136
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->changeLockView(Z)V

    return-void
.end method

.method private static final viewListener$lambda$2(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->displayScreenView(Z)V

    .line 140
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->launchDelayCleanScreen()V

    return-void
.end method


# virtual methods
.method protected final continuePlay()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method protected final enableSeekBar(Z)V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_8
    return-void
.end method

.method public initData()V
    .registers 1

    return-void
.end method

.method public initView()V
    .registers 4

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    sget v2, Lcom/codemao/toolssdk/R$id;->top_left_bck:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->back:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    sget v2, Lcom/codemao/toolssdk/R$id;->player_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    sget v2, Lcom/codemao/toolssdk/R$id;->screen_operation_lock:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_33

    :cond_32
    move-object v0, v1

    :goto_33
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->lock:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    sget v2, Lcom/codemao/toolssdk/R$id;->media_control_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_45

    :cond_44
    move-object v0, v1

    :goto_45
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControlContainer:Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_56

    sget v2, Lcom/codemao/toolssdk/R$id;->video_control:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_57

    :cond_56
    move-object v0, v1

    :goto_57
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControl:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_68

    sget v2, Lcom/codemao/toolssdk/R$id;->progress_tv_current:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_69

    :cond_68
    move-object v0, v1

    :goto_69
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressCurrent:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7a

    sget v2, Lcom/codemao/toolssdk/R$id;->progress_tv_total:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_7b

    :cond_7a
    move-object v0, v1

    :goto_7b
    iput-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->progressTotal:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8c

    sget v1, Lcom/codemao/toolssdk/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    :cond_8c
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->showCompleteTips(Z)V

    .line 94
    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isLock:Z

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->changeLockView(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_fragment_codelab_video:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 354
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 355
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->destroy()V

    .line 356
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 357
    :cond_e
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->handler:Landroid/os/Handler;

    .line 358
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 359
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 360
    :cond_1e
    iput-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 343
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 344
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_16

    .line 345
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->pausePlay()V

    :cond_16
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initData()V

    .line 74
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initPlayer()V

    .line 76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener()V

    .line 77
    iget-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->isLock:Z

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->changeLockView(Z)V

    return-void
.end method

.method protected final pausePlay()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->pause()V

    :cond_7
    return-void
.end method

.method protected playCompleteEnd()V
    .registers 2

    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->showCompleteTips(Z)V

    return-void
.end method

.method protected final replay()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_9

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 226
    :cond_9
    invoke-virtual {p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->continuePlay()V

    return-void
.end method

.method protected final setItemAndPrepare(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_f

    return-void

    .line 212
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 213
    :cond_1a
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    :cond_21
    return-void
.end method

.method public final setLeftTopBack(Landroid/view/View$OnClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected showCompleteTips(Z)V
    .registers 2

    return-void
.end method

.method protected viewListener()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->back:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->mediaControl:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_21

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 134
    :cond_21
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->lock:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_2d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    new-instance v1, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3b
    return-void
.end method
