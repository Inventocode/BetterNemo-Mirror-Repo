.class public Lcom/github/mmin18/widget/AndroidXBlurImpl;
.super Ljava/lang/Object;
.source "AndroidXBlurImpl.java"

# interfaces
.implements Lcom/github/mmin18/widget/BlurImpl;


# static fields
.field static DEBUG:Ljava/lang/Boolean;


# instance fields
.field private mBlurInput:Landroidx/renderscript/Allocation;

.field private mBlurOutput:Landroidx/renderscript/Allocation;

.field private mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

.field private mRenderScript:Landroidx/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .registers 4

    .line 73
    sget-object v0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    if-eqz p0, :cond_1b

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->DEBUG:Ljava/lang/Boolean;

    .line 76
    :cond_1b
    sget-object p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->DEBUG:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurInput:Landroidx/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 64
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurInput:Landroidx/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setInput(Landroidx/renderscript/Allocation;)V

    .line 65
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurOutput:Landroidx/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->forEach(Landroidx/renderscript/Allocation;)V

    .line 66
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurOutput:Landroidx/renderscript/Allocation;

    invoke-virtual {p1, p2}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    if-nez v0, :cond_22

    .line 20
    :try_start_4
    invoke-static {p1}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    .line 21
    invoke-static {v0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/renderscript/ScriptIntrinsicBlur;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;
    :try_end_14
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_22

    :catch_15
    move-exception p2

    .line 23
    invoke-static {p1}, Lcom/github/mmin18/widget/AndroidXBlurImpl;->isDebug(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 27
    invoke-virtual {p0}, Lcom/github/mmin18/widget/AndroidXBlurImpl;->release()V

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_21
    throw p2

    .line 32
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p1, p3}, Landroidx/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 34
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    sget-object p3, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 36
    iget-object p2, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurOutput:Landroidx/renderscript/Allocation;

    return v0
.end method

.method public release()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurInput:Landroidx/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 45
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurInput:Landroidx/renderscript/Allocation;

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurOutput:Landroidx/renderscript/Allocation;

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 49
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurOutput:Landroidx/renderscript/Allocation;

    .line 51
    :cond_13
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1c

    .line 52
    invoke-virtual {v0}, Landroidx/renderscript/BaseObj;->destroy()V

    .line 53
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mBlurScript:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 55
    :cond_1c
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    if-eqz v0, :cond_25

    .line 56
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->destroy()V

    .line 57
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidXBlurImpl;->mRenderScript:Landroidx/renderscript/RenderScript;

    :cond_25
    return-void
.end method
