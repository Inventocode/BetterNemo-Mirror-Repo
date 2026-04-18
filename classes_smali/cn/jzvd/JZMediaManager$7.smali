.class Lcn/jzvd/JZMediaManager$7;
.super Ljava/lang/Object;
.source "JZMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jzvd/JZMediaManager;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcn/jzvd/JZMediaManager;)V
    .registers 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 198
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 199
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onVideoSizeChanged()V

    :cond_d
    return-void
.end method
