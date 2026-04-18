.class public Lcom/codemao/nemo/view/JZVideoContainer3;
.super Lcn/jzvd/JZVideoPlayer;
.source "JZVideoContainer3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;
    }
.end annotation


# instance fields
.field private mEventListener:Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/jzvd/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static backPress()Z
    .registers 7

    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_16

    return v2

    .line 125
    :cond_16
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_65

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 127
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 128
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    .line 129
    iget v2, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-ne v2, v4, :cond_40

    const/16 v2, 0x8

    goto :goto_42

    :cond_40
    const/16 v2, 0xa

    :goto_42
    invoke-virtual {v0, v2}, Lcn/jzvd/JZVideoPlayer;->onEvent(I)V

    .line 131
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->playOnThisJzvd()V

    goto :goto_64

    .line 133
    :cond_4d
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 134
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 135
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 136
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    :goto_64
    return v1

    .line 139
    :cond_65
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 140
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_7c

    .line 141
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcn/jzvd/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9a

    .line 142
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcn/jzvd/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 144
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iput v2, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    .line 145
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->clearFloatScreen()V

    .line 146
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 147
    invoke-static {v3}, Lcn/jzvd/JZVideoPlayerManager;->setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V

    return v1

    :cond_9a
    return v2
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0d0352

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onAutoCompletion()V
    .registers 4

    .line 103
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

    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer;->urlMap:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcn/jzvd/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcn/jzvd/JZUtils;->getCurrentUrlFromMap(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jzvd/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0}, Lcom/codemao/nemo/view/JZVideoContainer3;->onStateAutoComplete()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    .line 84
    invoke-super {p0, p1}, Lcn/jzvd/JZVideoPlayer;->onClick(Landroid/view/View;)V

    return-void

    .line 78
    :sswitch_b
    invoke-static {}, Lcom/codemao/nemo/view/JZVideoContainer3;->backPress()Z

    return-void

    .line 69
    :sswitch_f
    iget-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer3;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;

    if-eqz p1, :cond_16

    .line 70
    invoke-interface {p1}, Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;->onFinish()V

    :cond_16
    return-void

    nop

    :sswitch_data_18
    .sparse-switch
        0x7f0a0087 -> :sswitch_f
        0x7f0a0088 -> :sswitch_b
        0x7f0a0569 -> :sswitch_b
        0x7f0a056a -> :sswitch_f
        0x7f0a0606 -> :sswitch_b
        0x7f0a0607 -> :sswitch_f
    .end sparse-switch
.end method

.method public onPrepared()V
    .registers 1

    .line 96
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onPrepared()V

    return-void
.end method

.method public onStateAutoComplete()V
    .registers 2

    .line 90
    invoke-super {p0}, Lcn/jzvd/JZVideoPlayer;->onStateAutoComplete()V

    .line 91
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public setOnFinishListener(Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/codemao/nemo/view/JZVideoContainer3;->mEventListener:Lcom/codemao/nemo/view/JZVideoContainer3$OnEventListener;

    return-void
.end method
