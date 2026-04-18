.class public abstract Lcn/jzvd/JZVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "JZVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;
    }
.end annotation


# static fields
.field public static ACTION_BAR_EXIST:Z = true

.field public static CLICK_QUIT_FULLSCREEN_TIME:J = 0x0L

.field public static FULLSCREEN_ORIENTATION:I = 0x4

.field protected static JZ_USER_EVENT:Lcn/jzvd/JZUserAction; = null

.field public static NORMAL_ORIENTATION:I = 0x1

.field public static SAVE_PROGRESS:Z = true

.field public static TOOL_BAR_EXIST:Z = true

.field protected static UPDATE_PROGRESS_TIMER:Ljava/util/Timer; = null

.field public static WIFI_TIP_DIALOG_SHOWED:Z = false

.field public static onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public bottomContainer:Landroid/view/ViewGroup;

.field public currentScreen:I

.field public currentState:I

.field public currentTimeTextView:Landroid/widget/TextView;

.field public currentUrlMapIndex:I

.field public fullscreenButton:Landroid/widget/ImageView;

.field public headData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public heightRatio:I

.field public loop:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mChangeBrightness:Z

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mDownX:F

.field protected mDownY:F

.field protected mGestureDownBrightness:F

.field protected mGestureDownPosition:I

.field protected mGestureDownVolume:I

.field protected mHandler:Landroid/os/Handler;

.field protected mProgressTimerTask:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekTimePosition:I

.field protected mTouchingProgressBar:Z

