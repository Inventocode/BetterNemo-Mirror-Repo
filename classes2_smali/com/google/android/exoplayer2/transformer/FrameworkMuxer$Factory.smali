.class public final Lcom/google/android/exoplayer2/transformer/FrameworkMuxer$Factory;
.super Ljava/lang/Object;
.source "FrameworkMuxer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/transformer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/media/MediaMuxer;

    .line 55
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 56
    invoke-static {p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;->access$000(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    .line 57
    new-instance p1, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;-><init>(Landroid/media/MediaMuxer;Lcom/google/android/exoplayer2/transformer/FrameworkMuxer$1;)V

    return-object p1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-static {p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;->access$000(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 46
    new-instance p1, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;-><init>(Landroid/media/MediaMuxer;Lcom/google/android/exoplayer2/transformer/FrameworkMuxer$1;)V

    return-object p1
.end method

.method public bridge synthetic create(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/Muxer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer$Factory;->create(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/Muxer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;

    move-result-object p1

    return-object p1
.end method

.method public supportsOutputMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/transformer/FrameworkMuxer;->access$000(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method public supportsSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 74
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "video/mp4"

    .line 76
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5a

    if-eqz v1, :cond_3d

    const-string p2, "video/3gpp"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    const-string p2, "video/avc"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    const-string p2, "video/mp4v-es"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt p2, v3, :cond_3b

    const-string p2, "video/hevc"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v4, 0x0

    :cond_3c
    :goto_3c
    return v4

    :cond_3d
    if-eqz v0, :cond_88

    const-string p2, "audio/mp4a-latm"

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_59

    const-string p2, "audio/3gpp"

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_59

    const-string p2, "audio/amr-wb"

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :cond_59
    :goto_59
    return v4

    :cond_5a
    const-string v2, "video/webm"

    .line 87
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    sget p2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p2, v2, :cond_88

    if-eqz v1, :cond_7f

    const-string v0, "video/x-vnd.on2.vp8"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    if-lt p2, v3, :cond_7d

    const-string p2, "video/x-vnd.on2.vp9"

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x0

    :cond_7e
    :goto_7e
    return v4

    :cond_7f
    if-eqz v0, :cond_88

    const-string p2, "audio/vorbis"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_88
    return v5
.end method
