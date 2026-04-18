.class public Landroidx/renderscript/ScriptIntrinsicHistogram;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicHistogram.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mOut:Landroidx/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicHistogram;
    .registers 6

    .line 49
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 50
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 51
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 52
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_31

    .line 53
    :cond_29
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported element type."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_31
    :goto_31
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_3f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    const/16 v1, 0x9

    .line 59
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v1

    .line 61
    new-instance p1, Landroidx/renderscript/ScriptIntrinsicHistogram;

    invoke-direct {p1, v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicHistogram;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 62
    invoke-virtual {p1, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    return-object p1
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/ScriptIntrinsicHistogram;->forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 9

    .line 98
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v0

    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 99
    invoke-virtual {v1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v1

    if-lt v0, v1, :cond_7f

    .line 104
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 105
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 106
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 107
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_75

    .line 108
    :cond_6d
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Input type must be U8, U8_1, U8_2 or U8_4."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    :goto_75
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 101
    :cond_7f
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Input vector size must be >= output vector size."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_Dot(Landroidx/renderscript/Allocation;)V
    .registers 3

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/ScriptIntrinsicHistogram;->forEach_Dot(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach_Dot(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 9

    .line 199
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 202
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 203
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 204
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 205
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_6a

    .line 206
    :cond_62
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Input type must be U8, U8_1, U8_2 or U8_4."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 200
    :cond_74
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Output vector size must be one."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/Script;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_Separate()Landroidx/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setDotCoefficients(FFFF)V
    .registers 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3b

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_3b

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3b

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_3b

    add-float v0, p1, p2

    add-float/2addr v0, p3

    add-float/2addr v0, p4

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_33

    .line 135
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 136
    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 137
    invoke-virtual {v0, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 138
    invoke-virtual {v0, p3}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 139
    invoke-virtual {v0, p4}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void

    .line 132
    :cond_33
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Sum of coefficients must be 1.0 or less."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3b
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Coefficient may not be negative."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Landroidx/renderscript/Allocation;)V
    .registers 4

    .line 150
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 151
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 152
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 153
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 154
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 155
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->I32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 156
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->I32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 157
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->I32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-eq v0, v1, :cond_99

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 158
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->I32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    if-ne v0, v1, :cond_91

    goto :goto_99

    .line 160
    :cond_91
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Output type must be U32 or I32."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_99
    :goto_99
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_d0

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 163
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getY()I

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 164
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicHistogram;->mOut:Landroidx/renderscript/Allocation;

    .line 165
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getYuv()I

    move-result v0

    if-nez v0, :cond_d0

    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    return-void

    .line 167
    :cond_d0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Output must be 1D, 256 elements."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
