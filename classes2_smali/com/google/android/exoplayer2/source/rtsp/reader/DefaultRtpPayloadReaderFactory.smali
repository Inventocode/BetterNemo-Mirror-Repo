.class public final Lcom/google/android/exoplayer2/source/rtsp/reader/DefaultRtpPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultRtpPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader$Factory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPayloadReader(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)Lcom/google/android/exoplayer2/source/rtsp/reader/RtpPayloadReader;
    .registers 5

    .line 32
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_4e

    goto :goto_36

    :sswitch_16
    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v2, 0x2

    goto :goto_36

    :sswitch_21
    const-string v1, "audio/ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v2, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    packed-switch v2, :pswitch_data_5c

    const/4 p1, 0x0

    return-object p1

    .line 38
    :pswitch_3b  #0x2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpH264Reader;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 34
    :pswitch_41  #0x1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpAc3Reader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpAc3Reader;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 36
    :pswitch_47  #0x0
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpAacReader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/reader/RtpAacReader;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;)V

    return-object v0

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x3313c2e -> :sswitch_2c
        0xb269698 -> :sswitch_21
        0x4f62373a -> :sswitch_16
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_41  #00000001
        :pswitch_3b  #00000002
    .end packed-switch
.end method
