.class public Lcn/codemao/android/sketch/view/dialog/CutHelperView;
.super Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;
.source "CutHelperView.java"


# instance fields
.field private blurringView:Lcn/codemao/android/sketch/view/BlurringView;

.field private currentPosition:I

.field private isDissmissing:Z

.field private ivPreview:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private root:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private targetView:Landroid/view/View;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$vtr8SyeLApBFOWY-kC7rHI_uKnk(Lcn/codemao/android/sketch/view/dialog/CutHelperView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->lambda$initPopupContent$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->isDissmissing:Z

    .line 47
    iput-object p2, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->targetView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/view/View;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->ivPreview:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/ProgressBar;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Lcn/codemao/android/sketch/view/BlurringView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/sketch/view/dialog/CutHelperView;I)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->playVideo(I)V

    return-void
.end method

.method private synthetic lambda$initPopupContent$0(Landroid/view/View;)V
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->dismiss()V

    return-void
.end method

.method private playVideo(I)V
    .registers 4

    .line 78
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->isDissmissing:Z

    if-eqz v0, :cond_5

    return-void

    .line 82
    :cond_5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 83
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 84
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    const-string v1, "https://static.codemao.cn/nemo/video/help/clip_01_202003201544.mp4"

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 86
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setZOrderMediaOverlay(Z)V

    .line 87
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$1;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 94
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 108
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    if-gtz p1, :cond_47

    .line 126
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    goto :goto_51

    .line 128
    :cond_47
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 129
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    :goto_51
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->isDissmissing:Z

    .line 175
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 176
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 177
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 52
    sget v0, Lcn/codemao/android/sketch/R$layout;->layout_cut_help:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 57
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 58
    sget v0, Lcn/codemao/android/sketch/R$id;->video_player:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    .line 59
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_preview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->ivPreview:Landroid/view/View;

    .line 60
    sget v0, Lcn/codemao/android/sketch/R$id;->progress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->progressBar:Landroid/widget/ProgressBar;

    .line 61
    sget v0, Lcn/codemao/android/sketch/R$id;->blur:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/BlurringView;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    .line 62
    sget v0, Lcn/codemao/android/sketch/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 64
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "#FA161334"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/BlurringView;->setBlurredView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6e

    .line 68
    :cond_56
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->blurringView:Lcn/codemao/android/sketch/view/BlurringView;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/BlurringView;->setBlurredView(Landroid/view/View;)V

    .line 73
    :goto_6e
    sget v0, Lcn/codemao/android/sketch/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->dismiss()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_f

    .line 161
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 162
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->currentPosition:I

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->videoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_9

    .line 168
    iget v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->currentPosition:I

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->playVideo(I)V

    :cond_9
    return-void
.end method

.method protected onShow()V
    .registers 4

    .line 138
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->onShow()V

    .line 139
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V

    const-wide/16 v1, 0x136

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
