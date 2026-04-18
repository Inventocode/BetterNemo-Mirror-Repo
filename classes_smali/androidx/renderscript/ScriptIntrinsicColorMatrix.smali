.class public Landroidx/renderscript/ScriptIntrinsicColorMatrix;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicColorMatrix.java"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mAdd:Landroidx/renderscript/Float4;

.field private mInput:Landroidx/renderscript/Allocation;

.field private final mMatrix:Landroidx/renderscript/Matrix4f;


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 31
    new-instance p1, Landroidx/renderscript/Matrix4f;

    invoke-direct {p1}, Landroidx/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 32
    new-instance p1, Landroidx/renderscript/Float4;

    invoke-direct {p1}, Landroidx/renderscript/Float4;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicColorMatrix;
    .registers 6

    .line 53
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 57
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v1

    .line 62
    new-instance p1, Landroidx/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {p1, v1, v2, p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 63
    invoke-virtual {p1, v0}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    return-object p1

    .line 54
    :cond_2b
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported element type."

    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setMatrix()V
    .registers 3

    .line 69
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 70
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix4f;)V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 12

    .line 225
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Unsupported element type."

    if-nez v0, :cond_89

    .line 226
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 227
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 228
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 229
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 230
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 231
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 232
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_89

    .line 234
    :cond_83
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_89
    :goto_89
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 238
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 239
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 240
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 241
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 242
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 243
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 244
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_10a

    goto :goto_110

    .line 246
    :cond_10a
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_110
    :goto_110
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 249
    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAdd(FFFF)V
    .registers 6

    .line 126
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iput p1, v0, Landroidx/renderscript/Float4;->x:F

    .line 127
    iput p2, v0, Landroidx/renderscript/Float4;->y:F

    .line 128
    iput p3, v0, Landroidx/renderscript/Float4;->z:F

    .line 129
    iput p4, v0, Landroidx/renderscript/Float4;->w:F

    .line 131
    new-instance p1, Landroidx/renderscript/FieldPacker;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 132
    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iget p2, p2, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 133
    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iget p2, p2, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 134
    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iget p2, p2, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 135
    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iget p2, p2, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    const/4 p2, 0x1

    .line 136
    invoke-virtual {p0, p2, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public setAdd(Landroidx/renderscript/Float4;)V
    .registers 4

    .line 103
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    iget v1, p1, Landroidx/renderscript/Float4;->x:F

    iput v1, v0, Landroidx/renderscript/Float4;->x:F

    .line 104
    iget v1, p1, Landroidx/renderscript/Float4;->y:F

    iput v1, v0, Landroidx/renderscript/Float4;->y:F

    .line 105
    iget v1, p1, Landroidx/renderscript/Float4;->z:F

    iput v1, v0, Landroidx/renderscript/Float4;->z:F

    .line 106
    iget v1, p1, Landroidx/renderscript/Float4;->w:F

    iput v1, v0, Landroidx/renderscript/Float4;->w:F

    .line 108
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 109
    iget v1, p1, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 110
    iget v1, p1, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 111
    iget v1, p1, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 112
    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    const/4 p1, 0x1

    .line 113
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public setColorMatrix(Landroidx/renderscript/Matrix3f;)V
    .registers 3

    .line 92
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix3f;)V

    .line 93
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setColorMatrix(Landroidx/renderscript/Matrix4f;)V
    .registers 3

    .line 81
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix4f;)V

    .line 82
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setGreyscale()V
    .registers 8

    .line 145
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 146
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v1, 0x0

    const v2, 0x3e991687  # 0.299f

    invoke-virtual {v0, v1, v1, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 147
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v3, 0x1

    const v4, 0x3f1645a2  # 0.587f

    invoke-virtual {v0, v3, v1, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 148
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v5, 0x2

    const v6, 0x3de978d5  # 0.114f

    invoke-virtual {v0, v5, v1, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 149
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 150
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v3, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 151
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v3, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 152
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v5, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 153
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v5, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 154
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v5, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 155
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setRGBtoYUV()V
    .registers 6

    .line 183
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 184
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v1, 0x0

    const v2, 0x3e991687  # 0.299f

    invoke-virtual {v0, v1, v1, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 185
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v2, 0x1

    const v3, 0x3f1645a2  # 0.587f

    invoke-virtual {v0, v2, v1, v3}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 186
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v3, 0x2

    const v4, 0x3de978d5  # 0.114f

    invoke-virtual {v0, v3, v1, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 187
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v4, -0x41e956c1  # -0.14713f

    invoke-virtual {v0, v1, v2, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 188
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v4, -0x416c1a8b  # -0.28886f

    invoke-virtual {v0, v2, v2, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 189
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v4, 0x3edf3b64  # 0.436f

    invoke-virtual {v0, v3, v2, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 190
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v4, 0x3f1d70a4  # 0.615f

    invoke-virtual {v0, v1, v3, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 191
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v1, -0x40fc299e

    invoke-virtual {v0, v2, v3, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 192
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v1, -0x42332df5  # -0.10001f

    invoke-virtual {v0, v3, v3, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 193
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setYUVtoRGB()V
    .registers 8

    .line 164
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 165
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 166
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 167
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const/4 v5, 0x2

    const v6, 0x3f91e5f3  # 1.13983f

    invoke-virtual {v0, v5, v1, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 168
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 169
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v6, -0x4135f06f

    invoke-virtual {v0, v3, v3, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 170
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v6, -0x40eb5dcc  # -0.5806f

    invoke-virtual {v0, v5, v3, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 171
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v5, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 172
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    const v1, 0x40020e17

    invoke-virtual {v0, v3, v5, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 173
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v5, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 174
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method
