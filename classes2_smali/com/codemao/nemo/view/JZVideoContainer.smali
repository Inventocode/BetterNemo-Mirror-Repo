.class public Lcom/codemao/nemo/view/JZVideoContainer;
.super Lcn/jzvd/JZVideoPlayer;
.source "JZVideoContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;,
        Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;
    }
.end annotation


# static fields
.field public static NEED_WIFI_REMIND:Z = true


# instance fields
.field private backView:Landroid/view/View;

.field private backView_l:Landroid/view/View;

.field private createBtn_l:Landroid/view/View;

.field private currentTimeTextView_l:Landroid/widget/TextView;

.field private fullView:Landroid/widget/ImageView;

.field public mBar:Landroid/widget/ProgressBar;

.field private mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

.field private mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

.field private midPlayBtn:Landroid/widget/ImageView;

.field private midPlayBtn_l:Landroid/widget/ImageView;

.field private netBack_l:Landroid/view/View;

.field private netBack_p:Landroid/view/View;

.field private netBtn_l:Landroid/view/View;

.field private netBtn_p:Landroid/view/View;

.field private netContainer_l:Landroid/view/View;

.field private netContainer_p:Landroid/view/View;

.field public preview:Landroid/widget/ImageView;

.field private preview_url:Ljava/lang/String;

.field private retryBack_l:Landroid/view/View;

.field private retryBack_p:Landroid/view/View;

.field private retryBtn_l:Landroid/view/View;

.field private retryBtn_p:Landroid/view/View;

.field private retryContainer_l:Landroid/view/View;

.field private retryContainer_p:Landroid/view/View;

.field private retryCreate_l:Landroid/view/View;

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

    .line 74
    invoke-direct {p0, p1}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/JZVideoContainer;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/JZVideoContainer;)Landroid/view/View;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    return-object p0
.end method

