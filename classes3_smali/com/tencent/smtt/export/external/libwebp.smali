.class public Lcom/tencent/smtt/export/external/libwebp;
.super Ljava/lang/Object;


# static fields
.field private static final BITMAP_ALPHA_8:I = 0x1

.field private static final BITMAP_ARGB_4444:I = 0x3

.field private static final BITMAP_ARGB_8888:I = 0x4

.field private static final BITMAP_RGB_565:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "[image]"

.field private static isMultiCore:Z = false

.field private static mInstance:Lcom/tencent/smtt/export/external/libwebp; = null

.field private static mIsLoadLibSuccess:Z = false


# instance fields
.field private mBitmapType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/smtt/export/external/libwebp;->mBitmapType:I

    return-void
.end method

.method public static checkIsHuaModel()I
    .registers 5

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "huawei"

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_27

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move v2, v0

    :goto_38
    return v2
.end method

.method private getCPUinfo()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    const-string v1, "/system/bin/cat"

    const-string v2, "/proc/cpuinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3f
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/smtt/export/external/libwebp;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/export/external/libwebp;->mInstance:Lcom/tencent/smtt/export/external/libwebp;

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/tencent/smtt/export/external/libwebp;->loadWepLibraryIfNeed(Landroid/content/Context;)V

    new-instance p0, Lcom/tencent/smtt/export/external/libwebp;

    invoke-direct {p0}, Lcom/tencent/smtt/export/external/libwebp;-><init>()V

    sput-object p0, Lcom/tencent/smtt/export/external/libwebp;->mInstance:Lcom/tencent/smtt/export/external/libwebp;

    :cond_e
    sget-object p0, Lcom/tencent/smtt/export/external/libwebp;->mInstance:Lcom/tencent/smtt/export/external/libwebp;

    return-object p0
.end method

.method private isMultiCore()Z
    .registers 3

    invoke-direct {p0}, Lcom/tencent/smtt/export/external/libwebp;->getCPUinfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static loadWepLibraryIfNeed(Landroid/content/Context;)V
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_14

    :try_start_4
    const-string v0, "webp_base"

    invoke-static {p0, v0}, Lcom/tencent/smtt/export/external/LibraryLoader;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    const-string p0, "[image]"

    const-string v0, "Load WebP Library Error...: libwebp.java - loadWepLibraryIfNeed()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    return-void
.end method

.method public static loadWepLibraryIfNeed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    sget-boolean p0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez p0, :cond_28

    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "libwebp_base.so"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z
    :try_end_20
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_20} :catch_21

    goto :goto_28

    :catch_21
    const-string p0, "[image]"

    const-string p1, "Load WebP Library Error...: libwebp.java - loadWepLibraryIfNeed()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public decodeBase([B[I[I)[I
    .registers 5

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_d

    const-string p1, "[image]"

    const-string p2, "Load WebP Library Error..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_d
    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->isMultiCore:Z

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->nativeDecode([BZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public decodeBase_16bit([BLandroid/graphics/Bitmap$Config;)[I
    .registers 4

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_d

    const-string p1, "[image]"

    const-string p2, "Load WebP Library Error..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_d
    sget-object v0, Lcom/tencent/smtt/export/external/libwebp$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1c

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/smtt/export/external/libwebp;->mBitmapType:I

    goto :goto_1f

    :cond_1c
    const/4 p2, 0x3

    iput p2, p0, Lcom/tencent/smtt/export/external/libwebp;->mBitmapType:I

    :goto_1f
    sget-boolean p2, Lcom/tencent/smtt/export/external/libwebp;->isMultiCore:Z

    iget v0, p0, Lcom/tencent/smtt/export/external/libwebp;->mBitmapType:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/export/external/libwebp;->nativeDecode_16bit([BZI)[I

    move-result-object p1

    return-object p1
.end method

.method public decodeInto([B[I[I)[I
    .registers 5

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_d

    const-string p1, "[image]"

    const-string p2, "Load WebP Library Error..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_d
    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->isMultiCore:Z

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->nativeDecodeInto([BZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public getInfo([B[I[I)I
    .registers 5

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->nativeGetInfo([B[I[I)I

    move-result p1

    return p1
.end method

.method public incDecode([B[I[I)[I
    .registers 5

    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->mIsLoadLibSuccess:Z

    if-nez v0, :cond_d

    const-string p1, "[image]"

    const-string p2, "Load WebP Library Error..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_d
    sget-boolean v0, Lcom/tencent/smtt/export/external/libwebp;->isMultiCore:Z

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/smtt/export/external/libwebp;->nativeIDecode([BZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public native nativeDecode([BZ[I[I)[I
.end method

.method public native nativeDecodeInto([BZ[I[I)[I
.end method

.method public native nativeDecode_16bit([BZI)[I
.end method

.method public native nativeGetInfo([B[I[I)I
.end method

.method public native nativeIDecode([BZ[I[I)[I
.end method
