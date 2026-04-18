.class public final Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;
.super Ljava/lang/Object;
.source "ImageCompressUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/utils/ImageCompressUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompressResult"
.end annotation


# instance fields
.field private final base64:Ljava/lang/String;

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final errorMessage:Ljava/lang/String;

.field private final fileSize:I

.field private final originalSize:I

.field private final success:Z


# direct methods
.method public constructor <init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    .line 42
    iput-object p2, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object p3, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    .line 45
    iput p5, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    .line 46
    iput-object p6, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p2

    :goto_8
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_e

    move-object v2, v1

    goto :goto_f

    :cond_e
    move-object v2, p3

    :goto_f
    and-int/lit8 v3, p7, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    goto :goto_17

    :cond_16
    move v3, p4

    :goto_17
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_1c

    goto :goto_1d

    :cond_1c
    move v4, p5

    :goto_1d
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, p6

    :goto_23
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move-object p5, v2

    move p6, v3

    move p7, v4

    move-object p8, v1

    .line 40
    invoke-direct/range {p2 .. p8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget p5, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    :cond_21
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->copy(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;
    .registers 15

    new-instance v7, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    iget v3, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getBase64()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    return v0
.end method

.method public final getOriginalSize()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    return v0
.end method

.method public final getSuccess()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_35
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompressResult(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", base64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->base64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->originalSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
