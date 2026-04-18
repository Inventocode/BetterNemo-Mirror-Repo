.class final Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V
    .registers 2

    .line 2098
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_c

    goto :goto_2c

    .line 2126
    :cond_c
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_16

    const/4 p1, 0x0

    .line 2128
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 2129
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_2c

    .line 2131
    :cond_16
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 2132
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_2c

    .line 2123
    :cond_23
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_2c

    .line 2120
    :cond_28
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    :goto_2c
    return-void
.end method

.method public onCameraMotion(J[F)V
    .registers 5

    .line 2171
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 2172
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 2174
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 2175
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    :cond_e
    return-void
.end method

.method public onCameraMotionReset()V
    .registers 2

    .line 2181
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 2182
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 2184
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 2185
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_e
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .registers 15

    .line 2157
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_b

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 2158
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 2161
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v1, :cond_16

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 2162
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_16
    return-void
.end method
