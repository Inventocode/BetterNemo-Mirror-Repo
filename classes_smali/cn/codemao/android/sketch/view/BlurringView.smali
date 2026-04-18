.class public Lcn/codemao/android/sketch/view/BlurringView;
.super Landroid/view/View;
.source "BlurringView.java"


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroid/renderscript/Allocation;

.field private mBlurOutput:Landroid/renderscript/Allocation;

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurredView:Landroid/view/View;

.field private mBlurredViewHeight:I

.field private mBlurredViewWidth:I

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDownsampleFactor:I

.field private mDownsampleFactorChanged:Z

.field private mOverlayColor:I

.field private mRenderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    const-string v0, "#AAFFFFFF"

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/BlurringView;->initializeRenderScript(Landroid/content/Context;)V

    .line 52
    sget-object v1, Lcn/codemao/android/sketch/R$styleable;->BlurringView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcn/codemao/android/sketch/R$styleable;->BlurringView_blurRadius:I

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/view/BlurringView;->setBlurRadius(I)V

    .line 54
    sget p2, Lcn/codemao/android/sketch/R$styleable;->BlurringView_downsampleFactor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/view/BlurringView;->setDownsampleFactor(I)V

    .line 55
    sget p2, Lcn/codemao/android/sketch/R$styleable;->BlurringView_overlayColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/view/BlurringView;->setOverlayColor(I)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initializeRenderScript(Landroid/content/Context;)V
    .registers 3

    .line 108
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 109
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method


# virtual methods
.method protected blur()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 147
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 148
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 152
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 153
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    if-eqz v0, :cond_73

    .line 66
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/BlurringView;->prepare()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_31

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_37

    .line 70
    :cond_31
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 73
    :goto_37
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/BlurringView;->blur()V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 76
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactor:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    :cond_6e
    iget v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mOverlayColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_73
    return-void
.end method

.method protected prepare()Z
    .registers 6

    .line 113
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactorChanged:Z

    if-nez v2, :cond_1d

    iget v2, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredViewWidth:I

    if-ne v2, v0, :cond_1d

    iget v2, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredViewHeight:I

    if-eq v2, v1, :cond_87

    :cond_1d
    const/4 v2, 0x0

    .line 116
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactorChanged:Z

    .line 117
    iput v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredViewWidth:I

    .line 118
    iput v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredViewHeight:I

    .line 119
    iget v4, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactor:I

    div-int/2addr v0, v4

    .line 120
    div-int/2addr v1, v4

    .line 121
    rem-int/lit8 v4, v0, 0x4

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x4

    .line 122
    rem-int/lit8 v4, v1, 0x4

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x4

    .line 123
    iget-object v4, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v0, :cond_44

    iget-object v4, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_5a

    .line 124
    :cond_44
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4f

    return v2

    .line 129
    :cond_4f
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5a

    return v2

    .line 135
    :cond_5a
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 136
    iget v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactor:I

    int-to-float v2, v1

    const/high16 v4, 0x3f800000  # 1.0f

    div-float v2, v4, v2

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 137
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v0, v1, v2, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurInput:Landroid/renderscript/Allocation;

    .line 138
    iget-object v1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurOutput:Landroid/renderscript/Allocation;

    :cond_87
    return v3
.end method

.method public setBlurRadius(I)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method public setBlurredView(Landroid/view/View;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mBlurredView:Landroid/view/View;

    return-void
.end method

.method public setDownsampleFactor(I)V
    .registers 3

    if-lez p1, :cond_c

    .line 95
    iget v0, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactor:I

    if-eq v0, p1, :cond_b

    .line 96
    iput p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactor:I

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mDownsampleFactorChanged:Z

    :cond_b
    return-void

    .line 93
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcn/codemao/android/sketch/view/BlurringView;->mOverlayColor:I

    return-void
.end method
