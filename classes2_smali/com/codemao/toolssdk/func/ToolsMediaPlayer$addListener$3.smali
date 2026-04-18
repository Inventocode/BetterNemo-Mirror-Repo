.class public final Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;
.super Ljava/lang/Object;
.source "ToolsMediaPlayer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->addListener(Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    .line 91
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
    .registers 4

    .line 93
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    if-eqz p1, :cond_14

    .line 95
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 v0, 0x5

    const-string v1, "播放中"

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    goto :goto_22

    .line 97
    :cond_14
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 v0, 0x6

    const-string v1, "非播放中"

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    :cond_22
    :goto_22
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

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 5

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    goto :goto_6a

    .line 125
    :cond_10
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    const-string v1, "播放结束"

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    goto :goto_6a

    .line 116
    :cond_1e
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getPlayer$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-ne p1, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-eqz v0, :cond_41

    .line 117
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    const/16 v0, 0x8

    const-string v1, "开始播放"

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    goto :goto_6a

    .line 119
    :cond_41
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    const-string v0, "可以开始播放"

    invoke-interface {p1, v1, v0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    goto :goto_6a

    .line 111
    :cond_4f
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    const-string v0, "正在缓冲数据"

    invoke-interface {p1, v1, v0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    goto :goto_6a

    .line 106
    :cond_5d
    iget-object p1, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_6a

    const-string v1, "已停止"

    invoke-interface {p1, v0, v1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$addListener$3;->this$0:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    invoke-static {v0}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer;->access$getStateListener$p(Lcom/codemao/toolssdk/func/ToolsMediaPlayer;)Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_43

    const/4 v1, 0x7

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "播放出错,code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-interface {v0, v1, p1}, Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;->onStateChange(ILjava/lang/String;)V

    :cond_43
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
