.class public Lcom/codemao/nemo/view/JZVideoContainer2;
.super Lcn/jzvd/JZVideoPlayer;
.source "JZVideoContainer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;,
        Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;
    }
.end annotation


# static fields
.field public static NEED_WIFI_REMIND:Z = true


# instance fields
.field private currentTimeTextView_l:Landroid/widget/TextView;

.field private isPlaying:Z

.field public mBar:Landroid/widget/ProgressBar;

.field private mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

.field private mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

.field private midPlayBtn:Landroid/widget/ImageView;

.field private midPlayBtn_l:Landroid/widget/ImageView;

.field private netBtn_l:Landroid/view/View;

.field private netBtn_p:Landroid/view/View;

.field private netContainer_l:Landroid/view/View;

.field private netContainer_p:Landroid/view/View;

.field public preview:Landroid/widget/ImageView;

.field private preview_url:Ljava/lang/String;

.field private retryBtn_l:Landroid/view/View;

.field private retryBtn_p:Landroid/view/View;

.field private retryContainer_l:Landroid/view/View;

.field private retryContainer_p:Landroid/view/View;

.field private root_l:Landroid/view/View;

.field private root_p:Landroid/view/View;

.field private seekBar_l:Landroid/widget/SeekBar;

.field public smallPlayBtn:Landroid/widget/ImageView;

.field private smallPlayBtn_l:Landroid/widget/ImageView;

.field private totalTimeTextView_l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying:Z

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/JZVideoContainer2;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/JZVideoContainer2;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    return-object p0
.end method

