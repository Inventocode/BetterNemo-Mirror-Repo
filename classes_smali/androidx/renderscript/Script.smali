.class public Landroidx/renderscript/Script;
.super Landroidx/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Script$LaunchOptions;,
        Landroidx/renderscript/Script$FieldBase;,
        Landroidx/renderscript/Script$Builder;,
        Landroidx/renderscript/Script$FieldID;,
        Landroidx/renderscript/Script$InvokeID;,
        Landroidx/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field private mUseIncSupp:Z


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 315
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 78
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 125
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 164
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    return-void
.end method


# virtual methods
.method public bindAllocation(Landroidx/renderscript/Allocation;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 219
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    if-eqz v1, :cond_1f

    .line 221
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v6

    iget-boolean v9, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    goto :goto_30

    .line 223
    :cond_1f
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v15, p2

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    :goto_30
    return-void
.end method

.method protected createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;
    .registers 12

    .line 174
    iget-object p2, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/renderscript/Script$FieldID;

    if-eqz p2, :cond_b

    return-object p2

    .line 179
    :cond_b
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {p2, v0, v1, p1, v2}, Landroidx/renderscript/RenderScript;->nScriptFieldIDCreate(JIZ)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long p2, v4, v0

    if-eqz p2, :cond_2d

    .line 184
    new-instance p2, Landroidx/renderscript/Script$FieldID;

    iget-object v6, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, p2

    move-object v7, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/renderscript/Script$FieldID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 185
    iget-object v0, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    .line 181
    :cond_2d
    new-instance p1, Landroidx/renderscript/RSDriverException;

    const-string p2, "Failed to create FieldID"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createInvokeID(I)Landroidx/renderscript/Script$InvokeID;
    .registers 11

    .line 130
    iget-object v0, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/renderscript/Script$InvokeID;

    if-eqz v0, :cond_b

    return-object v0

    .line 135
    :cond_b
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2b

    .line 140
    new-instance v0, Landroidx/renderscript/Script$InvokeID;

    iget-object v6, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v3, v0

    move-object v7, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/renderscript/Script$InvokeID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 141
    iget-object v1, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 137
    :cond_2b
    new-instance p1, Landroidx/renderscript/RSDriverException;

    const-string v0, "Failed to create KernelID"

    invoke-direct {p1, v0}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;
    .registers 13

    .line 91
    iget-object v0, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/renderscript/Script$KernelID;

    if-eqz v0, :cond_b

    return-object v0

    .line 96
    :cond_b
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptKernelIDCreate(JIIZ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_30

    .line 101
    new-instance v7, Landroidx/renderscript/Script$KernelID;

    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    move-object v0, v7

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/renderscript/Script$KernelID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;II)V

    .line 103
    iget-object v0, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v7

    .line 98
    :cond_30
    new-instance v0, Landroidx/renderscript/RSDriverException;

    const-string v1, "Failed to create KernelID"

    invoke-direct {v0, v1}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_13

    if-eqz v2, :cond_b

    goto :goto_13

    .line 247
    :cond_b
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_13
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1f

    .line 253
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_20

    :cond_1f
    move-wide v11, v3

    :goto_20
    if-eqz v2, :cond_28

    .line 256
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    :cond_28
    move-wide v13, v3

    const/4 v3, 0x0

    if-eqz p4, :cond_30

    .line 261
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    :cond_30
    move-object/from16 v23, v3

    .line 264
    iget-boolean v3, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v3, :cond_4e

    .line 265
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v19

    .line 266
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v21

    .line 267
    iget-object v15, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v15}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v16

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v18, p1

    move/from16 v24, v1

    invoke-virtual/range {v15 .. v24}, Landroidx/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    goto :goto_5f

    .line 269
    :cond_4e
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    move-object/from16 v15, v23

    move/from16 v16, v1

    invoke-virtual/range {v7 .. v16}, Landroidx/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    :goto_5f
    return-void
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_13

    if-eqz v2, :cond_b

    goto :goto_13

    .line 284
    :cond_b
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_13
    if-nez p5, :cond_19

    .line 289
    invoke-virtual/range {p0 .. p4}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    :cond_19
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_25

    .line 295
    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_26

    :cond_25
    move-wide v11, v3

    :goto_26
    if-eqz v2, :cond_2e

    .line 298
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    :cond_2e
    move-wide v13, v3

    const/4 v3, 0x0

    if-eqz p4, :cond_36

    .line 303
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    :cond_36
    move-object/from16 v23, v3

    .line 305
    iget-boolean v3, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v3, :cond_6c

    .line 306
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v19

    .line 307
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v21

    .line 308
    iget-object v15, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v15}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v16

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v24

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v25

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v26

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v27

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v28

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v29

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v18, p1

    move/from16 v30, v1

    invoke-virtual/range {v15 .. v30}, Landroidx/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    goto :goto_95

    .line 310
    :cond_6c
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v16

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v17

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v18

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v19

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v20

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v21

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    move-object/from16 v15, v23

    move/from16 v22, v1

    invoke-virtual/range {v7 .. v22}, Landroidx/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    :goto_95
    return-void
.end method

