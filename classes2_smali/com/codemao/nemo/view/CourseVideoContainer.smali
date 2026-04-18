.class public Lcom/codemao/nemo/view/CourseVideoContainer;
.super Lcn/jzvd/JZVideoPlayer;
.source "CourseVideoContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;,
        Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;
    }
.end annotation


# instance fields
.field public NEED_WIFI_REMIND:Z

.field private backView:Landroid/view/View;

.field private backView_l:Landroid/view/View;

.field private createBtn_l:Landroid/view/View;

.field private currentTimeTextView_l:Landroid/widget/TextView;

.field private fullView:Landroid/widget/ImageView;

.field private hasCreate:Z

.field private isPad:Z

.field private isPreviewVisible:Z

.field ivCreate:Landroid/view/View;

.field iv_next_l:Landroid/widget/ImageView;

.field iv_retry_l:Landroid/widget/ImageView;

.field jz_retry_l:Landroid/view/View;

.field public mBar:Landroid/widget/ProgressBar;

.field private mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

.field private mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

.field private mStatusListener:Lcom/codemao/nemo/view/listener/VideoStatusListener;

.field private mVideoUrl:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private midPlayBtn:Landroid/widget/ImageView;

.field private midPlayBtn_l:Landroid/widget/ImageView;

.field private netBack_l:Landroid/view/View;

.field private netBack_p:Landroid/view/View;

.field private netBtn_l:Landroid/view/View;

.field private netBtn_p:Landroid/view/View;

.field private netContainer_l:Landroid/view/View;

.field private netContainer_p:Landroid/view/View;

.field private nextResourceId:I

.field private nextText:I

.field private nextVisible:I

.field public preview:Landroid/widget/ImageView;

.field private preview_url:Ljava/lang/String;

.field private root_l:Landroid/view/View;

.field private root_p:Landroid/view/View;

.field private seekBar_l:Landroid/widget/SeekBar;

.field public smallPlayBtn:Landroid/widget/ImageView;

.field private smallPlayBtn_l:Landroid/widget/ImageView;

.field private totalTimeTextView_l:Landroid/widget/TextView;

.field private tvCraeteText:Ljava/lang/String;

.field tv_Create:Landroid/widget/TextView;

.field tv_next_l:Landroid/widget/TextView;

.field tv_retry_l:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$evKo-fbvqDazs3krD6OuZvazR2I(Lcom/codemao/nemo/view/CourseVideoContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->lambda$showWifiDialog$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 86
    invoke-direct {p0, p1}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextText:I

    const/16 v1, 0x8

    .line 76
    iput v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextVisible:I

    .line 77
    iput v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextResourceId:I

    .line 78
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->isPreviewVisible:Z

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->hasCreate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 90
    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextText:I

    const/16 v0, 0x8

    .line 76
    iput v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextVisible:I

    .line 77
    iput p2, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextResourceId:I

    .line 78
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->isPreviewVisible:Z

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->hasCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CourseVideoContainer;)Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/CourseVideoContainer;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/CourseVideoContainer;)Landroid/view/View;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$showWifiDialog$0()V
    .registers 3

    .line 431
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "当前为4G网络"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNormalWindow(Z)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->hideSeekBar(Z)V

    .line 438
    :try_start_17
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method private showSeekBar()V
    .registers 3

    .line 881
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->jz_retry_l:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 884
    :cond_b
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 885
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 886
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 888
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    return-void
.end method