.field public objects:[Ljava/lang/Object;

.field public positionInList:I

.field public progressBar:Landroid/widget/SeekBar;

.field public seekToInAdvance:I

.field public startButton:Landroid/widget/ImageView;

.field public textureViewContainer:Landroid/view/ViewGroup;

.field public totalTimeTextView:Landroid/widget/TextView;

.field public urlMap:Ljava/util/LinkedHashMap;

.field public widthRatio:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcn/jzvd/JZVideoPlayer$1;

    invoke-direct {v0}, Lcn/jzvd/JZVideoPlayer$1;-><init>()V

    sput-object v0, Lcn/jzvd/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 102
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcn/jzvd/JZVideoPlayer;->loop:Z

    const/4 v2, 0x0

    .line 106
    iput-object v2, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 107
    iput v1, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    .line 114
    iput v1, p0, Lcn/jzvd/JZVideoPlayer;->widthRatio:I

    .line 115
    iput v1, p0, Lcn/jzvd/JZVideoPlayer;->heightRatio:I

    .line 132
    iput v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 133
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->positionInList:I

    .line 138
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 142
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 101
    iput p2, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 102
    iput p2, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->loop:Z

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 107
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    .line 114
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->widthRatio:I

    .line 115
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->heightRatio:I

    .line 132
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 133
    iput p2, p0, Lcn/jzvd/JZVideoPlayer;->positionInList:I

    .line 143
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static backPress()Z
    .registers 7

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    return v2

    .line 210
    :cond_16
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_65

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 212
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 213
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 214
    iget v2, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne v2, v4, :cond_40

    const/16 v2, 0x8

    goto :goto_42

    :cond_40
    const/16 v2, 0xa

    :goto_42
    invoke-virtual {v0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 217
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->playOnThisJzvd()V

    goto :goto_64

    .line 220
    :cond_4d
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 221
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 222
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 223
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    :goto_64
    return v1

    .line 226
    :cond_65
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 227
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_7c

    .line 228
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9a

    .line 229
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 231
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 232
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 233
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 234
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    return v1

    :cond_9a
    return v2
.end method

.method public static goOnPlayOnPause()V
    .registers 3

    .line 287
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 288
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 289
    iget v1, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1e

    if-nez v1, :cond_12

    goto :goto_1e

    .line 294
    :cond_12
    :try_start_12
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v1

    iget-object v1, v1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 295
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static goOnPlayOnResume()V
    .registers 3

    .line 276
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 277
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 279
    iget v1, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1b

    .line 280
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    .line 281
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1b
    return-void
.end method

.method public static hideSupportActionBar(Landroid/content/Context;)V
    .registers 2

    .line 254
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 255
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 258
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 261
    :cond_17
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v0, :cond_24

    .line 262
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_24
    return-void
.end method

.method public static releaseAllVideosFish()V
    .registers 5

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_25

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "releaseAllVideos"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->completeAllFinish()V

    .line 163
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcn/jzvd/JZMediaManager;->positionInList:I

    .line 164
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    :cond_25
    return-void
.end method

.method public static setJzUserAction(Lcn/jzvd/JZUserAction;)V
    .registers 1

    .line 272
    sput-object p0, Lcn/jzvd/JZVideoPlayer;->JZ_USER_EVENT:Lcn/jzvd/JZUserAction;

    return-void
.end method

.method public static showSupportActionBar(Landroid/content/Context;)V
    .registers 2

    .line 241
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 242
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 245
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 248
    :cond_17
    sget-boolean v0, Lcn/jzvd/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v0, :cond_24

    .line 249
    invoke-static {p0}, Lcn/jzvd/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_24
    return-void
.end method


# virtual methods
.method public addTextureView()V
    .registers 4

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 834
    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelProgressTimer()V
    .registers 2

    .line 886
    sget-object v0, Lcn/jzvd/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 887
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 889
    :cond_7
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mProgressTimerTask:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    if-eqz v0, :cond_e

    .line 890
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_e
    return-void
.end method

.method public clearFloatScreen()V
    .registers 4

    .line 861
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 862
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 863
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 864
    iget-object v1, v0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 865
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 866
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 867
    invoke-static {v0}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    return-void
.end method

.method public clearFullscreenLayout()V
    .registers 4

    .line 848
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 849
    sget v1, Lcn/jzvd/R$id;->jz_fullscreen_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 850
    sget v2, Lcn/jzvd/R$id;->jz_tiny_id:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_22

    .line 852
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_22
    if-eqz v2, :cond_27

    .line 855
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 857
    :cond_27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    return-void
.end method

.method public dismissBrightnessDialog()V
    .registers 1

    return-void
.end method

.method public dismissProgressDialog()V
    .registers 1

    return-void
.end method

.method public dismissVolumeDialog()V
    .registers 1

    return-void
.end method

.method public getCurrentPositionWhenPlaying()I
    .registers 4

    .line 927
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 929
    :cond_a
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_12

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1c

    .line 932
    :cond_12
    :try_start_12
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1c} :catch_1d

    :cond_1c
    return v1

    :catch_1d
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return v1
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .registers 3

    .line 203
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .registers 3

    .line 943
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 946
    :cond_a
    :try_start_a
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    .line 948
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return v1
.end method

.method public abstract getLayoutId()I
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 307
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 308
    sget v0, Lcn/jzvd/R$id;->start:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    .line 309
    sget v0, Lcn/jzvd/R$id;->fullscreen:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 310
    sget v0, Lcn/jzvd/R$id;->bottom_seek_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    .line 311
    sget v0, Lcn/jzvd/R$id;->current:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    .line 312
    sget v0, Lcn/jzvd/R$id;->total:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    .line 313
    sget v0, Lcn/jzvd/R$id;->layout_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    .line 314
    sget v0, Lcn/jzvd/R$id;->surface_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    .line 315
    sget v0, Lcn/jzvd/R$id;->layout_top:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 320
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mScreenWidth:I

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mScreenHeight:I

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 327
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 330
    :try_start_a8
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 331
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    sput p1, Lcn/jzvd/JZVideoPlayer;->NORMAL_ORIENTATION:I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public initTextureView()V
    .registers 3

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->removeTextureView()V

    .line 823
    new-instance v0, Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jzvd/JZResizeTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    .line 824
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public isCurrentJZVD()Z
    .registers 2

    .line 1063
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1064
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isCurrentPlay()Z
    .registers 3

    .line 1057
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    .line 1058
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onAutoCompletion()V
    .registers 4

    .line 740
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 741
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

    const/4 v0, 0x6

    .line 742
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 743
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissVolumeDialog()V

    .line 744
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissProgressDialog()V

    .line 745
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 746
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 747
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    .line 749
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 750
    :cond_41
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->backPress()Z

    .line 752
    :cond_44
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 753
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 387
    sget v0, Lcn/jzvd/R$id;->start:I

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "] "

    const-string v5, "JiaoZiVideoPlayer"

    if-ne p1, v0, :cond_f5

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick start ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_e3

    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v0}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto/16 :goto_e3

    .line 393
    :cond_3c
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eqz p1, :cond_91

    if-ne p1, v3, :cond_43

    goto :goto_91

    :cond_43
    const/4 v0, 0x3

    if-ne p1, v0, :cond_72

    .line 412
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pauseVideo ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 415
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V

    goto/16 :goto_169

    :cond_72
    const/4 v0, 0x5

    if-ne p1, v0, :cond_87

    .line 418
    :try_start_75
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x4

    .line 419
    invoke-virtual {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 420
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_85} :catch_169

    goto/16 :goto_169

    :cond_87
    if-ne p1, v2, :cond_169

    .line 425
    invoke-virtual {p0, v1}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 426
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    goto/16 :goto_169

    .line 394
    :cond_91
    :goto_91
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v0}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d5

    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 395
    invoke-static {p1, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d5

    .line 398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/JZUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c3

    .line 399
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 400
    invoke-virtual {p0, v0, v0}, Lcn/jzvd/JZVideoPlayer;->onError(II)V

    return-void

    .line 404
    :cond_c3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jzvd/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d5

    sget-boolean p1, Lcn/jzvd/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez p1, :cond_d5

    .line 405
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->showWifiDialog(I)V

    return-void

    .line 409
    :cond_d5
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startVideo()V

    .line 410
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eq p1, v3, :cond_dd

    goto :goto_de

    :cond_dd
    const/4 v0, 0x1

    :goto_de
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    goto/16 :goto_169

    .line 390
    :cond_e3
    :goto_e3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/jzvd/R$string;->no_url:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jzvd/JZToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 428
    :cond_f5
    sget v0, Lcn/jzvd/R$id;->fullscreen:I

    if-ne p1, v0, :cond_143

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick fullscreen ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-ne p1, v2, :cond_119

    return-void

    .line 432
    :cond_119
    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne p1, v1, :cond_121

    .line 434
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->backPress()Z

    goto :goto_169

    .line 436
    :cond_121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toFullscreenActivity ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0, v3}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 438
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startWindowFullscreen()V

    goto :goto_169

    .line 440
    :cond_143
    sget v0, Lcn/jzvd/R$id;->surface_container:I

    if-ne p1, v0, :cond_169

    iget p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-ne p1, v3, :cond_169

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick surfaceContainer State=Error ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->backPress()Z

    :catch_169
    :cond_169
    :goto_169
    return-void
