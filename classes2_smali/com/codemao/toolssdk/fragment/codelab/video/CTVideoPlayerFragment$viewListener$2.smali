.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;
.super Ljava/lang/Object;
.source "CTVideoPlayerFragment.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->viewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private isTouch:Z

.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .line 114
    iget-boolean p2, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->isTouch:Z

    if-eqz p2, :cond_2d

    .line 115
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {p2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 116
    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide p2

    goto :goto_13

    :cond_11
    const-wide/16 p2, 0x0

    :goto_13
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    int-to-long v0, p1

    mul-long p2, p2, v0

    long-to-float p1, p2

    const/high16 p2, 0x42c80000  # 100.0f

    div-float/2addr p1, p2

    .line 117
    iget-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    float-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$setCurrentTime(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;J)V

    .line 118
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$removeDelayCleanRun(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    :cond_2d
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->isTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 127
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    .line 128
    :goto_9
    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    int-to-float p1, p1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr p1, v2

    invoke-static {v1, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$mediaSeekTo(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;F)V

    .line 129
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$launchDelayCleanScreen(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    .line 130
    iput-boolean v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$viewListener$2;->isTouch:Z

    return-void
.end method
