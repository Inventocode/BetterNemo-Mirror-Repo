.class Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;
.super Ljava/lang/Object;
.source "JZVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;


# direct methods
.method constructor <init>(Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;)V
    .registers 2

    .line 1217
    iput-object p1, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1220
    iget-object v0, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->this$0:Lcn/jzvd/JZVideoPlayer;

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v0

    .line 1221
    iget-object v1, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    iget-object v1, v1, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->this$0:Lcn/jzvd/JZVideoPlayer;

    invoke-virtual {v1}, Lcn/jzvd/JZVideoPlayer;->getDuration()I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    if-nez v1, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v1

    .line 1222
    :goto_17
    div-int/2addr v2, v3

    .line 1223
    iget-object v3, p0, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask$1;->this$1:Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;

    iget-object v3, v3, Lcn/jzvd/JZVideoPlayer$ProgressTimerTask;->this$0:Lcn/jzvd/JZVideoPlayer;

    invoke-virtual {v3, v2, v0, v1}, Lcn/jzvd/JZVideoPlayer;->setProgressAndText(III)V

    return-void
.end method