.end method

.method public onCompletion()V
    .registers 5

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion  ["

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

    .line 761
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3a

    .line 762
    :cond_27
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 763
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v2, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 765
    :cond_3a
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 766
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 767
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 768
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    .line 769
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iput v1, v0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    .line 771
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 772
    sget-object v1, Lcn/jzvd/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 774
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->clearFullscreenLayout()V

    .line 775
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 777
    sput-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    .line 778
    sput-object v0, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onCompletionFinish()V
    .registers 5

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion  ["

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

    .line 784
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3a

    .line 785
    :cond_27
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 786
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v2, v3}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 788
    :cond_3a
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 789
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 790
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 791
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    .line 792
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iput v1, v0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    .line 794
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 795
    sget-object v1, Lcn/jzvd/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 797
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 800
    sput-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    .line 801
    sput-object v0, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public onError(II)V
    .registers 4

    const/16 v0, 0x26

    if-eq p1, v0, :cond_1a

    const/16 v0, -0x26

    if-eq p1, v0, :cond_1a

    if-eq p2, v0, :cond_1a

    .line 709
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateError()V

    .line 710
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentPlay()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 711
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    :cond_1a
    return-void
.end method

.method public onEvent(I)V
    .registers 6

    .line 1111
    sget-object v0, Lcn/jzvd/JZVideoPlayer;->JZ_USER_EVENT:Lcn/jzvd/JZUserAction;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1d

    .line 1112
    sget-object v1, Lcn/jzvd/JZVideoPlayer;->JZ_USER_EVENT:Lcn/jzvd/JZUserAction;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    iget-object v3, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-interface {v1, p1, v0, v2, v3}, Lcn/jzvd/JZUserAction;->onEvent(ILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public onInfo(II)V
    .registers 3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 701
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePrepared()V

    .line 702
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 718
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_3a

    .line 722
    :cond_9
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->widthRatio:I

    if-eqz v0, :cond_36

    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->heightRatio:I

    if-eqz v0, :cond_36

    .line 723
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 724
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->heightRatio:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->widthRatio:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    .line 725
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000  # 2.0f

    .line 727
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 728
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_39

    .line 731
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_39
    return-void

    .line 719
    :cond_3a
    :goto_3a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPrepared()V
    .registers 3

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

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

    .line 594
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 595
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePrepared()V

    .line 596
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    :cond_39
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    return-void
.end method

.method public onSeekComplete()V
    .registers 1

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bottomProgress onStartTrackingTouch ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JiaoZiVideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 958
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_26
    if-eqz p1, :cond_31

    const/4 v0, 0x1

    .line 960
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 961
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_26

    :cond_31
    return-void
.end method

.method public onStateAutoComplete()V
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateAutoComplete  ["

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

    const/4 v0, 0x6

    .line 692
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 693
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 694
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 695
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStateError()V
    .registers 3

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateError  ["

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

    const/4 v0, 0x7

    .line 686
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 687
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    return-void
.end method

.method public onStateNormal()V
    .registers 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal  ["

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

    const/4 v0, 0x0

    .line 632
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 633
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    return-void
.end method

.method public onStatePause()V
    .registers 3

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause  ["

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

    const/4 v0, 0x5

    .line 680
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 681
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    return-void
.end method

.method public onStatePlaying()V
    .registers 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

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

    const/4 v0, 0x3

    .line 674
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 675
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    return-void
.end method

.method public onStatePrepared()V
    .registers 4

    .line 659
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    if-eqz v0, :cond_13

    .line 660
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    .line 661
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    goto :goto_35

    .line 663
    :cond_13
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jzvd/JZUtils;->getSavedProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_35

    .line 666
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v2

    iget-object v2, v2, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 667
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jzvd/JZUtils;->clearSavedProgress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public onStatePreparing()V
    .registers 3

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

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

    const/4 v0, 0x1

    .line 638
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 639
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->resetProgressAndTime()V

    return-void
.end method

.method public onStatePreparingChangingUrl(II)V
    .registers 4

    const/4 v0, 0x2

    .line 643
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 644
    iput p1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 645
    iput p2, p0, Lcn/jzvd/JZVideoPlayer;->seekToInAdvance:I

    .line 646
    iget-object p2, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    invoke-static {p2, p1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    .line 647
    iget-boolean p1, p0, Lcn/jzvd/JZVideoPlayer;->loop:Z

    sput-boolean p1, Lcn/jzvd/JZMediaManager;->CURRENT_PLING_LOOP:Z

    .line 648
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->headData:Ljava/util/Map;

    sput-object p1, Lcn/jzvd/JZMediaManager;->MAP_HEADER_DATA:Ljava/util/Map;

    .line 649
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jzvd/JZMediaManager;->prepare()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JiaoZiVideoPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 968
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 969
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    .line 970
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_2a
    if-eqz v3, :cond_35

    const/4 v4, 0x0

    .line 972
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 973
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2a

    .line 975
    :cond_35
    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    if-eq v3, v0, :cond_3d

    return-void

    .line 978
    :cond_3d
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    .line 979
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15

    .line 449
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 452
    sget v3, Lcn/jzvd/R$id;->surface_container:I

    const/4 v7, 0x0

    if-ne v2, v3, :cond_232

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "] "

    const-string v4, "JiaoZiVideoPlayer"

    const/4 v5, 0x1

    if-eqz v2, :cond_20b

    if-eq v2, v5, :cond_1aa

    const/4 v6, 0x2

    if-eq v2, v6, :cond_23

    goto/16 :goto_232

    .line 465
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch surfaceContainer actionMove ["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->mDownX:F

    sub-float v2, v0, v2

    .line 467
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->mDownY:F

    sub-float v8, v1, v0

    .line 468
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 469
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 470
    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/high16 v11, 0x437f0000  # 255.0f

    if-ne v3, v6, :cond_f2

    .line 471
    iget-boolean v3, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    if-nez v3, :cond_f2

    iget-boolean v3, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    if-nez v3, :cond_f2

    iget-boolean v3, p0, Lcn/jzvd/JZVideoPlayer;->mChangeBrightness:Z

    if-nez v3, :cond_f2

    const/high16 v3, 0x42a00000  # 80.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_6c

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f2

    .line 473
    :cond_6c
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    if-ltz v0, :cond_7f

    .line 477
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_f2

    .line 478
    iput-boolean v5, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    .line 479
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownPosition:I

    goto :goto_f2

    .line 483
    :cond_7f
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->mDownX:F

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float v1, v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e8

    .line 484
    iput-boolean v5, p0, Lcn/jzvd/JZVideoPlayer;->mChangeBrightness:Z

    .line 485
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 486
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpg-float v1, v0, v9

    if-gez v1, :cond_cd

    .line 488
    :try_start_a0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current system brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a0 .. :try_end_c7} :catch_c8

    goto :goto_f2

    :catch_c8
    move-exception v0

    .line 491
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_f2

    :cond_cd
    mul-float v0, v0, v11

    .line 494
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current activity brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 498
    :cond_e8
    iput-boolean v5, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    .line 499
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownVolume:I

    .line 505
    :cond_f2
    :goto_f2
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_11c

    .line 506
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v6

    .line 507
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownPosition:I

    int-to-float v0, v0

    int-to-float v1, v6

    mul-float v1, v1, v2

    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    if-le v0, v6, :cond_10c

    .line 509
    iput v6, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    .line 510
    :cond_10c
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    invoke-static {v0}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-static {v6}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v5

    .line 512
    iget v4, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/jzvd/JZVideoPlayer;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    .line 514
    :cond_11c
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    const/high16 v1, 0x42c80000  # 100.0f

    const/high16 v2, 0x40400000  # 3.0f

    if-eqz v0, :cond_151

    neg-float v8, v8

    .line 516
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v3, v0

    mul-float v3, v3, v8

    mul-float v3, v3, v2

    .line 517
    iget v4, p0, Lcn/jzvd/JZVideoPlayer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 518
    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownVolume:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v10, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 520
    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownVolume:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v3, v8, v2

    mul-float v3, v3, v1

    iget v4, p0, Lcn/jzvd/JZVideoPlayer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    neg-float v3, v8

    .line 521
    invoke-virtual {p0, v3, v0}, Lcn/jzvd/JZVideoPlayer;->showVolumeDialog(FI)V

    .line 524
    :cond_151
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mChangeBrightness:Z

    if-eqz v0, :cond_232

    neg-float v0, v8

    mul-float v3, v0, v11

    mul-float v3, v3, v2

    .line 526
    iget v4, p0, Lcn/jzvd/JZVideoPlayer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/jzvd/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 528
    iget v5, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    int-to-float v3, v3

    add-float v6, v5, v3

    div-float/2addr v6, v11

    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_17a

    .line 529
    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_18b

    :cond_17a
    add-float v6, v5, v3

    div-float/2addr v6, v11

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_187

    const v3, 0x3c23d70a  # 0.01f

    .line 531
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_18b

    :cond_187
    add-float/2addr v5, v3

    div-float/2addr v5, v11

    .line 533
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 535
    :goto_18b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jzvd/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 537
    iget v3, p0, Lcn/jzvd/JZVideoPlayer;->mGestureDownBrightness:F

    mul-float v3, v3, v1

    div-float/2addr v3, v11

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 538
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->showBrightnessDialog(I)V

    goto/16 :goto_232

    .line 543
    :cond_1aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch surfaceContainer actionUp ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 545
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissProgressDialog()V

    .line 546
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissVolumeDialog()V

    .line 547
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 548
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_1f8

    const/16 v0, 0xc

    .line 549
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 552
    :try_start_1d9
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 553
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v0
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1e8} :catch_1e9

    goto :goto_1ea

    :catch_1e9
    const/4 v0, 0x0

    .line 557
    :goto_1ea
    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->mSeekTimePosition:I

    mul-int/lit8 v1, v1, 0x64

    if-nez v0, :cond_1f1

    goto :goto_1f2

    :cond_1f1
    move v5, v0

    :goto_1f2
    div-int/2addr v1, v5

    .line 558
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 560
    :cond_1f8
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    if-eqz v0, :cond_201

    const/16 v0, 0xb

    .line 561
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 563
    :cond_201
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    .line 564
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    .line 565
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangeBrightness:Z

    .line 566
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    goto :goto_232

    .line 455
    :cond_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch surfaceContainer actionDown ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v5, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 458
    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->mDownX:F

    .line 459
    iput v1, p0, Lcn/jzvd/JZVideoPlayer;->mDownY:F

    .line 460
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangeVolume:Z

    .line 461
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangePosition:Z

    .line 462
    iput-boolean v7, p0, Lcn/jzvd/JZVideoPlayer;->mChangeBrightness:Z

    :cond_232
    :goto_232
    return v7
.end method

.method public onVideoSizeChanged()V
    .registers 3

    .line 872
    sget-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    if-eqz v0, :cond_f

    .line 873
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jzvd/JZMediaManager;->getVideoSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jzvd/JZResizeTextureView;->setVideoSize(Landroid/graphics/Point;)V

    :cond_f
    return-void
.end method

.method public playOnThisJzvd()V
    .registers 3

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOnThisJzvd  ["

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

    .line 1071
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 1072
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    iput v0, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 1073
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 1075
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    .line 1076
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    return-void
.end method

.method public removeTextureView()V
    .registers 3

    const/4 v0, 0x0

    .line 838
    sput-object v0, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 839
    sget-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 840
    sget-object v0, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method public resetProgressAndTime()V
    .registers 4

    .line 919
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 920
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 921
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 915
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_7
    return-void
.end method

.method public setCloseController(Z)V
    .registers 2

    return-void
.end method

.method public setCurrentState(I)V
    .registers 3

    .line 1021
    iput p1, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 1022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatePreparing  ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JiaoZiVideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setProgressAndText(III)V
    .registers 5

    .line 896
    :try_start_0
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_24

    if-gez p1, :cond_7

    const/4 p1, 0x0

    :cond_7
    const/16 v0, 0x64

    if-le p1, v0, :cond_d

    const/16 p1, 0x64

    .line 903
    :cond_d
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 904
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    iget-object p1, p0, Lcn/jzvd/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/jzvd/JZUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method

.method public setState(I)V
    .registers 3

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, p1, v0, v0}, Lcn/jzvd/JZVideoPlayer;->setState(III)V

    return-void
.end method

.method public setState(III)V
    .registers 5

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 p2, 0x3

    if-eq p1, p2, :cond_21

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1d

    const/4 p2, 0x6

    if-eq p1, p2, :cond_19

    const/4 p2, 0x7

    if-eq p1, p2, :cond_15

    goto :goto_30

    .line 622
    :cond_15
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateError()V

    goto :goto_30

    .line 625
    :cond_19
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    goto :goto_30

    .line 619
    :cond_1d
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePause()V

    goto :goto_30

    .line 616
    :cond_21
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePlaying()V

    goto :goto_30

    .line 613
    :cond_25
    invoke-virtual {p0, p2, p3}, Lcn/jzvd/JZVideoPlayer;->onStatePreparingChangingUrl(II)V

    goto :goto_30

    .line 610
    :cond_29
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePreparing()V

    goto :goto_30

    .line 607
    :cond_2d
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    :goto_30
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 6

    .line 339
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "URL_KEY_DEFAULT"

    .line 340
    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .registers 8

    .line 345
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_25

    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v0}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 346
    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 349
    :cond_25
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    .line 353
    :try_start_34
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v1

    iget-object v1, v1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_43
    if-eqz v0, :cond_4e

    .line 359
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 362
    :cond_4e
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    goto :goto_8e

    .line 363
    :cond_56
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 364
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->startWindowTiny()V

    goto :goto_8e

    .line 365
    :cond_68
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-nez v0, :cond_83

    sget-object v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 366
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 367
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    goto :goto_8e

    .line 371
    :cond_83
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-nez v0, :cond_8e

    sget-object v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    .line 373
    :cond_8e
    :goto_8e
    iput-object p1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    .line 374
    iput p2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    .line 375
    iput p3, p0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    .line 376
    iput-object p4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcn/jzvd/JZVideoPlayer;->headData:Ljava/util/Map;

    .line 379
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    return-void
.end method

.method public showBrightnessDialog(I)V
    .registers 2

    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .registers 6

    mul-int/lit8 p1, p3, 0x64

    if-nez p5, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    move p2, p5

    .line 1156
    :goto_7
    div-int/2addr p1, p2

    .line 1157
    invoke-virtual {p0, p1, p3, p5}, Lcn/jzvd/JZVideoPlayer;->setProgressAndText(III)V

    return-void
.end method

.method public showVolumeDialog(FI)V
    .registers 3

    return-void
.end method

.method public showWifiDialog(I)V
    .registers 2

    return-void
.end method

.method public startProgressTimer()V
    .registers 8

    .line 879
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->cancelProgressTimer()V

    .line 880
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcn/jzvd/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    .line 881
    new-instance v2, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {v2, p0}, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;-><init>(Lcn/jzvd/JZVideoPlayer;)V

    iput-object v2, p0, Lcn/jzvd/JZVideoPlayer;->mProgressTimerTask:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    .line 882
    sget-object v1, Lcn/jzvd/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public startVideo()V
    .registers 5

    .line 574
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->completeAll()V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->initTextureView()V

    .line 577
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 579
    sget-object v1, Lcn/jzvd/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 580
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 581
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    .line 582
    iget-boolean v0, p0, Lcn/jzvd/JZVideoPlayer;->loop:Z

    sput-boolean v0, Lcn/jzvd/JZMediaManager;->CURRENT_PLING_LOOP:Z

    .line 583
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->headData:Ljava/util/Map;

    sput-object v0, Lcn/jzvd/JZMediaManager;->MAP_HEADER_DATA:Ljava/util/Map;

    .line 584
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStatePreparing()V

    .line 585
    invoke-static {p0}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 586
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->positionInList:I

    iput v1, v0, Lcn/jzvd/JZMediaManager;->positionInList:I

    return-void
.end method

.method public startWindowFullscreen()V
    .registers 8

    .line 988
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

    .line 989
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 990
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/jzvd/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    invoke-static {v0, v1}, Lcn/jzvd/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 992
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 993
    sget v1, Lcn/jzvd/R$id;->jz_fullscreen_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 995
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 997
    :cond_4b
    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 999
    :try_start_52
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

    .line 1000
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jzvd/JZVideoPlayer;

    .line 1001
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1002
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1003
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1006

    .line 1004
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 1006
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v0}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    .line 1007
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 1008
    invoke-static {v2}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 1011
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V

    .line 1012
    iget-object v0, v2, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1013
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->startProgressTimer()V

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b2
    return-void
.end method

.method public startWindowTiny()V
    .registers 8

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWindowTiny  ["

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

    const/16 v0, 0x9

    .line 1027
    invoke-virtual {p0, v0}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 1028
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    if-eqz v0, :cond_a0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2c

    goto :goto_a0

    .line 1030
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jzvd/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1031
    sget v1, Lcn/jzvd/R$id;->jz_tiny_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 1033
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1035
    :cond_48
    iget-object v2, p0, Lcn/jzvd/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1038
    :try_start_4f
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

    .line 1039
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jzvd/JZVideoPlayer;

    .line 1040
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1041
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x190

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x55

    .line 1042
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1043
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/jzvd/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/jzvd/JZVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 1045
    iget v0, p0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v0}, Lcn/jzvd/JZVideoPlayer;->setState(I)V

    .line 1046
    invoke-virtual {v2}, Lcn/jzvd/JZVideoPlayer;->addTextureView()V

    .line 1047
    invoke-static {v2}, Lcn/jzvd/JZVideoPlayerManager;->setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V

    .line 1048
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onStateNormal()V
    :try_end_96
    .catch Ljava/lang/InstantiationException; {:try_start_4f .. :try_end_96} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_96} :catch_97

    goto :goto_a0

    :catch_97
    move-exception v0

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a0

    :catch_9c
    move-exception v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_a0
    :goto_a0
    return-void
.end method

.method public stop()V
    .registers 2

    .line 653
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->pause()V

    .line 654
    invoke-virtual {p0}, Lcn/jzvd/JZVideoPlayer;->onAutoCompletion()V

    return-void
.end method
