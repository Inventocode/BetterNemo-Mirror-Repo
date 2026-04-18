.class Lcn/jzvd/JZMediaManager$6;
.super Ljava/lang/Object;
.source "JZMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jzvd/JZMediaManager;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcn/jzvd/JZMediaManager;II)V
    .registers 4

    .line 180
    iput p2, p0, Lcn/jzvd/JZMediaManager$6;->val$what:I

    iput p3, p0, Lcn/jzvd/JZMediaManager$6;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 183
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 184
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    iget v1, p0, Lcn/jzvd/JZMediaManager$6;->val$what:I

    iget v2, p0, Lcn/jzvd/JZMediaManager$6;->val$extra:I

    invoke-virtual {v0, v1, v2}, Lcn/jzvd/JZVideoPlayer;->onInfo(II)V

    :cond_11
    return-void
.end method
