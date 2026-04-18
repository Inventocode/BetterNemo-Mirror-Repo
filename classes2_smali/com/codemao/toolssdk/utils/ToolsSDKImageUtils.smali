.class public Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;
.super Ljava/lang/Object;
.source "ToolsSDKImageUtils.java"


# direct methods
.method public static synthetic $r8$lambda$y3MyPgkzzprMxZjnPZi_fq-lKIA(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->lambda$takeBlurScreenShot$0(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method public static blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 103
    :cond_3
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    const/high16 v0, 0x3f000000  # 0.5f

    .line 104
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_13

    .line 106
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-void

    .line 109
    :cond_13
    invoke-static {p3, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p1, p1

    .line 112
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 116
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)F
    .registers 2

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method private static synthetic lambda$takeBlurScreenShot$0(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 10

    .line 31
    :try_start_0
    iget-boolean v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 32
    :goto_13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_65

    .line 42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-eqz v0, :cond_61

    if-nez v4, :cond_37

    goto :goto_61

    .line 49
    :cond_37
    iget-object p2, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int v5, p2, v0

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_4e

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 53
    :cond_4e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, p2, v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, v1, :cond_5f

    .line 55
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5f
    move-object v1, p2

    goto :goto_65

    .line 45
    :cond_61
    :goto_61
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    return-void

    :cond_65
    :goto_65
    const/16 p2, 0x19

    .line 58
    invoke-static {v1, p2, p1, p0}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_72
    return-void
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 2

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static recycleImageBitmap(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 73
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 74
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_22

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_22

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    :goto_22
    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 10

    if-eqz p0, :cond_2c

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 133
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 135
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 136
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 137
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-object p1

    .line 141
    :cond_28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 4

    .line 29
    :try_start_0
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V
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
