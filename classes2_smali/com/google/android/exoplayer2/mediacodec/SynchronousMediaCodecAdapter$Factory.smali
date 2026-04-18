.class public Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_4c

    :try_start_5
    const-string v2, "configureCodec"

    .line 51
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 52
    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iget v5, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 57
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 59
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->createInputSurface:Z

    if-eqz p1, :cond_2f

    .line 60
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-lt p1, v2, :cond_27

    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Api18;->createCodecInputSurface(Landroid/media/MediaCodec;)Landroid/view/Surface;

    move-result-object p1

    goto :goto_30

    .line 63
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Encoding from a surface is only supported on API 18 and up."

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2f} :catch_48

    :cond_2f
    move-object p1, v0

    :goto_30
    :try_start_30
    const-string v2, "startCodec"

    .line 68
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 70
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 71
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_40} :catch_41

    return-object v2

    :catch_41
    move-exception v0

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_50

    :catch_48
    move-exception p1

    goto :goto_50

    :catch_4a
    move-exception p1

    goto :goto_50

    :catch_4c
    move-exception p1

    goto :goto_4f

    :catch_4e
    move-exception p1

    :goto_4f
    move-object v1, v0

    :goto_50
    if-eqz v0, :cond_55

    .line 74
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_55
    if-eqz v1, :cond_5a

    .line 77
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 79
    :cond_5a
    throw p1
.end method

.method protected createCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "createCodec:"

    if-eqz v1, :cond_1a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object p1
.end method
