.class public final Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# static fields
.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_DISABLED:I = 0x2

.field private static final MODE_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultMediaCodecAdapterFactory"


# instance fields
.field private asynchronousMode:I

.field private enableSynchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_13

    :cond_b
    if-nez v0, :cond_47

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_47

    .line 93
    :cond_13
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    .line 97
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_30
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_36
    const-string v2, "DefaultMediaCodecAdapterFactory"

    .line 94
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(IZ)V

    .line 101
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1

    .line 103
    :cond_47
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)V
    .registers 2

    .line 85
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    return-void
.end method

.method public forceDisableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
    .registers 2

    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method

.method public forceEnableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
    .registers 2

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method
