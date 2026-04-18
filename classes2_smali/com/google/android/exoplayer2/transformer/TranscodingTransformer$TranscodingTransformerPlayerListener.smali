.class final Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;
.super Ljava/lang/Object;
.source "TranscodingTransformer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TranscodingTransformerPlayerListener"
.end annotation


# instance fields
.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

.field final synthetic this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/transformer/MuxerWrapper;)V
    .registers 4

    .line 694
    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 696
    iput-object p3, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    return-void
.end method

.method private handleTransformationEnded(Ljava/lang/Exception;)V
    .registers 4

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$1100(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;Z)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    if-nez p1, :cond_b

    move-object p1, v0

    :cond_b
    :goto_b
    if-nez p1, :cond_19

    .line 751
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$400(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;)Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$Listener;->onTransformationCompleted(Lcom/google/android/exoplayer2/MediaItem;)V

    goto :goto_24

    .line 753
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$400(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;)Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$Listener;->onTransformationError(Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Exception;)V

    :goto_24
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

.method public synthetic onIsPlayingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

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
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    .line 702
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->handleTransformationEnded(Ljava/lang/Exception;)V

    :cond_7
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    .line 738
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->handleTransformationEnded(Ljava/lang/Exception;)V

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

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 7

    .line 708
    iget-object p2, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    invoke-static {p2}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$900(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;)I

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 711
    :cond_9
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v0, 0x0

    .line 712
    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 713
    iget-boolean p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    if-nez p1, :cond_3f

    .line 714
    iget-wide p1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2c

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x2

    :goto_2d
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$902(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;I)I

    .line 722
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->this$0:Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;->access$1000(Lcom/google/android/exoplayer2/transformer/TranscodingTransformer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    :cond_3f
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

.method public onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V
    .registers 3

    .line 728
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MuxerWrapper;->getTrackCount()I

    move-result p1

    if-nez p1, :cond_12

    .line 729
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The output does not contain any tracks. Check that at least one of the input sample formats is supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TranscodingTransformer$TranscodingTransformerPlayerListener;->handleTransformationEnded(Ljava/lang/Exception;)V

    :cond_12
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
