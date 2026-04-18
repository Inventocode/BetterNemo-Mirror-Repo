.class public Lcn/jzvd/JZMediaManager$MediaHandler;
.super Landroid/os/Handler;
.source "JZMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/JZMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jzvd/JZMediaManager;


# direct methods
.method public constructor <init>(Lcn/jzvd/JZMediaManager;Landroid/os/Looper;)V
    .registers 3

    .line 206
    iput-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    .line 207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 212
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eqz p1, :cond_15

    if-eq p1, v0, :cond_c

    goto/16 :goto_ba

    .line 247
    :cond_c
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_ba

    .line 216
    :cond_15
    :try_start_15
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    const/4 v1, 0x0

    iput v1, p1, Lcn/jzvd/JZMediaManager;->currentVideoWidth:I

    .line 217
    iput v1, p1, Lcn/jzvd/JZMediaManager;->currentVideoHeight:I

    .line 218
    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 219
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 220
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 221
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-boolean v2, Lcn/jzvd/JZMediaManager;->CURRENT_PLING_LOOP:Z

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 222
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v2, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 223
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v2, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 224
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v2, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 225
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 226
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v3, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 227
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v3, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 228
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v3, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 229
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v3, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 230
    const-class p1, Landroid/media/MediaPlayer;

    const-string v3, "setDataSource"

    new-array v4, v0, [Ljava/lang/Class;

    .line 231
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 232
    iget-object v3, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v3, v3, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcn/jzvd/JZMediaManager;->CURRENT_PLAYING_URL:Ljava/lang/String;

    aput-object v4, v0, v1

    sget-object v1, Lcn/jzvd/JZMediaManager;->MAP_HEADER_DATA:Ljava/util/Map;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 234
    sget-object p1, Lcn/jzvd/JZMediaManager;->surface:Landroid/view/Surface;

    if-eqz p1, :cond_a5

    .line 235
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 237
    :cond_a5
    new-instance p1, Landroid/view/Surface;

    sget-object v0, Lcn/jzvd/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcn/jzvd/JZMediaManager;->surface:Landroid/view/Surface;

    .line 238
    iget-object v0, p0, Lcn/jzvd/JZMediaManager$MediaHandler;->this$0:Lcn/jzvd/JZMediaManager;

    iget-object v0, v0, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ba
    return-void
.end method
