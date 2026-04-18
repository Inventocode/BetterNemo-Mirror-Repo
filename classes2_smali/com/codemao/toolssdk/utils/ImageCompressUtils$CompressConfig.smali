.class public final Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;
.super Ljava/lang/Object;
.source "ImageCompressUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/utils/ImageCompressUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompressConfig"
.end annotation


# instance fields
.field private final format:Landroid/graphics/Bitmap$CompressFormat;

.field private final keepAspectRatio:Z

.field private final maxFileSize:I

.field private final maxHeight:I

.field private final maxWidth:I

.field private final quality:I


# direct methods
.method public constructor <init>()V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;)V
    .registers 8

    const-string v0, "format"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    .line 30
    iput p2, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    .line 31
    iput p3, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    .line 32
    iput p4, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    .line 33
    iput-boolean p5, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    .line 34
    iput-object p6, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public synthetic constructor <init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    const/16 p1, 0x780

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_f

    const/16 p2, 0x438

    const/16 p8, 0x438

    goto :goto_10

    :cond_f
    move p8, p2

    :goto_10
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_19

    const/16 p3, 0x50

    const/16 v0, 0x50

    goto :goto_1a

    :cond_19
    move v0, p3

    :goto_1a
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_23

    const/high16 p4, 0x100000

    const/high16 v1, 0x100000

    goto :goto_24

    :cond_23
    move v1, p4

    :goto_24
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_2b

    const/4 p5, 0x1

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    move v2, p5

    :goto_2c
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_32

    .line 34
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_32
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    .line 28
    invoke-direct/range {p2 .. p8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-boolean v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p1, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v1, p1, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final getFormat()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final getKeepAspectRatio()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    return v0
.end method

.method public final getMaxFileSize()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    return v0
.end method

.method public final getMaxHeight()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    return v0
.end method

.method public final getMaxWidth()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    return v0
.end method

.method public final getQuality()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :cond_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompressConfig(maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->quality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->maxFileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keepAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->keepAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
