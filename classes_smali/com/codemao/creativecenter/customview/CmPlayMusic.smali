.class public Lcom/codemao/creativecenter/customview/CmPlayMusic;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmPlayMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/creativecenter/utils/Mp3PlayController<",
            "TT;>;"
        }
    .end annotation
.end field

.field private playBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p2, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic$1;-><init>(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_play_music:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p0, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    .line 50
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivStop:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->setClickAlphaStatus(Landroid/view/View;)V

    .line 51
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->setClickAlphaStatus(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivStop:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/utils/Mp3PlayController;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changePlayStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Ljava/lang/Object;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playBean:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/CmPlayMusic;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changeStopStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/customview/CmPlayMusic;)Landroid/os/Handler;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private changePlayStatus()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivPlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivStop:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    return-void
.end method

.method private changeStopStatus()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivPlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivStop:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    return-void
.end method

.method private playMusic()V
    .registers 3

    .line 162
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changeStopStatus()V

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    if-eqz v0, :cond_16

    .line 164
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->setOnAudioPlayerListener(Lcom/codemao/creativestore/AudioPlayer$OnAudioPlayerListener;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playBean:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->play(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private stopMusic()V
    .registers 3

    .line 138
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changePlayStatus()V

    .line 141
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    if-eqz v0, :cond_c

    .line 142
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playBean:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 144
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public listenPlayMusic(Lcom/codemao/creativecenter/utils/Mp3PlayController;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/Mp3PlayController<",
            "TT;>;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 111
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playBean:Ljava/lang/Object;

    if-ne v1, v2, :cond_13

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method public onAudioPlayStart()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 129
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_stop:I

    if-ne p1, v0, :cond_c

    .line 130
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->stopMusic()V

    goto :goto_13

    .line 131
    :cond_c
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_play:I

    if-ne p1, v0, :cond_13

    .line 132
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playMusic()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 172
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changePlayStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 119
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    return-void
.end method

.method public setMusicUrl(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->playBean:Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    iget-object v2, v0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-ne v2, p1, :cond_38

    .line 62
    invoke-virtual {v0, p0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 64
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changeStopStatus()V

    .line 65
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getCurrentPosition()J

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->getDuration()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int p1, v2

    const/16 v0, 0x64

    if-le p1, v0, :cond_2b

    const/16 p1, 0x64

    .line 69
    :cond_2b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->viewPlayMusicBinding:Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    .line 70
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 72
    :cond_38
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmPlayMusic;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->changePlayStatus()V

    :goto_40
    return-void
.end method
