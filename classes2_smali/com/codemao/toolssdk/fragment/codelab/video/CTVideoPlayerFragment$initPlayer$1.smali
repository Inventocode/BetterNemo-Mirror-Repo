.class public final Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;
.super Ljava/lang/Object;
.source "CTVideoPlayerFragment.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->initPlayer()V
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

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 5

    .line 155
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    .line 156
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$setPlaying$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V

    .line 157
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$changePlayingView(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Z)V

    if-eqz p1, :cond_1a

    .line 159
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$fetchDurationProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$launchDelayCleanScreen(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    goto :goto_1f

    .line 162
    :cond_1a
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$stopFetchDuration(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    .line 164
    :goto_1f
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$updateBufferProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V

    .line 165
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$EventListener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 6

    .line 149
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$updateBufferProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V

    .line 151
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",reason:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_47

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    goto :goto_68

    .line 194
    :cond_d
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->playCompleteEnd()V

    .line 195
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "播放结束"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    goto :goto_68

    .line 187
    :cond_1a
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$updateBufferProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V

    .line 188
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    goto :goto_36

    :cond_34
    const-wide/16 v0, 0x0

    :goto_36
    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$setTotalTime(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;J)V

    .line 189
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->showCompleteTips(Z)V

    .line 190
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "播放器已准备好，可以播放或正在播放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    goto :goto_68

    .line 182
    :cond_47
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$getPlayer$p(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$updateBufferProgress(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;Lcom/google/android/exoplayer2/ExoPlayer;Ljava/lang/Integer;)V

    .line 183
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "播放器正在缓冲数据"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    goto :goto_68

    .line 177
    :cond_5c
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment$initPlayer$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;->access$stopFetchDuration(Lcom/codemao/toolssdk/fragment/codelab/video/CTVideoPlayerFragment;)V

    .line 178
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "播放器处于空闲状态，未初始化或已释放"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 170
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "播放异常:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
