.class public final Lcom/google/android/exoplayer2/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$ErrorSource;
    }
.end annotation


# static fields
.field public static final ERROR_SOURCE_EXO_MEDIA_DRM:I = 0x1

.field public static final ERROR_SOURCE_LICENSE_ACQUISITION:I = 0x2

.field public static final ERROR_SOURCE_PROVISIONING:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCodeForMediaDrmException(Ljava/lang/Exception;I)I
    .registers 7

    .line 66
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->isMediaDrmStateException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 67
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_11
    const/16 v1, 0x17

    const/16 v2, 0x1776

    if-lt v0, v1, :cond_1e

    .line 68
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    const/16 v1, 0x1772

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2b

    .line 70
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return v1

    :cond_2b
    if-lt v0, v3, :cond_36

    .line 72
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isDeniedByServerException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 p0, 0x1777

    return p0

    .line 74
    :cond_36
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz v0, :cond_3d

    const/16 p0, 0x1771

    return p0

    .line 76
    :cond_3d
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v0, :cond_44

    const/16 p0, 0x1773

    return p0

    .line 78
    :cond_44
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz p0, :cond_4b

    const/16 p0, 0x1778

    return p0

    :cond_4b
    const/4 p0, 0x1

    if-ne p1, p0, :cond_4f

    return v2

    :cond_4f
    const/4 p0, 0x2

    if-ne p1, p0, :cond_55

    const/16 p0, 0x1774

    return p0

    :cond_55
    const/4 p0, 0x3

    if-ne p1, p0, :cond_59

    return v1

    .line 90
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
