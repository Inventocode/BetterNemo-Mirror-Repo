.class public Lcom/codemao/midi/util/MidiImageUtils;
.super Ljava/lang/Object;
.source "MidiImageUtils.java"


# direct methods
.method public static blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 105
    :cond_3
    :try_start_3
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    const/high16 v0, 0x3f000000  # 0.5f

    .line 106
    invoke-static {p0, v0}, Lcom/codemao/midi/util/MidiImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 107
    invoke-static {p3, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p1, p1

    .line 111
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method

.method public static recycleImageBitmap(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 74
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 75
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_22

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_22

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    :goto_22
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 137
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 138
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 139
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object p1

    .line 143
    :cond_23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 4

    .line 29
    :try_start_0
    invoke-static {}, Lcom/smarx/notchlib/NotchScreenManager;->getInstance()Lcom/smarx/notchlib/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/midi/util/MidiImageUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/midi/util/MidiImageUtils$1;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v1}, Lcom/smarx/notchlib/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method
