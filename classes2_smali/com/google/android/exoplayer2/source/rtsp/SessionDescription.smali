.class final Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_CONTROL:Ljava/lang/String; = "control"

.field public static final ATTR_FMTP:Ljava/lang/String; = "fmtp"

.field public static final ATTR_LENGTH:Ljava/lang/String; = "length"

.field public static final ATTR_RANGE:Ljava/lang/String; = "range"

.field public static final ATTR_RTPMAP:Ljava/lang/String; = "rtpmap"

.field public static final ATTR_TOOL:Ljava/lang/String; = "tool"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final SUPPORTED_SDP_VERSION:Ljava/lang/String; = "0"


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

.field public final emailAddress:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaDescriptionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final origin:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final sessionInfo:Ljava/lang/String;

.field public final sessionName:Ljava/lang/String;

.field public final timing:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)V
    .registers 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$100(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 263
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$200(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 264
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$300(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$400(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$500(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 267
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$600(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 268
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$700(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$800(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->bitrate:I

    .line 270
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$900(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 271
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$1000(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 272
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$1100(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->access$1200(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;-><init>(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)V

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

    if-eqz p1, :cond_8a

    .line 281
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_8a

    .line 284
    :cond_11
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

    .line 285
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->bitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->bitrate:I

    if-ne v2, v3, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 286
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 287
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    .line 291
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 292
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 293
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 294
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 295
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 296
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    return v0

    :cond_8a
    :goto_8a
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 307
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    if-nez v0, :cond_48

    const/4 v0, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_4c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_55

    const/4 v0, 0x0

    goto :goto_59

    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_59
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_62

    const/4 v0, 0x0

    goto :goto_66

    :cond_62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_66
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_6f

    const/4 v0, 0x0

    goto :goto_73

    :cond_6f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_73
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    if-nez v0, :cond_7b

    goto :goto_7f

    :cond_7b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v1, v2

    return v1
.end method
