.class public Ljp/wasabeef/glide/transformations/BlurTransformation;
.super Ljp/wasabeef/glide/transformations/BitmapTransformation;
.source "BlurTransformation.java"


# static fields
.field private static DEFAULT_DOWN_SAMPLING:I = 0x1

.field private static MAX_RADIUS:I = 0x19


# instance fields
.field private radius:I

.field private sampling:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    sget v0, Ljp/wasabeef/glide/transformations/BlurTransformation;->MAX_RADIUS:I

    sget v1, Ljp/wasabeef/glide/transformations/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, v0, v1}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 49
    sget v0, Ljp/wasabeef/glide/transformations/BlurTransformation;->DEFAULT_DOWN_SAMPLING:I

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljp/wasabeef/glide/transformations/BitmapTransformation;-><init>()V

    .line 53
    iput p1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    .line 54
    iput p2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 88
    instance-of v0, p1, Ljp/wasabeef/glide/transformations/BlurTransformation;

    if-eqz v0, :cond_14

    check-cast p1, Ljp/wasabeef/glide/transformations/BlurTransformation;

    iget v0, p1, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    if-ne v0, v1, :cond_14

    iget p1, p1, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    iget v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 95
    iget v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    mul-int/lit16 v0, v0, 0x3e8

    const v1, 0x2bf5908a

    add-int/2addr v1, v0

    iget v0, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7

    .line 61
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 62
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 63
    iget p5, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    div-int/2addr p1, p5

    .line 64
    div-int/2addr p4, p5

    .line 66
    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p1, p4, p5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p3, p1}, Ljp/wasabeef/glide/transformations/BitmapTransformation;->setCanvasBitmapDensity(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 70
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    iget p4, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    int-to-float p5, p4

    const/high16 v0, 0x3f800000  # 1.0f

    div-float p5, v0, p5

    int-to-float p4, p4

    div-float/2addr v0, p4

    invoke-virtual {p2, p5, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 72
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    const/4 p5, 0x2

    .line 73
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setFlags(I)V

    const/4 p5, 0x0

    .line 74
    invoke-virtual {p2, p3, p5, p5, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    iget p2, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Ljp/wasabeef/glide/transformations/internal/FastBlur;->blur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.wasabeef.glide.transformations.BlurTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/BlurTransformation;->sampling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
