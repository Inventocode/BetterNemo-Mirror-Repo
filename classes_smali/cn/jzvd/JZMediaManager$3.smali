.class Lcn/jzvd/JZMediaManager$3;
.super Ljava/lang/Object;
.source "JZMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jzvd/JZMediaManager;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcn/jzvd/JZMediaManager;I)V
    .registers 3

    .line 143
    iput p2, p0, Lcn/jzvd/JZMediaManager$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 146
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 147
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v1, p0, Lcn/jzvd/JZMediaManager$3;->val$percent:I

    invoke-virtual {v0, v1}, Lcn/jzvd/JZVideoPlayer;->setBufferProgress(I)V

    :cond_f
    return-void
.end method
