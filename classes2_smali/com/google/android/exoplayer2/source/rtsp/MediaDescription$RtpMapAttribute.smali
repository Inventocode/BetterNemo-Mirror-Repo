.class public final Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RtpMapAttribute"
.end annotation


# instance fields
.field public final clockRate:I

.field public final encodingParameters:I

.field public final mediaEncoding:Ljava/lang/String;

.field public final payloadType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;II)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    .line 74
    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    .line 75
    iput p4, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, " "

    .line 46
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 47
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 48
    aget-object v0, p0, v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "/"

    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 51
    array-length v4, p0

    if-lt v4, v1, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 52
    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    .line 54
    array-length v5, p0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3e

    .line 55
    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 57
    :cond_3e
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    aget-object p0, p0, v3

    invoke-direct {v1, v0, p0, v2, v4}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;-><init>(ILjava/lang/String;II)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 83
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    .line 86
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    .line 87
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    if-ne v2, p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->payloadType:I

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 98
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->clockRate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->encodingParameters:I

    add-int/2addr v1, v0

    return v1
.end method
