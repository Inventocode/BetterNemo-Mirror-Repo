.class public final Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;
.super Ljava/lang/Object;
.source "RtpPayloadFormat.java"


# static fields
.field private static final RTP_MEDIA_AC3:Ljava/lang/String; = "AC3"

.field private static final RTP_MEDIA_H264:Ljava/lang/String; = "H264"

.field private static final RTP_MEDIA_MPEG4_GENERIC:Ljava/lang/String; = "MPEG4-GENERIC"


# instance fields
.field public final clockRate:I

.field public final fmtpParameters:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final rtpPayloadType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;IILjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    .line 96
    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->clockRate:I

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    .line 98
    invoke-static {p4}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static getMimeTypeFromRtpMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 61
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_42

    goto :goto_30

    :sswitch_10
    const-string v1, "H264"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v1, "AC3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v2, 0x1

    goto :goto_30

    :sswitch_26
    const-string v1, "MPEG4-GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    packed-switch v2, :pswitch_data_50

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39  #0x2
    const-string p0, "video/avc"

    return-object p0

    :pswitch_3c  #0x1
    const-string p0, "audio/ac3"

    return-object p0

    :pswitch_3f  #0x0
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :sswitch_data_42
    .sparse-switch
        -0x7290cac7 -> :sswitch_26
        0xfc51 -> :sswitch_1b
        0x217d28 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_3c  #00000001
        :pswitch_39  #00000002
    .end packed-switch
.end method

.method public static isFormatSupported(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;)Z
    .registers 5

    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_3c

    goto :goto_36

    :sswitch_16
    const-string v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v3, 0x2

    goto :goto_36

    :sswitch_21
    const-string v0, "AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v3, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v0, "MPEG4-GENERIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    packed-switch v3, :pswitch_data_4a

    return v2

    :pswitch_3a  #0x0, 0x1, 0x2
    return v1

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x7290cac7 -> :sswitch_2c
        0xfc51 -> :sswitch_21
        0x217d28 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_3a  #00000001
        :pswitch_3a  #00000002
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 106
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_35

    .line 109
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;

    .line 110
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    if-ne v2, v3, :cond_33

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->clockRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->clockRate:I

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    .line 112
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    .line 113
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0

    :cond_35
    :goto_35
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->clockRate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
