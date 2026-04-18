.class public Lcn/jzvd/JZMediaManager;
.super Ljava/lang/Object;
.source "JZMediaManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jzvd/JZMediaManager$MediaHandler;
    }
.end annotation


# static fields
.field public static CURRENT_PLAYING_URL:Ljava/lang/String;

.field public static CURRENT_PLING_LOOP:Z

.field private static JZMediaManager:Lcn/jzvd/JZMediaManager;

.field public static MAP_HEADER_DATA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public static surface:Landroid/view/Surface;

.field public static textureView:Lcn/jzvd/JZResizeTextureView;


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I

.field mMediaHandler:Lcn/jzvd/JZMediaManager$MediaHandler;

.field mMediaHandlerThread:Landroid/os/HandlerThread;

.field mainThreadHandler:Landroid/os/Handler;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field public positionInList:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    .line 37
    iput v0, p0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JiaoZiVideoPlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jzvd/JZMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Lcn/jzvd/JZMediaManager$MediaHandler;

    iget-object v1, p0, Lcn/jzvd/JZMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/jzvd/JZMediaManager$MediaHandler;-><init>(Lcn/jzvd/JZMediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jzvd/JZMediaManager;->mMediaHandler:Lcn/jzvd/JZMediaManager$MediaHandler;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static instance()Lcn/jzvd/JZMediaManager;
    .registers 1

    .line 51
    sget-object v0, Lcn/jzvd/JZMediaManager;->JZMediaManager:Lcn/jzvd/JZMediaManager;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcn/jzvd/JZMediaManager;

    invoke-direct {v0}, Lcn/jzvd/JZMediaManager;-><init>()V

    sput-object v0, Lcn/jzvd/JZMediaManager;->JZMediaManager:Lcn/jzvd/JZMediaManager;

    .line 54
    :cond_b
    sget-object v0, Lcn/jzvd/JZMediaManager;->JZMediaManager:Lcn/jzvd/JZMediaManager;

    return-object v0
.end method


# virtual methods
.method public getVideoSize()Landroid/graphics/Point;
    .registers 4

    .line 58
    iget v0, p0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    if-eqz v0, :cond_12

    .line 59
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    iget v2, p0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    .line 143
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$3;

    invoke-direct {v0, p0, p2}, Lcn/jzvd/JZMediaManager$3;-><init>(Lcn/jzvd/JZMediaManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 131
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$2;

    invoke-direct {v0, p0}, Lcn/jzvd/JZMediaManager$2;-><init>(Lcn/jzvd/JZMediaManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 167
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$5;

    invoke-direct {v0, p0, p2, p3}, Lcn/jzvd/JZMediaManager$5;-><init>(Lcn/jzvd/JZMediaManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 180
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$6;

    invoke-direct {v0, p0, p2, p3}, Lcn/jzvd/JZMediaManager$6;-><init>(Lcn/jzvd/JZMediaManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 118
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 119
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$1;

    invoke-direct {v0, p0}, Lcn/jzvd/JZMediaManager$1;-><init>(Lcn/jzvd/JZMediaManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcn/jzvd/JZMediaManager$4;

    invoke-direct {v0, p0}, Lcn/jzvd/JZMediaManager$4;-><init>(Lcn/jzvd/JZMediaManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSurfaceTextureAvailable ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JiaoZiVideoPlayer"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object p2, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_2d

    .line 94
    sput-object p1, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 95
    invoke-virtual {p0}, Lcn/jzvd/JZMediaManager;->prepare()V

    goto :goto_32

    .line 97
    :cond_2d
    sget-object p1, Lcn/jzvd/JZMediaManager;->textureView:Lcn/jzvd/JZResizeTextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :goto_32
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    .line 109
    sget-object p1, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureSizeChanged ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JiaoZiVideoPlayer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 193
    iput p2, p0, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    .line 194
    iput p3, p0, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    .line 195
    iget-object p1, p0, Lcn/jzvd/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcn/jzvd/JZMediaManager$7;

    invoke-direct {p2, p0}, Lcn/jzvd/JZMediaManager$7;-><init>(Lcn/jzvd/JZMediaManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_7
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 78
    invoke-virtual {p0}, Lcn/jzvd/JZMediaManager;->releaseMediaPlayer()V

    .line 79
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 80
    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iget-object v1, p0, Lcn/jzvd/JZMediaManager;->mMediaHandler:Lcn/jzvd/JZMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseMediaPlayer()V
    .registers 3

    .line 85
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 86
    iput v1, v0, Landroid/os/Message;->what:I

    .line 87
    iget-object v1, p0, Lcn/jzvd/JZMediaManager;->mMediaHandler:Lcn/jzvd/JZMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