.method private updateButtonText(Landroid/widget/TextView;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tvCraeteText:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 927
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tvCraeteText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_13
    const-string v0, "边学边做"

    .line 929
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    return-void
.end method


# virtual methods
.method public backPressEvent()Z
    .registers 9

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    return v2

    .line 576
    :cond_16
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 577
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_61

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    if-eqz v0, :cond_4b

    .line 579
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 580
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v1

    .line 581
    iget v2, v1, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne v2, v5, :cond_42

    const/16 v2, 0x8

    goto :goto_44

    :cond_42
    const/16 v2, 0xa

    :goto_44
    invoke-virtual {v1, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 583
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->playOnThisJzvd()V

    goto :goto_60

    .line 585
    :cond_4b
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v1

    iput v2, v1, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eqz v0, :cond_56

    .line 587
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 589
    :cond_56
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 590
    invoke-static {v4}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    :goto_60
    return v3

    :cond_61
    if-eqz v0, :cond_84

    .line 593
    iget v1, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-eq v1, v5, :cond_6a

    const/4 v5, 0x3

    if-ne v1, v5, :cond_84

    .line 596
    :cond_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 598
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v1

    iput v2, v1, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 599
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 600
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 601
    invoke-static {v4}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    return v3

    :cond_84
    return v2
.end method

.method public changeExpandVisible(Z)V
    .registers 6

    .line 206
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->hasCreate:Z

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->createBtn_l:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_b

    const/4 v3, 0x0

    goto :goto_d

    :cond_b
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->ivCreate:Landroid/view/View;

    if-eqz p1, :cond_16

    const/4 v3, 0x0

    goto :goto_18

    :cond_16
    const/16 v3, 0x8

    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_Create:Landroid/widget/TextView;

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/16 v1, 0x8

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_Create:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->updateButtonText(Landroid/widget/TextView;)V

    return-void
.end method

.method public changePlayBtnStatus(Z)V
    .registers 3

    if-eqz p1, :cond_1d

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080530

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080146

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_37

    .line 302
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080533

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f080147

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_37
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public changePreViewStatus(Z)V
    .registers 3

    .line 313
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->isPreviewVisible:Z

    .line 314
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    .line 315
    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public clickable()Z
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mBar:Landroid/widget/ProgressBar;

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

    .line 95
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->isPad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0089

    goto :goto_f

    :cond_c
    const v0, 0x7f0d0088

    :goto_f
    return v0
.end method

.method public hideSeekBar(Z)V
    .registers 5

    const/16 v0, 0x8

    if-eqz p1, :cond_1d

    .line 852
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 853
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    .line 855
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :goto_15
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_65

    .line 859
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->jz_retry_l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_37

    .line 860
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 861
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36

    .line 863
    :cond_31
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    return-void

    .line 867
    :cond_37
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 868
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 870
    :cond_44
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 872
    :goto_49
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 873
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    if-nez p1, :cond_5c

    .line 874
    new-instance p1, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;-><init>(Lcom/codemao/nemo/view/CourseVideoContainer;Lcom/codemao/nemo/view/CourseVideoContainer$1;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    .line 876
    :cond_5c
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mHideRunnable:Lcom/codemao/nemo/view/CourseVideoContainer$HideRunnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_65
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 110
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    const p1, 0x7f0a05c4

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    const p1, 0x7f0a04f8

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0485

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->jz_retry_l:Landroid/view/View;

    const p1, 0x7f0a0898

    .line 114
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_next_l:Landroid/widget/TextView;

    const p1, 0x7f0a03e5

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_next_l:Landroid/widget/ImageView;

    const p1, 0x7f0a060f

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_retry_l:Landroid/widget/TextView;

    const p1, 0x7f0a060a

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_retry_l:Landroid/widget/ImageView;

    const p1, 0x7f0a082b

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_Create:Landroid/widget/TextView;

    const p1, 0x7f0a0608

    .line 119
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->ivCreate:Landroid/view/View;

    .line 121
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_Create:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance p1, Lcom/codemao/nemo/view/CourseVideoContainer$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/CourseVideoContainer$1;-><init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V

    .line 132
    new-instance v0, Lcom/codemao/nemo/view/CourseVideoContainer$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CourseVideoContainer$2;-><init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V

    .line 143
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_next_l:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_next_l:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_retry_l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_retry_l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextText:I

    if-lez p1, :cond_91

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_next_l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :cond_91
    iget p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextResourceId:I

    if-lez p1, :cond_9a

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_next_l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9a
    const p1, 0x7f0a0451

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    const p1, 0x7f0a0087

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->backView:Landroid/view/View;

    const p1, 0x7f0a02ac

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->fullView:Landroid/widget/ImageView;

    const p1, 0x7f0a0509

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    const p1, 0x7f0a0747

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->backView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->fullView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0450

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    const p1, 0x7f0a056a

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBack_p:Landroid/view/View;

    const p1, 0x7f0a056c

    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBtn_p:Landroid/view/View;

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBack_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBtn_p:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a044e

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    const p1, 0x7f0a0088

    .line 176
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->backView_l:Landroid/view/View;

    const p1, 0x7f0a01a4

    .line 177
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->createBtn_l:Landroid/view/View;

    const p1, 0x7f0a050a

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a074b

    .line 179
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    const p1, 0x7f0a00d0

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    const p1, 0x7f0a01b0

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    const p1, 0x7f0a07d7

    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    .line 183
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->backView_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->createBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->smallPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a044f

    .line 192
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    const p1, 0x7f0a0569

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBack_l:Landroid/view/View;

    const p1, 0x7f0a056b

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBtn_l:Landroid/view/View;

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBack_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netBtn_l:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 202
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public isFull()Z
    .registers 3

    .line 509
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

    .line 411
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

    .line 412
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 413
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 414
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStateAutoComplete()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    .line 234
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->clickable()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 230
    :sswitch_e
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->backPressEvent()Z

    return-void

    .line 221
    :sswitch_12
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    if-eqz p1, :cond_19

    .line 222
    invoke-interface {p1}, Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;->onFinish()V

    :cond_19
    return-void

    .line 238
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_84

    .line 283
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onClick(Landroid/view/View;)V

    return-void

    :sswitch_25
    const/4 p1, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->hideSeekBar(Z)V

    return-void

    .line 276
    :sswitch_2a
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->refreshStartVideo()V

    return-void

    .line 265
    :sswitch_2e
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->preparedStartVideo()V

    return-void

    .line 270
    :sswitch_32
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 248
    :sswitch_3f
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5d

    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mVideoUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_5d

    .line 250
    :cond_4d
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_56

    .line 253
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->backPressEvent()Z

    goto :goto_5d

    :cond_56
    const/4 p1, 0x7

    .line 256
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 257
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->startWindowFullscreen()V

    :cond_5d
    :goto_5d
    return-void

    .line 242
    :sswitch_5e
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    if-eqz p1, :cond_69

    .line 243
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;->onCreate(I)V

    :cond_69
    return-void

    :sswitch_data_6a
    .sparse-switch
        0x7f0a0087 -> :sswitch_12
        0x7f0a0088 -> :sswitch_e
        0x7f0a0569 -> :sswitch_e
        0x7f0a056a -> :sswitch_12
        0x7f0a0606 -> :sswitch_e
        0x7f0a0607 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_84
    .sparse-switch
        0x7f0a01a4 -> :sswitch_5e
        0x7f0a02ac -> :sswitch_3f
        0x7f0a044e -> :sswitch_32
        0x7f0a0451 -> :sswitch_32
        0x7f0a0509 -> :sswitch_2e
        0x7f0a050a -> :sswitch_2e
        0x7f0a056b -> :sswitch_2a
        0x7f0a056c -> :sswitch_2a
        0x7f0a0608 -> :sswitch_5e
        0x7f0a0747 -> :sswitch_2e
        0x7f0a074b -> :sswitch_2e
        0x7f0a075a -> :sswitch_25
        0x7f0a082b -> :sswitch_5e
    .end sparse-switch
.end method

.method public onInfo(II)V
    .registers 3

    .line 401
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onInfo(II)V

    return-void
.end method

.method public onPrepared()V
    .registers 1

    .line 396
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onPrepared()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 652
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 653
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    if-eqz v0, :cond_a

    .line 654
    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_a
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 660
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    const-string p1, "onStartTrackingTouch"

    .line 661
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showSeekBar()V

    return-void
.end method

.method public onStateAutoComplete()V
    .registers 2

    .line 388
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    .line 389
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showRetryWindow(Z)V

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePreViewStatus(Z)V

    .line 391
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public onStateError()V
    .registers 3

    .line 380
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateError()V

    .line 381
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNetErrorWindow(Z)V

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePreViewStatus(Z)V

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .line 337
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 339
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNormalWindow(Z)V

    return-void
.end method

.method public onStatePause()V
    .registers 2

    .line 371
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V

    const-string v0, "onStatePause"

    .line 372
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNormalWindow(Z)V

    .line 375
    invoke-direct {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showSeekBar()V

    return-void
.end method

.method public onStatePlaying()V
    .registers 3

    .line 360
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePreViewStatus(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNormalWindow(Z)V

    const-string v0, "onStatePlaying"

    .line 364
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onStatePrepared()V
    .registers 1

    .line 355
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePrepared()V

    return-void
.end method

.method public onStatePreparing()V
    .registers 3

    .line 344
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePreparing()V

    .line 345
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->showNormalWindow(Z)V

    const/4 v0, 0x1

    .line 346
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->midPlayBtn_l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStatePreparingChangingUrl(II)V
    .registers 3

    .line 419
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onStatePreparingChangingUrl(II)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 667
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->hideSeekBar(Z)V

    .line 669
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result p1

    if-le v0, p1, :cond_27

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 670
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 671
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStateError()V

    :cond_27
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d0

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00cf

    if-ne v0, v1, :cond_13

    goto :goto_18

    .line 291
    :cond_13
    invoke-super {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 289
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->clickable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public preparedStartVideo()V
    .registers 5

    .line 736
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    if-eqz v0, :cond_7

    .line 737
    invoke-interface {v0}, Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;->onStartPrepare()V

    .line 739
    :cond_7
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_ca

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_ca

    .line 744
    :cond_1a
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eqz v0, :cond_74

    if-ne v0, v2, :cond_22

    goto :goto_74

    :cond_22
    const/4 v1, 0x3

    if-ne v0, v1, :cond_55

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseVideo ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JiaoZiVideoPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0, v1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 764
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 765
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStatePause()V

    goto/16 :goto_c9

    :cond_55
    const/4 v1, 0x5

    if-ne v0, v1, :cond_69

    .line 768
    :try_start_58
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x4

    .line 769
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 770
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStatePlaying()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_c9

    goto :goto_c9

    :cond_69
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c9

    const/4 v0, 0x2

    .line 776
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 777
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    goto :goto_c9

    .line 745
    :cond_74
    :goto_74
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 746
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 748
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 749
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 750
    invoke-virtual {p0, v1, v1}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 753
    :cond_a5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_bd

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_bd

    iget-boolean v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_bd

    .line 754
    iput-boolean v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    .line 755
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->showWifiDialog(I)V

    return-void

    .line 759
    :cond_bd
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 760
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq v0, v2, :cond_c5

    goto :goto_c6

    :cond_c5
    const/4 v1, 0x1

    :goto_c6
    invoke-virtual {p0, v1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    :catch_c9
    :cond_c9
    :goto_c9
    return-void

    .line 740
    :cond_ca
    :goto_ca
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    .line 741
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

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "++refreshStartVideo++"

    .line 795
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_77

    .line 801
    :cond_19
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eqz v0, :cond_20

    if-ne v0, v2, :cond_76

    .line 802
    :cond_20
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 803
    invoke-static {v0, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 805
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 806
    invoke-virtual {p0, v1, v1}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 809
    :cond_4e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    if-eqz v0, :cond_66

    .line 810
    iput-boolean v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->NEED_WIFI_REMIND:Z

    .line 811
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->showWifiDialog(I)V

    return-void

    .line 815
    :cond_66
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStatePreparing()V

    const/4 v0, 0x2

    .line 816
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setState(I)V

    .line 817
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq v0, v2, :cond_72

    goto :goto_73

    :cond_72
    const/4 v1, 0x1

    :goto_73
    invoke-virtual {p0, v1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    :cond_76
    return-void

    .line 797
    :cond_77
    :goto_77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 798
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    return-void
.end method

.method public resetProgressAndTime()V
    .registers 4

    .line 562
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->resetProgressAndTime()V

    .line 563
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 566
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 567
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 568
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public retryStartVideo()V
    .registers 3

    .line 785
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStatePreparing()V

    .line 786
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 787
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 788
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->onStatePlaying()V

    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3

    .line 551
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setBufferProgress(I)V

    .line 552
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_11

    .line 556
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_11
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .registers 3

    .line 934
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tvCraeteText:Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_Create:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 936
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setOnFinishListener(Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;)V
    .registers 2

    .line 838
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    return-void
.end method

.method public setProgressAndText(III)V
    .registers 6

    const/16 v0, 0x64

    if-ne p1, v0, :cond_7

    .line 526
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->stop()V

    .line 528
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setProgressAndText(III)V

    .line 529
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CourseVideoContainer;->isFull()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 533
    :cond_11
    :try_start_11
    iget-boolean v1, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    if-nez v1, :cond_21

    if-gez p1, :cond_18

    const/4 p1, 0x0

    :cond_18
    if-le p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, p1

    .line 540
    :goto_1c
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 542
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    invoke-static {p3}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

.method public setRetryVisible(I)V
    .registers 3

    .line 916
    iput p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextVisible:I

    .line 917
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->jz_retry_l:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 918
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 332
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    return-void
.end method

.method public setStatusListener(Lcom/codemao/nemo/view/listener/VideoStatusListener;)V
    .registers 2

    .line 844
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mStatusListener:Lcom/codemao/nemo/view/listener/VideoStatusListener;

    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 4

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mVideoUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 105
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public setupExtend(II)V
    .registers 4

    .line 907
    iput p2, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextResourceId:I

    .line 908
    iput p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextText:I

    .line 909
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->iv_next_l:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 910
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 911
    iget-object p2, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->tv_next_l:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    return-void
.end method

.method public showNetErrorWindow(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1a

    .line 448
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 455
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :goto_2e
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showNormalWindow(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_f

    .line 495
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 501
    :cond_f
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_19
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showRetryWindow(Z)V
    .registers 4

    const/16 v0, 0x8

    if-eqz p1, :cond_19

    .line 467
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d

    .line 474
    :cond_19
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->root_p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->netContainer_p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :goto_2d
    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mStatusListener:Lcom/codemao/nemo/view/listener/VideoStatusListener;

    if-eqz v0, :cond_43

    .line 482
    invoke-interface {v0, p1}, Lcom/codemao/nemo/view/listener/VideoStatusListener;->onEnd(Z)V

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    .line 484
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->hideSeekBar(Z)V

    const/4 p1, 0x0

    .line 485
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    :cond_43
    return-void
.end method

.method public showWifiDialog(I)V
    .registers 5

    const-string p1, "showWifiDialog"

    .line 426
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mainHandler:Landroid/os/Handler;

    if-nez p1, :cond_14

    .line 428
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mainHandler:Landroid/os/Handler;

    .line 430
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/codemao/nemo/view/CourseVideoContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CourseVideoContainer$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/view/CourseVideoContainer;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWindowFullscreen()V
    .registers 6

    .line 609
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

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 611
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 613
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a044d

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 616
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 618
    :cond_4c
    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 620
    :try_start_53
    new-instance v2, Lcom/codemao/nemo/view/CourseVideoContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/CourseVideoContainer;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 622
    iget-object v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mStatusListener:Lcom/codemao/nemo/view/listener/VideoStatusListener;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setStatusListener(Lcom/codemao/nemo/view/listener/VideoStatusListener;)V

    .line 623
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 624
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1006

    .line 625
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 626
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 627
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setState(I)V

    .line 628
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 629
    iget v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextVisible:I

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setRetryVisible(I)V

    .line 630
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->isPreviewVisible:Z

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePreViewStatus(Z)V

    .line 631
    iget v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextText:I

    iget v1, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->nextResourceId:I

    invoke-virtual {v2, v0, v1}, Lcom/codemao/nemo/view/CourseVideoContainer;->setupExtend(II)V

    .line 632
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->hasCreate:Z

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changeExpandVisible(Z)V

    .line 633
    invoke-static {v2}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 636
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/CourseVideoContainer;->syncData(Lcom/codemao/nemo/view/CourseVideoContainer;)V

    .line 637
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    .line 638
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mEventListener:Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->setOnFinishListener(Lcom/codemao/nemo/view/CourseVideoContainer$OnEventListener;)V

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 641
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->mVideoUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->changePlayBtnStatus(Z)V

    :cond_ba
    const v0, 0x7f0a082b

    .line 644
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/CourseVideoContainer;->updateButtonText(Landroid/widget/TextView;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_c6} :catch_c7

    goto :goto_cb

    :catch_c7
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_cb
    return-void
.end method

.method public syncData(Lcom/codemao/nemo/view/CourseVideoContainer;)V
    .registers 4

    .line 323
    iget-object v0, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 324
    iget-object v0, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->seekBar_l:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 325
    iget-object v0, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->currentTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->totalTimeTextView_l:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/codemao/nemo/view/CourseVideoContainer;->preview_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/nemo/view/CourseVideoContainer;->preview:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
