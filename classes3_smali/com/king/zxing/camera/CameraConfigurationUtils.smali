.class public final Lcom/king/zxing/camera/CameraConfigurationUtils;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ";"

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method private static buildMiddleArea(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    neg-int v2, p0

    invoke-direct {v1, v2, v2, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 20

    move-object/from16 v0, p1

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    const-string v2, "Parameters contained no preview size!"

    if-nez v1, :cond_25

    const-string v0, "Device returned no supported preview sizes; using default"

    .line 276
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 281
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 279
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_25
    invoke-static {}, Lcom/king/zxing/util/LogUtils;->isShowLog()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 288
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 290
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported preview sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 294
    :cond_69
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_73

    int-to-double v5, v3

    int-to-double v3, v4

    div-double/2addr v5, v3

    goto :goto_77

    :cond_73
    int-to-double v4, v4

    int-to-double v6, v3

    div-double v5, v4, v6

    .line 299
    :goto_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenAspectRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 305
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    .line 306
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int v11, v9, v10

    const v12, 0x25800

    if-ge v11, v12, :cond_ac

    move-wide v15, v5

    move v12, v7

    goto :goto_10f

    :cond_ac
    const/4 v12, 0x1

    if-ge v9, v10, :cond_b1

    const/4 v13, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v13, 0x0

    :goto_b2
    if-eqz v13, :cond_b6

    move v14, v9

    goto :goto_b7

    :cond_b6
    move v14, v10

    :goto_b7
    if-eqz v13, :cond_bb

    move v13, v10

    goto :goto_bc

    :cond_bb
    move v13, v9

    :goto_bc
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 315
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    const-string v12, "maybeFlipped:%d * %d"

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    move-wide v15, v5

    int-to-double v4, v14

    move v12, v7

    int-to-double v6, v13

    div-double/2addr v4, v6

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aspectRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    sub-double/2addr v4, v15

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "distortion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const-wide v6, 0x3fa999999999999aL  # 0.05

    cmpl-double v17, v4, v6

    if-lez v17, :cond_114

    :cond_10f
    :goto_10f
    move v7, v12

    :goto_110
    move-wide v5, v15

    const/4 v4, 0x0

    goto/16 :goto_92

    .line 325
    :cond_114
    iget v4, v0, Landroid/graphics/Point;->x:I

    if-ne v14, v4, :cond_136

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ne v13, v4, :cond_136

    .line 326
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found preview size exactly matching screen size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-object v0

    :cond_136
    if-le v11, v12, :cond_10f

    move-object v3, v8

    move v7, v11

    goto :goto_110

    :cond_13b
    if-eqz v3, :cond_15b

    .line 342
    new-instance v0, Landroid/graphics/Point;

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using largest suitable preview size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-object v0

    .line 348
    :cond_15b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-eqz v0, :cond_17f

    .line 352
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No suitable preview sizes, using default: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-object v1

    .line 350
    :cond_17f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value from among: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_6a

    .line 363
    array-length v0, p2

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_6a

    aget-object v2, p2, v1

    .line 364
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can set "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-object v2

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_6a
    const-string p0, "No supported values match"

    .line 370
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V
    .registers 4

    .line 208
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "barcode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Barcode scene mode already set"

    .line 209
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene mode"

    .line 212
    invoke-static {v2, v0, v1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 216
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public static setBestExposure(Landroid/hardware/Camera$Parameters;Z)V
    .registers 7

    .line 113
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    if-nez v0, :cond_10

    if-eqz v1, :cond_6b

    :cond_10
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_6b

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const/high16 v3, 0x3fc00000  # 1.5f

    :goto_1a
    div-float/2addr v3, v2

    .line 119
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v3, p1

    mul-float v2, v2, v3

    .line 122
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 123
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    const-string v1, " / "

    if-ne v0, p1, :cond_4d

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exposure compensation already set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_70

    .line 126
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting exposure compensation to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_70

    :cond_6b
    const-string p0, "Camera does not support exposure compensation"

    .line 130
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_70
    return-void
.end method

.method public static setFocus(Landroid/hardware/Camera$Parameters;ZZZ)V
    .registers 7

    .line 58
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "focus mode"

    if-eqz p1, :cond_25

    const-string p1, "auto"

    if-nez p3, :cond_1c

    if-eqz p2, :cond_f

    goto :goto_1c

    :cond_f
    const-string p2, "continuous-picture"

    const-string v2, "continuous-video"

    .line 66
    filled-new-array {p2, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 62
    :cond_1c
    :goto_1c
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-nez p3, :cond_36

    if-nez p1, :cond_36

    const-string p1, "macro"

    const-string p2, "edof"

    .line 75
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_36
    if-eqz p1, :cond_5a

    .line 81
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Focus mode already set to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_5a

    .line 84
    :cond_57
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;)V
    .registers 4

    .line 168
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_44

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Old focus areas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 v0, 0x190

    .line 170
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus area to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_49

    :cond_44
    const-string p0, "Device does not support focus areas"

    .line 174
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_49
    return-void
.end method

.method public static setInvertColor(Landroid/hardware/Camera$Parameters;)V
    .registers 4

    .line 260
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    const-string v1, "negative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Negative effect already set"

    .line 261
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    return-void

    .line 265
    :cond_12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "color effect"

    .line 264
    invoke-static {v2, v0, v1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 268
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public static setMetering(Landroid/hardware/Camera$Parameters;)V
    .registers 4

    .line 179
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_40

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Old metering areas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 v0, 0x190

    .line 181
    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting metering area to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/king/zxing/camera/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_45

    :cond_40
    const-string p0, "Device does not support metering areas"

    .line 185
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public static setTorch(Landroid/hardware/Camera$Parameters;Z)V
    .registers 5

    .line 90
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "flash mode"

    if-eqz p1, :cond_15

    const-string p1, "torch"

    const-string v2, "on"

    .line 93
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_15
    const-string p1, "off"

    .line 98
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/king/zxing/camera/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    if-eqz p1, :cond_57

    .line 103
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flash mode already set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_57

    .line 106
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting flash mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public static setVideoStabilization(Landroid/hardware/Camera$Parameters;)V
    .registers 2

    .line 195
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 196
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Video stabilization already enabled"

    .line 197
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_21

    :cond_12
    const-string v0, "Enabling video stabilization..."

    .line 199
    invoke-static {v0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_21

    :cond_1c
    const-string p0, "This device does not support video stabilization"

    .line 203
    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->d(Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 397
    iget-object v2, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 399
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
