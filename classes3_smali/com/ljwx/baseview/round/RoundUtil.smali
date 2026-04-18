.class public Lcom/ljwx/baseview/round/RoundUtil;
.super Ljava/lang/Object;
.source "RoundUtil.java"


# direct methods
.method public static csl(IF)Landroid/content/res/ColorStateList;
    .registers 8

    .line 26
    invoke-static {p0, p1}, Lcom/ljwx/baseview/round/RoundUtil;->darker(IF)I

    move-result p1

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    new-array v3, v5, [I

    aput-object v3, v1, v2

    new-array v0, v0, [I

    aput p1, v0, v5

    aput p0, v0, v2

    .line 29
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static darker(IF)I
    .registers 5

    shr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_7

    const p0, 0x22808080

    :cond_7
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 19
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 20
    aget v2, v0, v1

    mul-float v2, v2, p1

    aput v2, v0, v1

    shr-int/lit8 p0, p0, 0x18

    .line 21
    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static initShadowPaint(IIII)Landroid/graphics/Paint;
    .registers 6

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    .line 91
    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public static parseGradientColors(Ljava/lang/String;)[I
    .registers 4

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 55
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 56
    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_25

    .line 57
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    :cond_25
    return-object v0
.end method

.method public static varargs parseGradientColors([I)[I
    .registers 7

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    const/4 v4, -0x1

    if-ge v2, v0, :cond_10

    aget v5, p0, v2

    if-eq v5, v4, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    if-nez v3, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_14
    new-array v0, v3, [I

    .line 42
    array-length v2, p0

    const/4 v3, 0x0

    :goto_18
    if-ge v1, v2, :cond_25

    aget v5, p0, v1

    if-eq v5, v4, :cond_22

    .line 44
    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_25
    return-object v0
.end method

.method public static parseGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 82
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 80
    :pswitch_6  #0x7
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 78
    :pswitch_9  #0x6
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 76
    :pswitch_c  #0x5
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 74
    :pswitch_f  #0x4
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 72
    :pswitch_12  #0x3
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 70
    :pswitch_15  #0x2
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 68
    :pswitch_18  #0x1
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    .line 66
    :pswitch_1b  #0x0
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_18  #00000001
        :pswitch_15  #00000002
        :pswitch_12  #00000003
        :pswitch_f  #00000004
        :pswitch_c  #00000005
        :pswitch_9  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
