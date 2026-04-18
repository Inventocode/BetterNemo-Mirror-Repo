.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;
.super Ljava/lang/Object;
.source "CTVideoPlayerFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2;->invoke()Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    goto :goto_10

    :cond_f
    move-wide v3, v1

    .line 48
    :goto_10
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    .line 49
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0, v3, v4, v1, v2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$updateProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;JJ)V

    .line 50
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$setCurrentTime(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;J)V

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$progressRun$2$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getHandler$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_33

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_33
    return-void
.end method
