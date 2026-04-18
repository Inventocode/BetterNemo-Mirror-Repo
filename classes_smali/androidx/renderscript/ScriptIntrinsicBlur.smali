.class public Landroidx/renderscript/ScriptIntrinsicBlur;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlur.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 30
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicBlur;->mValues:[F

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlur;
    .registers 6

    .line 52
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 53
    :cond_15
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported element type."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    const/4 v1, 0x5

    .line 59
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v1

    .line 61
    new-instance p1, Landroidx/renderscript/ScriptIntrinsicBlur;

    invoke-direct {p1, v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicBlur;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 62
    invoke-virtual {p1, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    const/high16 p0, 0x40a00000  # 5.0f

    .line 63
    invoke-virtual {p1, p0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-object p1
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .registers 4

    .line 104
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    .line 105
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Output is a 1D Allocation"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/Script;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .registers 3

    .line 75
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_11

    .line 78
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicBlur;->mInput:Landroidx/renderscript/Allocation;

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void

    .line 76
    :cond_11
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Input set to a 1D Allocation"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRadius(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    const/high16 v0, 0x41c80000  # 25.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(IF)V

    return-void

    .line 91
    :cond_10
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Radius out of range (0 < r <= 25)."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
