.class public final Lcom/google/android/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORMATS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Lcom/google/android/exoplayer2/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method public static synthetic $r8$lambda$OSucO-GokAXNCAKDiwNz_o1YsYw(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/TrackGroup;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 131
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/source/TrackGroup$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 57
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/TrackGroup;->verifyCorrectness()V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 142
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .registers 4

    .line 133
    sget-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    const/4 v1, 0x0

    .line 136
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 137
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 134
    invoke-static {v0, p0, v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    return-object v0
.end method

.method private static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Different "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " combined in one TrackGroup: \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track 0) and \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_a

    const-string v0, "und"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const-string p0, ""

    :cond_c
    return-object p0
.end method

.method private static normalizeRoleFlags(I)I
    .registers 1

    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method private verifyCorrectness()V
    .registers 7

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    const/4 v3, 0x1

    .line 152
    :goto_16
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v5, v4

    if-ge v3, v5, :cond_62

    .line 153
    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const-string v2, "languages"

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 161
    :cond_39
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_5f

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "role flags"

    .line 162
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_62
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

    if-eqz p1, :cond_25

    .line 104
    const-class v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_25

    .line 107
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 108
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 91
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_f

    const/16 v0, 0x20f

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    .line 96
    :cond_f
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    const/4 v0, 0x0

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 82
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 126
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
