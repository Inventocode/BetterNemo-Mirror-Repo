.class public Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicYuvToRGB.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
    .registers 6

    .line 49
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x6

    .line 52
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v1

    .line 54
    new-instance p1, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-direct {p1, v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 55
    invoke-virtual {p1, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    return-object p1
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/Script;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .registers 3

    .line 66
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroidx/renderscript/Allocation;

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void
.end method
