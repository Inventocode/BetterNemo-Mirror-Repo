.class public final Lcom/codemao/toolssdk/func/OriginMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "OriginMediaPlayer.kt"

# interfaces
.implements Lcom/codemao/toolssdk/func/IMediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getCurrentPositionCompose()J
    .registers 3

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDurationCompose()J
    .registers 3

    .line 12
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
