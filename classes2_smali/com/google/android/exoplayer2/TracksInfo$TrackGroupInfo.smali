.class public final Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;
.super Ljava/lang/Object;
.source "TracksInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/TracksInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackGroupInfo"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_TRACK_GROUP:I = 0x0

.field private static final FIELD_TRACK_SELECTED:I = 0x3

.field private static final FIELD_TRACK_SUPPORT:I = 0x1

.field private static final FIELD_TRACK_TYPE:I = 0x2


# instance fields
.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final trackSelected:[Z

.field private final trackSupport:[I

.field private final trackType:I


# direct methods
.method public static synthetic $r8$lambda$D4ofyCIaHIGAOxMGv6TYCYOcbYI(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 189
    sget-object v0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 64
    array-length v1, p2

    if-ne v0, v1, :cond_d

    array-length v1, p4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 66
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    .line 67
    iput p3, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    .line 68
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    return p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 209
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;
    .registers 5

    .line 191
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    const/4 v1, 0x0

    .line 193
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 194
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 198
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v2, v2, [I

    .line 197
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x2

    .line 200
    invoke-static {v2}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    .line 203
    invoke-static {v3}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p0

    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [Z

    .line 202
    invoke-static {p0, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    .line 205
    new-instance v3, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II[Z)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 143
    const-class v2, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_39

    .line 146
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    .line 147
    iget v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 148
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    .line 149
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    iget-object p1, p1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    .line 150
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public getTrackSupport(I)I
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    aget p1, v0, p1

    return p1
.end method

.method public getTrackType()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget-object v1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSelected()Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 105
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isTrackSupported(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public isTrackSelected(I)Z
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isTrackSupported(I)Z
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    aget p1, v0, p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 182
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSupport:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x2

    .line 183
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    .line 184
    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->trackSelected:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object v0
.end method