.method public static backPress()Z
    .registers 7

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    return v2

    .line 496
    :cond_16
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_65

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 498
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 499
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 500
    iget v2, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne v2, v4, :cond_40

    const/16 v2, 0x8

    goto :goto_42

    :cond_40
    const/16 v2, 0xa

    :goto_42
    invoke-virtual {v0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 502
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->playOnThisJzvd()V

    goto :goto_64

    .line 504
    :cond_4d
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 505
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 506
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 507
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    :goto_64
    return v1

    .line 510
    :cond_65
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 511
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_7c

    .line 512
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9a

    .line 513
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 515
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 516
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 517
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 518
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    return v1

    :cond_9a
    return v2
.end method

.method private hideSeekBar()V
    .registers 5

    .line 739
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 740
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 742
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 744
    :goto_12
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    if-nez v0, :cond_25

    .line 746
    new-instance v0, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;-><init>(Lcom/codemao/nemo/view/JZVideoContainer;Lcom/codemao/nemo/view/JZVideoContainer$1;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    .line 748
    :cond_25
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSeekBar()V
    .registers 3

    .line 752
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/JZVideoContainer$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 753
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 754
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 756
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_19
    return-void
.end method


# virtual methods
.method public changePlayBtnStatus(Z)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080530

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    .line 253
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080533

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    return-void
.end method

.method public changePreViewStatus(Z)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->preview:Landroid/widget/ImageView;

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

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mBar:Landroid/widget/ProgressBar;

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

    const v0, 0x7f0d0350

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 94
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    const p1, 0x7f0a05c4

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->preview:Landroid/widget/ImageView;

    const p1, 0x7f0a04f8

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0451

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    const p1, 0x7f0a0087

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->backView:Landroid/view/View;

    const p1, 0x7f0a02ac

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->fullView:Landroid/widget/ImageView;

    const p1, 0x7f0a0509

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const p1, 0x7f0a0747

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    .line 104
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->backView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->fullView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0450

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    const p1, 0x7f0a056a

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBack_p:Landroid/view/View;

    const p1, 0x7f0a056c

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBtn_p:Landroid/view/View;

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBack_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBtn_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0453

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    const p1, 0x7f0a0607

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBack_p:Landroid/view/View;

    const p1, 0x7f0a060b

    .line 120
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBtn_p:Landroid/view/View;

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBack_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBtn_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a044e

    .line 126
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    const p1, 0x7f0a0088

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->backView_l:Landroid/view/View;

    const p1, 0x7f0a01a4

    .line 128
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->createBtn_l:Landroid/view/View;

    const p1, 0x7f0a050a

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a074b

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a00d0

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    const p1, 0x7f0a01b0

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    const p1, 0x7f0a07d7

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->backView_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->createBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 141
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a044f

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    const p1, 0x7f0a0569

    .line 144
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBack_l:Landroid/view/View;

    const p1, 0x7f0a056b

    .line 145
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBtn_l:Landroid/view/View;

    .line 146
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBack_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0452

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    const p1, 0x7f0a0606

    .line 151
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBack_l:Landroid/view/View;

    const p1, 0x7f0a060a

    .line 152
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBtn_l:Landroid/view/View;

    const p1, 0x7f0a0608

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryCreate_l:Landroid/view/View;

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBack_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryCreate_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 162
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/JZVideoContainer;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public isFull()Z
    .registers 3

    .line 438
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

.method public onAutoCompletion()V
    .registers 4

    .line 354
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

    .line 355
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 356
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 357
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStateAutoComplete()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    .line 186
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->clickable()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 182
    :sswitch_e
    invoke-static {}, Lcom/codemao/nemo/view/JZVideoContainer;->backPress()Z

    return-void

    .line 173
    :sswitch_12
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

    if-eqz p1, :cond_19

    .line 174
    invoke-interface {p1}, Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;->onFinish()V

    :cond_19
    return-void

    .line 190
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    .line 235
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onClick(Landroid/view/View;)V

    return-void

    .line 232
    :sswitch_25
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->hideSeekBar()V

    return-void

    .line 228
    :sswitch_29
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->retryStartVideo()V

    return-void

    .line 223
    :sswitch_2d
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->refreshStartVideo()V

    return-void

    .line 218
    :sswitch_31
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->preparedStartVideo()V

    return-void

    .line 199
    :sswitch_35
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3b

    return-void

    .line 201
    :cond_3b
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 204
    invoke-static {}, Lcom/codemao/nemo/view/JZVideoContainer;->backPress()Z

    goto :goto_4b

    :cond_44
    const/4 p1, 0x7

    .line 207
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 208
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->startWindowFullscreen()V

    :goto_4b
    return-void

    .line 193
    :sswitch_4c
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

    if-eqz p1, :cond_57

    .line 194
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;->onCreate(I)V

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

    .line 344
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onInfo(II)V

    return-void
.end method

.method public onPrepared()V
    .registers 1

    .line 339
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onPrepared()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 559
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 560
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

    if-eqz v0, :cond_a

    .line 561
    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_a
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 567
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 568
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->showSeekBar()V

    return-void
.end method

.method public onStateAutoComplete()V
    .registers 2

    .line 331
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    .line 332
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showRetryWindow(Z)V

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePreViewStatus(Z)V

    .line 334
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public onStateError()V
    .registers 3

    .line 323
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateError()V

    .line 324
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showNetErrorWindow(Z)V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePreViewStatus(Z)V

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .line 285
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 287
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showNormalWindow(Z)V

    return-void
.end method

.method public onStatePause()V
    .registers 2

    .line 315
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePlayBtnStatus(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showNormalWindow(Z)V

    .line 318
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->showSeekBar()V

    return-void
.end method

.method public onStatePlaying()V
    .registers 3

    .line 305
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePlayBtnStatus(Z)V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePreViewStatus(Z)V

    .line 308
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showNormalWindow(Z)V

    .line 309
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->hideSeekBar()V

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStatePrepared()V
    .registers 1

    .line 300
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePrepared()V

    return-void
.end method

.method public onStatePreparing()V
    .registers 3

    .line 292
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePreparing()V

    .line 293
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->showNormalWindow(Z)V

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->changePlayBtnStatus(Z)V

    .line 295
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStatePreparingChangingUrl(II)V
    .registers 3

    .line 362
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onStatePreparingChangingUrl(II)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 573
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 574
    invoke-direct {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->hideSeekBar()V

    .line 575
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

    .line 576
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 577
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStateError()V

    :cond_26
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d0

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00cf

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 243
    :cond_13
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 241
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->clickable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public preparedStartVideo()V
    .registers 5

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "++preparedStartVideo++"

    .line 642
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_c8

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_c8

    .line 647
    :cond_19
    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eqz v1, :cond_71

    if-ne v1, v2, :cond_21

    goto :goto_71

    :cond_21
    const/4 v2, 0x3

    if-ne v1, v2, :cond_52

    .line 665
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

    .line 666
    invoke-virtual {p0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 667
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 668
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStatePause()V

    goto/16 :goto_c7

    :cond_52
    const/4 v0, 0x5

    if-ne v1, v0, :cond_66

    .line 671
    :try_start_55
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    .line 672
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 673
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStatePlaying()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_65} :catch_c7

    goto :goto_c7

    :cond_66
    const/4 v0, 0x6

    if-ne v1, v0, :cond_c7

    const/4 v0, 0x2

    .line 678
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 679
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    goto :goto_c7

    .line 648
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

    .line 649
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 651
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 652
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 653
    invoke-virtual {p0, v1, v1}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 656
    :cond_a3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_bb

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_bb

    sget-boolean v0, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_bb

    .line 657
    sput-boolean v1, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    .line 658
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/JZVideoContainer;->showWifiDialog(I)V

    return-void

    .line 662
    :cond_bb
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 663
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

    .line 644
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

    .line 697
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_70

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_70

    .line 701
    :cond_11
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v1, 0x7

    if-eqz v0, :cond_18

    if-ne v0, v1, :cond_6f

    .line 702
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

    .line 703
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 705
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 706
    invoke-virtual {p0, v2, v2}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 709
    :cond_47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_5f

    sget-boolean v0, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_5f

    .line 710
    sput-boolean v2, Lcom/codemao/nemo/view/JZVideoContainer;->NEED_WIFI_REMIND:Z

    .line 711
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/JZVideoContainer;->showWifiDialog(I)V

    return-void

    .line 715
    :cond_5f
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStatePreparing()V

    const/4 v0, 0x2

    .line 716
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->setState(I)V

    .line 717
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq v0, v1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x1

    :goto_6c
    invoke-virtual {p0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    :cond_6f
    return-void

    .line 698
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

    .line 482
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->resetProgressAndTime()V

    .line 483
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 486
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 487
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 488
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public retryStartVideo()V
    .registers 3

    .line 687
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStatePreparing()V

    .line 688
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 689
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 690
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->onStatePlaying()V

    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3

    .line 471
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setBufferProgress(I)V

    .line 472
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_11

    .line 476
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_11
    return-void
.end method

.method public setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

    return-void
.end method

.method public setProgressAndText(III)V
    .registers 5

    .line 454
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setProgressAndText(III)V

    .line 455
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 458
    :cond_a
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    .line 460
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_15
    if-eqz p2, :cond_20

    .line 464
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p3}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 280
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    return-void
.end method

.method public showNetErrorWindow(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_24

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 382
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 390
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

    .line 417
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 425
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
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

    .line 395
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42

    .line 404
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer;->retryContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_42
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showWifiDialog(I)V
    .registers 3

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "当前为4G网络"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 368
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/JZVideoContainer;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public startWindowFullscreen()V
    .registers 6

    .line 526
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

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 528
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 530
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a044d

    .line 531
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 533
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 535
    :cond_4c
    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 537
    :try_start_53
    new-instance v2, Lcom/codemao/nemo/view/JZVideoContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/JZVideoContainer;-><init>(Landroid/content/Context;)V

    .line 538
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 539
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 540
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1006

    .line 541
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 542
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 543
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->setState(I)V

    .line 544
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 545
    invoke-static {v2}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 548
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/JZVideoContainer;->syncData(Lcom/codemao/nemo/view/JZVideoContainer;)V

    .line 549
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    .line 550
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/JZVideoContainer;->setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer$OnEventListener;)V

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_93} :catch_94

    goto :goto_98

    :catch_94
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_98
    return-void
.end method

.method public syncData(Lcom/codemao/nemo/view/JZVideoContainer;)V
    .registers 4

    .line 271
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 272
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 273
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p1, Lcom/codemao/nemo/view/JZVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/view/JZVideoContainer;->preview_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/view/JZVideoContainer;->preview:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