.method protected forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 337
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3}, Landroidx/renderscript/RenderScript;->validate()V

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 339
    array-length v4, v1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1c

    aget-object v6, v1, v5

    .line 340
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v7, v6}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 343
    :cond_1c
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v4, v2}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    if-nez v1, :cond_2e

    if-eqz v2, :cond_26

    goto :goto_2e

    .line 346
    :cond_26
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    :goto_2e
    const/4 v4, 0x0

    if-eqz v1, :cond_47

    .line 352
    array-length v5, v1

    new-array v5, v5, [J

    const/4 v6, 0x0

    .line 353
    :goto_35
    array-length v7, v1

    if-ge v6, v7, :cond_45

    .line 354
    aget-object v7, v1, v6

    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_45
    move-object v11, v5

    goto :goto_48

    :cond_47
    move-object v11, v4

    :goto_48
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_54

    .line 362
    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_55

    :cond_54
    move-wide v12, v5

    :goto_55
    if-eqz p4, :cond_5d

    .line 367
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v14, v1

    goto :goto_5e

    :cond_5d
    move-object v14, v4

    :goto_5e
    if-eqz p5, :cond_8c

    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 374
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    .line 375
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x2

    .line 376
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x3

    .line 377
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x4

    .line 378
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x5

    .line 379
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    :cond_8c
    move-object v15, v4

    .line 382
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v15}, Landroidx/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method getDummyAlloc(Landroidx/renderscript/Allocation;)J
    .registers 12

    if-eqz p1, :cond_32

    .line 47
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/Element;->getDummyElement(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    .line 49
    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v3, v1, v2}, Landroidx/renderscript/Type;->getDummyType(Landroidx/renderscript/RenderScript;J)J

    move-result-wide v7

    .line 50
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v9, v1, v0

    .line 51
    iget-object v4, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual/range {v4 .. v9}, Landroidx/renderscript/RenderScript;->nIncAllocationCreateTyped(JJI)J

    move-result-wide v0

    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/renderscript/Allocation;->setIncAllocID(J)V

    goto :goto_34

    :cond_32
    const-wide/16 v0, 0x0

    :goto_34
    return-wide v0
.end method

.method protected invoke(I)V
    .registers 6

    .line 195
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v3, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    return-void
.end method

.method protected invoke(ILandroidx/renderscript/FieldPacker;)V
    .registers 9

    if-eqz p2, :cond_13

    .line 206
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptInvokeV(JI[BZ)V

    goto :goto_1e

    .line 208
    :cond_13
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {p2, v0, v1, p1, v2}, Landroidx/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    :goto_1e
    return-void
.end method

.method protected isIncSupp()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    return v0
.end method

.method protected reduce(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .registers 16

    .line 391
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    if-eqz p2, :cond_78

    .line 392
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_78

    if-eqz p3, :cond_70

    .line 400
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v0, :cond_1c

    aget-object v4, p2, v3

    .line 401
    iget-object v5, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v5, v4}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 404
    :cond_1c
    array-length v0, p2

    new-array v7, v0, [J

    const/4 v0, 0x0

    .line 405
    :goto_20
    array-length v3, p2

    if-ge v0, v3, :cond_30

    .line 406
    aget-object v3, p2, v0

    iget-object v4, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 408
    :cond_30
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    const/4 p2, 0x0

    if-eqz p4, :cond_64

    const/4 p2, 0x6

    new-array p2, p2, [I

    .line 414
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result p3

    aput p3, p2, v2

    .line 415
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result p3

    aput p3, p2, v1

    const/4 p3, 0x2

    .line 416
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    const/4 p3, 0x3

    .line 417
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    const/4 p3, 0x4

    .line 418
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, p2, p3

    const/4 p3, 0x5

    .line 419
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result p4

    aput p4, p2, p3

    :cond_64
    move-object v10, p2

    .line 422
    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p1

    invoke-virtual/range {v3 .. v10}, Landroidx/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    return-void

    .line 397
    :cond_70
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "aout is required to be non-null."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_78
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "At least one input is required."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setIncSupp(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 6

    .line 228
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 230
    :try_start_5
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-boolean v3, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/renderscript/RenderScript;->nScriptSetTimeZone(J[BZ)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setVar(ID)V
    .registers 11

    .line 442
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nScriptSetVarD(JIDZ)V

    return-void
.end method

.method public setVar(IF)V
    .registers 9

    .line 432
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarF(JIFZ)V

    return-void
.end method

.method public setVar(II)V
    .registers 9

    .line 452
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    return-void
.end method

.method public setVar(IJ)V
    .registers 11

    .line 462
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nScriptSetVarJ(JIJZ)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/BaseObj;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 482
    iget-boolean v2, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_24

    .line 483
    move-object v2, v1

    check-cast v2, Landroidx/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    .line 484
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    if-nez v1, :cond_1b

    move-wide v11, v3

    goto :goto_1c

    :cond_1b
    move-wide v11, v5

    :goto_1c
    iget-boolean v13, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v13}, Landroidx/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    goto :goto_3e

    .line 486
    :cond_24
    iget-object v14, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v14}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v15

    if-nez v1, :cond_2d

    goto :goto_33

    :cond_2d
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    :goto_33
    move-wide/from16 v18, v3

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v17, p1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroidx/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    :goto_3e
    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;)V
    .registers 9

    .line 497
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarV(JI[BZ)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 509
    iget-boolean v2, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v2, :cond_22

    .line 510
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/Element;->getDummyElement(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    .line 511
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    iget-boolean v11, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v6, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroidx/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    goto :goto_3d

    .line 513
    :cond_22
    iget-object v12, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v0, v12}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v16

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v17

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v15, p1

    move-object/from16 v19, p4

    move/from16 v20, v1

    invoke-virtual/range {v12 .. v20}, Landroidx/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    :goto_3d
    return-void
.end method

.method public setVar(IZ)V
    .registers 9

    .line 472
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    return-void
.end method