.method public static backPress()Z
    .registers 7

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    return v2

    .line 468
    :cond_16
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_65

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 470
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 471
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 472
    iget v2, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne v2, v4, :cond_40

    const/16 v2, 0x8

    goto :goto_42

    :cond_40
    const/16 v2, 0xa

    :goto_42
    invoke-virtual {v0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 474
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->playOnThisJzvd()V

    goto :goto_64

    .line 476
    :cond_4d
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 477
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 478
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 479
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    :goto_64
    return v1

    .line 482
    :cond_65
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 483
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_7c

    .line 484
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9a

    .line 485
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 487
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 488
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 489
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 490
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    return v1

    :cond_9a
    return v2
.end method

.method private hideSeekBar()V
    .registers 5

    .line 714
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 715
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 717
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    :goto_12
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    if-nez v0, :cond_25

    .line 721
    new-instance v0, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;-><init>(Lcom/codemao/nemo/view/JZVideoContainer2;Lcom/codemao/nemo/view/JZVideoContainer2$1;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    .line 723
    :cond_25
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSeekBar()V
    .registers 3

    .line 727
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer2$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 728
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 729
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 731
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_19
    return-void
.end method


# virtual methods
.method public changePlayBtnStatus(Z)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080530

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 218
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080533

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    return-void
.end method

.method public changePreViewStatus(Z)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->preview:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public clickable()Z
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0d0351

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 86
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    const p1, 0x7f0a05c4

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->preview:Landroid/widget/ImageView;

    const p1, 0x7f0a04f8

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0451

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    const p1, 0x7f0a0509

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn:Landroid/widget/ImageView;

    const p1, 0x7f0a0747

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn:Landroid/widget/ImageView;

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0450

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    const p1, 0x7f0a056c

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netBtn_p:Landroid/view/View;

    .line 100
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netBtn_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0453

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    const p1, 0x7f0a060b

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryBtn_p:Landroid/view/View;

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryBtn_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a044e

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    const p1, 0x7f0a050a

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a074b

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a00d0

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    const p1, 0x7f0a01b0

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->currentTimeTextView_l:Landroid/widget/TextView;

    const p1, 0x7f0a07d7

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->totalTimeTextView_l:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0a044f

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    const p1, 0x7f0a056b

    .line 122
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netBtn_l:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0452

    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    const p1, 0x7f0a060a

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryBtn_l:Landroid/view/View;

    .line 128
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public isFull()Z
    .registers 3

    .line 410
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying:Z

    return v0
.end method

.method public onAutoCompletion()V
    .registers 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoCompletion  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 328
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 329
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStateAutoComplete()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    .line 158
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->clickable()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 154
    :sswitch_e
    invoke-static {}, Lcom/codemao/nemo/view/JZVideoContainer2;->backPress()Z

    return-void

    .line 145
    :sswitch_12
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

    if-eqz p1, :cond_19

    .line 146
    invoke-interface {p1}, Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;->onFinish()V

    :cond_19
    return-void

    .line 162
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    .line 207
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onClick(Landroid/view/View;)V

    return-void

    .line 204
    :sswitch_25
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->hideSeekBar()V

    return-void

    .line 200
    :sswitch_29
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->retryStartVideo()V

    return-void

    .line 195
    :sswitch_2d
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->refreshStartVideo()V

    return-void

    .line 190
    :sswitch_31
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->preparedStartVideo()V

    return-void

    .line 171
    :sswitch_35
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3b

    return-void

    .line 173
    :cond_3b
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 176
    invoke-static {}, Lcom/codemao/nemo/view/JZVideoContainer2;->backPress()Z

    goto :goto_4b

    :cond_44
    const/4 p1, 0x7

    .line 179
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 180
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->startWindowFullscreen()V

    :goto_4b
    return-void

    .line 165
    :sswitch_4c
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

    if-eqz p1, :cond_57

    .line 166
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;->onCreate(I)V

    :cond_57
    return-void

    :sswitch_data_58
    .sparse-switch
        0x7f0a0087 -> :sswitch_12
        0x7f0a0088 -> :sswitch_e
        0x7f0a0569 -> :sswitch_e
        0x7f0a056a -> :sswitch_12
        0x7f0a0606 -> :sswitch_e
        0x7f0a0607 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_72
    .sparse-switch
        0x7f0a01a4 -> :sswitch_4c
        0x7f0a02ac -> :sswitch_35
        0x7f0a044e -> :sswitch_31
        0x7f0a0451 -> :sswitch_31
        0x7f0a0509 -> :sswitch_31
        0x7f0a050a -> :sswitch_31
        0x7f0a056b -> :sswitch_2d
        0x7f0a056c -> :sswitch_2d
        0x7f0a0608 -> :sswitch_4c
        0x7f0a060a -> :sswitch_29
        0x7f0a060b -> :sswitch_29
        0x7f0a0747 -> :sswitch_31
        0x7f0a074b -> :sswitch_31
        0x7f0a075a -> :sswitch_25
    .end sparse-switch
.end method

.method public onInfo(II)V
    .registers 3

    .line 316
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onInfo(II)V

    return-void
.end method

.method public onPrepared()V
    .registers 1

    .line 311
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onPrepared()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 533
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

    if-eqz p1, :cond_a

    .line 534
    invoke-interface {p1, p2}, Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;->onProgress(I)V

    :cond_a
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 540
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 541
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showSeekBar()V

    return-void
.end method

.method public onStateAutoComplete()V
    .registers 2

    .line 303
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    .line 304
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showRetryWindow(Z)V

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePreViewStatus(Z)V

    .line 306
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public onStateError()V
    .registers 3

    .line 295
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateError()V

    .line 296
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showNetErrorWindow(Z)V

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePreViewStatus(Z)V

    .line 298
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .line 250
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 252
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showNormalWindow(Z)V

    return-void
.end method

.method public onStatePause()V
    .registers 2

    .line 282
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying:Z

    .line 284
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePlayBtnStatus(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showNormalWindow(Z)V

    .line 286
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->showSeekBar()V

    return-void
.end method

.method public onStatePlaying()V
    .registers 4

    .line 271
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePlayBtnStatus(Z)V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePreViewStatus(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2;->showNormalWindow(Z)V

    .line 275
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->hideSeekBar()V

    .line 276
    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    iput-boolean v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying:Z

    return-void
.end method

.method public onStatePrepared()V
    .registers 1

    .line 266
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePrepared()V

    return-void
.end method

.method public onStatePreparing()V
    .registers 3

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->setCurrentState(I)V

    .line 259
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2;->showNormalWindow(Z)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePlayBtnStatus(Z)V

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStatePreparingChangingUrl(II)V
    .registers 3

    .line 334
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onStatePreparingChangingUrl(II)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 546
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 547
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->hideSeekBar()V

    .line 548
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result p1

    if-le v0, p1, :cond_26

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 549
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 550
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStateError()V

    :cond_26
    return-void
.end method

.method public preparedStartVideo()V
    .registers 5

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "++preparedStartVideo++"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_c8

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_c8

    .line 620
    :cond_19
    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eqz v1, :cond_71

    if-ne v1, v2, :cond_21

    goto :goto_71

    :cond_21
    const/4 v2, 0x3

    if-ne v1, v2, :cond_52

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideo ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 640
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 641
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStatePause()V

    goto/16 :goto_c7

    :cond_52
    const/4 v0, 0x5

    if-ne v1, v0, :cond_66

    .line 644
    :try_start_55
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    .line 645
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 646
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStatePlaying()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_65} :catch_c7

    goto :goto_c7

    :cond_66
    const/4 v0, 0x6

    if-ne v1, v0, :cond_c7

    const/4 v0, 0x2

    .line 652
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 653
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    goto :goto_c7

    .line 621
    :cond_71
    :goto_71
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 622
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 624
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 625
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 626
    invoke-virtual {p0, v1, v1}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 629
    :cond_a3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_bb

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_bb

    sget-boolean v0, Lcom/codemao/nemo/view/JZVideoContainer2;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_bb

    .line 630
    sput-boolean v1, Lcom/codemao/nemo/view/JZVideoContainer2;->NEED_WIFI_REMIND:Z

    .line 631
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer2;->showWifiDialog(I)V

    return-void

    .line 635
    :cond_bb
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 636
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq v0, v2, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x1

    :goto_c4
    invoke-virtual {p0, v1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    :catch_c7
    :cond_c7
    :goto_c7
    return-void

    .line 617
    :cond_c8
    :goto_c8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshStartVideo()V
    .registers 5

    .line 671
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_70

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_70

    .line 675
    :cond_11
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v1, 0x7

    if-eqz v0, :cond_18

    if-ne v0, v1, :cond_6f

    .line 676
    :cond_18
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 677
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 680
    invoke-virtual {p0, v2, v2}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 683
    :cond_47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_5f

    sget-boolean v0, Lcom/codemao/nemo/view/JZVideoContainer2;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_5f

    .line 684
    sput-boolean v2, Lcom/codemao/nemo/view/JZVideoContainer2;->NEED_WIFI_REMIND:Z

    .line 685
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/JZVideoContainer2;->showWifiDialog(I)V

    return-void

    .line 689
    :cond_5f
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStatePreparing()V

    const/4 v0, 0x2

    .line 690
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->setState(I)V

    .line 691
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq v0, v1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x1

    :goto_6c
    invoke-virtual {p0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    :cond_6f
    return-void

    .line 672
    :cond_70
    :goto_70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public resetProgressAndTime()V
    .registers 4

    .line 454
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->resetProgressAndTime()V

    .line 455
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 458
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 460
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public retryStartVideo()V
    .registers 3

    .line 661
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStatePreparing()V

    .line 662
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 663
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 664
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->onStatePlaying()V

    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3

    .line 443
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setBufferProgress(I)V

    .line 444
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_11

    .line 448
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_11
    return-void
.end method

.method public setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;)V
    .registers 2

    .line 706
    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

    return-void
.end method

.method public setProgressAndText(III)V
    .registers 5

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setProgressAndText(III)V

    .line 427
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 430
    :cond_a
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_15
    if-eqz p2, :cond_20

    .line 436
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p3}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 245
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 4

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 81
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public showNetErrorWindow(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_24

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 354
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :goto_42
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showNormalWindow(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_24

    .line 389
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 397
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :goto_42
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showRetryWindow(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_24

    .line 367
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 376
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :goto_42
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showWifiDialog(I)V
    .registers 3

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "当前为4G网络"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 340
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/JZVideoContainer2;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public startWindowFullscreen()V
    .registers 8

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWindowFullscreen  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 500
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 502
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a044d

    .line 503
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 505
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 507
    :cond_4c
    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    :try_start_53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 510
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/JZVideoContainer2;

    .line 511
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 512
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1006

    .line 514
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 515
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 516
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->setState(I)V

    .line 517
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 518
    invoke-static {v2}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 521
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/JZVideoContainer2;->syncData(Lcom/codemao/nemo/view/JZVideoContainer2;)V

    .line 522
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    .line 523
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer2$OnEventListener;)V

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ad
    return-void
.end method

.method public syncData(Lcom/codemao/nemo/view/JZVideoContainer2;)V
    .registers 4

    .line 236
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 237
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer2;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 238
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer2;->currentTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer2;->totalTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer2;->preview_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/view/JZVideoContainer2;->preview:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
