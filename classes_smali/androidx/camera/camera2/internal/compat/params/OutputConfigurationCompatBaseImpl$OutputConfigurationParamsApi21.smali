.class final Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;
.super Ljava/lang/Object;
.source "OutputConfigurationCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputConfigurationParamsApi21"
.end annotation


# instance fields
.field final mConfiguredFormat:I

.field final mConfiguredGenerationId:I

.field final mConfiguredSize:Landroid/util/Size;

.field mIsShared:Z

.field mPhysicalCameraId:Ljava/lang/String;

.field final mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .registers 3

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mIsShared:Z

    const-string v0, "Surface must not be null"

    .line 235
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    .line 237
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredSize:Landroid/util/Size;

    .line 238
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredFormat:I

    .line 239
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->getSurfaceGenerationId(Landroid/view/Surface;)I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredGenerationId:I

    return-void
.end method

.method private static getSurfaceFormat(Landroid/view/Surface;)I
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi",
            "BanUncheckedReflection"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.hardware.camera2.legacy.LegacyCameraDevice"

    .line 266
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "detectSurfaceType"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 267
    const-class v5, Landroid/view/Surface;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 269
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ge v2, v4, :cond_1d

    .line 271
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1d
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 274
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2c} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2c} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2c} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    goto :goto_34

    :catch_2f
    move-exception p0

    goto :goto_34

    :catch_31
    move-exception p0

    goto :goto_34

    :catch_33
    move-exception p0

    :goto_34
    const-string v1, "OutputConfigCompat"

    const-string v2, "Unable to retrieve surface format."

    .line 279
    invoke-static {v1, v2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static getSurfaceGenerationId(Landroid/view/Surface;)I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi",
            "BlockedPrivateApi",
            "BanUncheckedReflection"
        }
    .end annotation

    .line 290
    :try_start_0
    const-class v0, Landroid/view/Surface;

    const-string v1, "getGenerationId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 292
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_17} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_17} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception p0

    goto :goto_1d

    :catch_1a
    move-exception p0

    goto :goto_1d

    :catch_1c
    move-exception p0

    :goto_1d
    const-string v0, "OutputConfigCompat"

    const-string v1, "Unable to retrieve surface generation id."

    .line 294
    invoke-static {v0, v1, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BlockedPrivateApi",
            "BanUncheckedReflection"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.hardware.camera2.legacy.LegacyCameraDevice"

    .line 249
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSurfaceSize"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 250
    const-class v5, Landroid/view/Surface;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    .line 253
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_22} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_22} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    goto :goto_2a

    :catch_25
    move-exception p0

    goto :goto_2a

    :catch_27
    move-exception p0

    goto :goto_2a

    :catch_29
    move-exception p0

    :goto_2a
    const-string v1, "OutputConfigCompat"

    const-string v2, "Unable to retrieve surface size."

    .line 258
    invoke-static {v1, v2, p0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 303
    instance-of v0, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 307
    :cond_6
    check-cast p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;

    .line 309
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredSize:Landroid/util/Size;

    iget-object v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredFormat:I

    iget v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredFormat:I

    if-ne v0, v2, :cond_56

    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredGenerationId:I

    iget v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredGenerationId:I

    if-ne v0, v2, :cond_56

    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mIsShared:Z

    iget-boolean v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mIsShared:Z

    if-ne v0, v2, :cond_56

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mPhysicalCameraId:Ljava/lang/String;

    .line 313
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_56

    .line 317
    :cond_2f
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v0, :cond_54

    .line 319
    iget-object v3, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_51

    return v1

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_54
    const/4 p1, 0x1

    return p1

    :cond_56
    :goto_56
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 331
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 332
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredGenerationId:I

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 333
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredSize:Landroid/util/Size;

    .line 334
    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 335
    iget v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mConfiguredFormat:I

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 336
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mIsShared:Z

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 339
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatBaseImpl$OutputConfigurationParamsApi21;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_32
    xor-int/2addr v0, v1

    return v0
.end method
