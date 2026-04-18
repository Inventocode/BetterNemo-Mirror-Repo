.class final Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;
.super Ljava/lang/Object;
.source "MediaDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$MediaType;,
        Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;,
        Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final RTP_AVP_PROFILE:Ljava/lang/String; = "RTP/AVP"


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaTitle:Ljava/lang/String;

.field public final mediaType:Ljava/lang/String;

.field public final payloadType:I

.field public final port:I

.field public final rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

.field public final transportProtocol:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$100(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$200(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->port:I

    .line 249
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$300(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 250
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$400(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->payloadType:I

    .line 251
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$500(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 252
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$600(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 253
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$700(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->bitrate:I

    .line 254
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->access$800(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 256
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$1;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;-><init>(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6d

    .line 265
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_6d

    .line 269
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;

    .line 270
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->port:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->port:I

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->payloadType:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->payloadType:I

    if-ne v2, v3, :cond_6b

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->bitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->bitrate:I

    if-ne v2, v3, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 275
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    .line 276
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    .line 277
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->connection:Ljava/lang/String;

    .line 278
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->key:Ljava/lang/String;

    .line 279
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    return v0

    :cond_6d
    :goto_6d
    return v1
.end method

.method public getFmtpParametersAsMap()Lcom/google/common/collect/ImmutableMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "fmtp"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    .line 308
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v1, " "

    .line 312
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 318
    aget-object v0, v1, v4

    const-string v1, ";\\s?"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 320
    array-length v2, v0

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_46

    aget-object v6, v0, v3

    const-string v7, "="

    .line 322
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 323
    aget-object v7, v6, v5

    aget-object v6, v6, v4

    invoke-virtual {v1, v7, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 325
    :cond_46
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 286
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->port:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->transportProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 288
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->payloadType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 289
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->rtpMapAttribute:Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$RtpMapAttribute;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->mediaTitle:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_40

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_49

    const/4 v0, 0x0

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;->key:Ljava/lang/String;

    if-nez v0, :cond_55

    goto :goto_59

    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_59
    add-int/2addr v1, v2

    return v1
.end method
