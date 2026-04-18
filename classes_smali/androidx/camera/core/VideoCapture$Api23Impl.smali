.class Landroidx/camera/core/VideoCapture$Api23Impl;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method static getCodecExceptionErrorCode(Landroid/media/MediaCodec$CodecException;)I
    .registers 1

    .line 2095
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p0

    return p0
.end method
