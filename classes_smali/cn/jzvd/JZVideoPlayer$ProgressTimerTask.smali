.class public Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "JZVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/JZVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jzvd/JZVideoPlayer;


# direct methods
.method public constructor <init>(Lcn/jzvd/JZVideoPlayer;)V
    .registers 2

    .line 1213
    iput-object p1, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->this$0:Lcn/jzvd/JZVideoPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1216
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->this$0:Lcn/jzvd/JZVideoPlayer;

    iget v1, v0, Lcn/jzvd/JZVideoPlayer;->currentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a

    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    .line 1217
    :cond_a
    iget-object v0, v0, Lcn/jzvd/JZVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;

    invoke-direct {v1, p0}, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;-><init>(Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method
