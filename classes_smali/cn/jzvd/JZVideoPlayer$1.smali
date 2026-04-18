.class Lcn/jzvd/JZVideoPlayer$1;
.super Ljava/lang/Object;
.source "JZVideoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jzvd/JZVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5

    const/4 v0, -0x2

    const-string v1, "]"

    const-string v2, "JiaoZiVideoPlayer"

    if-eq p1, v0, :cond_2a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    goto :goto_67

    .line 79
    :cond_b
    invoke-static {}, Lcn/jzvd/JZVideoPlayer;->goOnPlayOnPause()V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 84
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_4c

    .line 85
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 86
    invoke-static {}, Lcn/jzvd/JZMediaManager;->instance()Lcn/jzvd/JZMediaManager;

    move-result-object p1

    iget-object p1, p1, Lcn/jzvd/JZMediaManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 91
    :cond_4c
    :goto_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return-void
.end method
