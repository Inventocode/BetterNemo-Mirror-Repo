.class public Lcom/codemao/nemo/util/VideoControllerV2;
.super Ljava/lang/Object;
.source "VideoControllerV2.java"


# instance fields
.field private isPlayingBeforeHide:Z

.field private showVideoPage:Z

.field private videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/JZVideoContainer2;Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->isPlayingBeforeHide:Z

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    .line 56
    new-instance v0, Lcom/codemao/nemo/util/VideoControllerV2$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/codemao/nemo/util/VideoControllerV2$1;-><init>(Lcom/codemao/nemo/util/VideoControllerV2;Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/nemo/view/JZVideoContainer2;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/VideoControllerV2;)Lcom/codemao/nemo/view/JZVideoContainer2;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1a

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/JZVideoContainer2;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->isPlayingBeforeHide:Z

    .line 88
    invoke-virtual {p0}, Lcom/codemao/nemo/util/VideoControllerV2;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 115
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->releaseAllVideosFish()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 79
    :try_start_0
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->goOnPlayOnPause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->showVideoPage:Z

    if-eqz v0, :cond_c

    .line 107
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->goOnPlayOnResume()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public show()V
    .registers 3

    .line 94
    iget-boolean v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->isPlayingBeforeHide:Z

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {p0}, Lcom/codemao/nemo/util/VideoControllerV2;->onResume()V

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->videoPlayer:Lcom/codemao/nemo/view/JZVideoContainer2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/codemao/nemo/util/VideoControllerV2;->showVideoPage:Z

    return-void
.end method
