.class public final Lcom/google/android/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_COLOR_RANGE:I = 0x1

.field private static final FIELD_COLOR_SPACE:I = 0x0

.field private static final FIELD_COLOR_TRANSFER:I = 0x2

.field private static final FIELD_HDR_STATIC_INFO:I = 0x3


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B


# direct methods
.method public static synthetic $r8$lambda$SRsLTOVVRwVPpRNRARPGRQrMdQM(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/ColorInfo;->lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 190
    sget-object v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 117
    iput p2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 118
    iput p3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 119
    iput-object p4, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    return-void
.end method

.method public static isoColorPrimariesToColorSpace(I)I
    .registers 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    const/4 v1, 0x6

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_15

    if-eq p0, v1, :cond_15

    const/4 v0, 0x7

    if-eq p0, v0, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_15
    const/4 p0, 0x2

    return p0

    :cond_17
    return v1

    :cond_18
    return v0
.end method

.method public static isoTransferCharacteristicsToColorTransfer(I)I
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x10

    const/4 v1, 0x6

    if-eq p0, v0, :cond_14

    const/16 v0, 0x12

    const/4 v2, 0x7

    if-eq p0, v0, :cond_13

    if-eq p0, v1, :cond_15

    if-eq p0, v2, :cond_15

    const/4 p0, -0x1

    return p0

    :cond_13
    return v2

    :cond_14
    return v1

    :cond_15
    const/4 p0, 0x3

    return p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 199
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/ColorInfo;
    .registers 6

    .line 192
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v1, 0x0

    .line 193
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    .line 194
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    .line 195
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    .line 196
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    return-object v0
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

    .line 127
    const-class v2, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    .line 130
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 131
    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 134
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

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

    .line 152
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_1e

    const/16 v0, 0x20f

    .line 154
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    .line 160
    :cond_1e
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 183
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 184
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 185
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    .line 186
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ColorInfo("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
