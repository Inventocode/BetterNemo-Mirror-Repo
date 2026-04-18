.class public final Landroidx/renderscript/ScriptGroup;
.super Landroidx/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptGroup$Builder2;,
        Landroidx/renderscript/ScriptGroup$Binding;,
        Landroidx/renderscript/ScriptGroup$Builder;,
        Landroidx/renderscript/ScriptGroup$Input;,
        Landroidx/renderscript/ScriptGroup$Future;,
        Landroidx/renderscript/ScriptGroup$Closure;,
        Landroidx/renderscript/ScriptGroup$Node;,
        Landroidx/renderscript/ScriptGroup$ConnectLine;,
        Landroidx/renderscript/ScriptGroup$IO;
    }
.end annotation


# static fields
.field private static final MIN_API_VERSION:I = 0x17

.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroidx/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroidx/renderscript/ScriptGroup$Future;

.field private mUseIncSupp:Z


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .registers 4

    .line 400
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroidx/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroidx/renderscript/ScriptGroup$Future;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroidx/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 405
    invoke-direct {p0, v0, v1, p1}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    .line 407
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_24

    invoke-virtual {p1}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_24

    .line 408
    :cond_1c
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "ScriptGroup2 not supported in this API level"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_24
    :goto_24
    iput-object p2, p0, Landroidx/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Landroidx/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    .line 412
    iput-object p4, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 413
    iput-object p5, p0, Landroidx/renderscript/ScriptGroup;->mOutputs2:[Landroidx/renderscript/ScriptGroup$Future;

    .line 415
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p5, p4, [J

    :goto_32
    if-ge v0, p4, :cond_43

    .line 417
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/renderscript/ScriptGroup$Closure;

    invoke-virtual {v1, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    aput-wide v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 419
    :cond_43
    invoke-virtual {p1}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    .line 420
    invoke-virtual {p1, p2, p3, p5}, Landroidx/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide p1

    .line 421
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void
.end method

.method static synthetic access$002(Landroidx/renderscript/ScriptGroup;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 44
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Landroidx/renderscript/ScriptGroup;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    return p1
.end method


# virtual methods
.method public execute()V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 531
    iget-boolean v0, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    if-nez v0, :cond_f

    .line 532
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/renderscript/RenderScript;->nScriptGroupExecute(J)V

    goto/16 :goto_f2

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 535
    :goto_11
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 536
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    const/4 v3, 0x0

    .line 537
    :goto_22
    iget-object v4, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 538
    iget-object v4, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 539
    iget-object v5, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroidx/renderscript/Allocation;

    if-eqz v5, :cond_37

    goto :goto_69

    .line 544
    :cond_37
    iget-object v5, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v6, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroidx/renderscript/Type;

    sget-object v7, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    move-result-object v5

    .line 548
    iput-object v5, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroidx/renderscript/Allocation;

    add-int/lit8 v6, v3, 0x1

    .line 549
    :goto_46
    iget-object v7, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_69

    .line 550
    iget-object v7, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/renderscript/ScriptGroup$ConnectLine;

    iget-object v7, v7, Landroidx/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroidx/renderscript/Script$KernelID;

    iget-object v8, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroidx/renderscript/Script$KernelID;

    if-ne v7, v8, :cond_66

    .line 551
    iget-object v7, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/renderscript/ScriptGroup$ConnectLine;

    iput-object v5, v7, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroidx/renderscript/Allocation;

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 556
    :cond_6f
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    .line 557
    iget-object v3, v2, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_87
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/renderscript/Script$KernelID;

    .line 561
    iget-object v5, v2, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_9b
    :goto_9b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 562
    iget-object v9, v8, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    if-ne v9, v4, :cond_9b

    .line 563
    iget-object v7, v8, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroidx/renderscript/Allocation;

    goto :goto_9b

    .line 567
    :cond_ae
    iget-object v5, p0, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_b2
    if-ge v9, v8, :cond_bf

    aget-object v10, v5, v9

    .line 568
    iget-object v11, v10, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v11, v4, :cond_bc

    .line 569
    iget-object v7, v10, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    :cond_bc
    add-int/lit8 v9, v9, 0x1

    goto :goto_b2

    .line 573
    :cond_bf
    iget-object v5, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v6

    :cond_c6
    :goto_c6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 574
    iget-object v10, v9, Landroidx/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroidx/renderscript/Script$KernelID;

    if-ne v10, v4, :cond_c6

    .line 575
    iget-object v8, v9, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocation:Landroidx/renderscript/Allocation;

    goto :goto_c6

    .line 579
    :cond_d9
    iget-object v5, p0, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_dd
    if-ge v10, v9, :cond_ea

    aget-object v11, v5, v10

    .line 580
    iget-object v12, v11, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v12, v4, :cond_e7

    .line 581
    iget-object v8, v11, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    :cond_e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_dd

    .line 585
    :cond_ea
    iget-object v5, v4, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    iget v4, v4, Landroidx/renderscript/Script$KernelID;->mSlot:I

    invoke-virtual {v5, v4, v7, v8, v6}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    goto :goto_87

    :cond_f2
    :goto_f2
    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    .line 432
    array-length v0, p1

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, " receives "

    const-string v4, "ScriptGroup"

    if-ge v0, v1, :cond_37

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " inputs, less than expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 438
    :cond_37
    array-length v0, p1

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_68

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " inputs, more than expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    .line 440
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    :goto_6a
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_ac

    .line 444
    aget-object v3, p1, v1

    .line 445
    instance-of v5, v3, Landroidx/renderscript/ScriptGroup$Future;

    if-nez v5, :cond_8b

    instance-of v5, v3, Landroidx/renderscript/ScriptGroup$Input;

    if-eqz v5, :cond_7d

    goto :goto_8b

    .line 450
    :cond_7d
    iget-object v5, p0, Landroidx/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/renderscript/ScriptGroup$Input;

    .line 451
    invoke-virtual {v5, v3}, Landroidx/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 446
    :cond_8b
    :goto_8b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": input "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is a future or unbound value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 454
    :cond_ac
    iget-object p1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    .line 456
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup;->mOutputs2:[Landroidx/renderscript/ScriptGroup$Future;

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 458
    array-length v2, p1

    const/4 v3, 0x0

    :goto_bc
    if-ge v0, v2, :cond_d6

    aget-object v4, p1, v0

    .line 459
    invoke-virtual {v4}, Landroidx/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 460
    instance-of v5, v4, Landroidx/renderscript/ScriptGroup$Input;

    if-eqz v5, :cond_ce

    .line 461
    check-cast v4, Landroidx/renderscript/ScriptGroup$Input;

    invoke-virtual {v4}, Landroidx/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v4

    :cond_ce
    add-int/lit8 v5, v3, 0x1

    .line 463
    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_bc

    :cond_d6
    return-object v1
.end method

.method public setInput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 481
    :goto_1
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 482
    aget-object v2, v1, v0

    iget-object v2, v2, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v2, p1, :cond_2a

    .line 483
    aget-object v0, v1, v0

    iput-object p2, v0, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    .line 484
    iget-boolean v0, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    if-nez v0, :cond_29

    .line 485
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object p1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, p2}, Landroidx/renderscript/RenderScript;->safeID(Landroidx/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    :cond_29
    return-void

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    :cond_2d
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Script not found"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutput(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Allocation;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 506
    :goto_1
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 507
    aget-object v2, v1, v0

    iget-object v2, v2, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    if-ne v2, p1, :cond_2a

    .line 508
    aget-object v0, v1, v0

    iput-object p2, v0, Landroidx/renderscript/ScriptGroup$IO;->mAllocation:Landroidx/renderscript/Allocation;

    .line 509
    iget-boolean v0, p0, Landroidx/renderscript/ScriptGroup;->mUseIncSupp:Z

    if-nez v0, :cond_29

    .line 510
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object p1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {p1, p2}, Landroidx/renderscript/RenderScript;->safeID(Landroidx/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroidx/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    :cond_29
    return-void

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    :cond_2d
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string p2, "Script not found"

    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
