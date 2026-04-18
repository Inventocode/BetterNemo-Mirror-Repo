.class public Lcom/codemao/midi/sun/ModelPerformer;
.super Ljava/lang/Object;
.source "ModelPerformer.java"


# instance fields
.field private addDefaultConnections:Z

.field private connectionBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelConnectionBlock;",
            ">;"
        }
    .end annotation
.end field

.field private exclusiveClass:I

.field private keyFrom:I

.field private keyTo:I

.field private name:Ljava/lang/String;

.field private oscillators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private releaseTrigger:Z

.field private selfNonExclusive:Z

.field private velFrom:I

.field private velTo:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->oscillators:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->connectionBlocks:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyFrom:I

    const/16 v1, 0x7f

    .line 42
    iput v1, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyTo:I

    .line 43
    iput v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->velFrom:I

    .line 44
    iput v1, p0, Lcom/codemao/midi/sun/ModelPerformer;->velTo:I

    .line 45
    iput v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->exclusiveClass:I

    .line 46
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->releaseTrigger:Z

    .line 47
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->selfNonExclusive:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->addDefaultConnections:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnectionBlocks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelConnectionBlock;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->connectionBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getExclusiveClass()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->exclusiveClass:I

    return v0
.end method

.method public getKeyFrom()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyFrom:I

    return v0
.end method

.method public getKeyTo()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyTo:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOscillators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/ModelOscillator;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->oscillators:Ljava/util/List;

    return-object v0
.end method

.method public getVelFrom()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->velFrom:I

    return v0
.end method

.method public getVelTo()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->velTo:I

    return v0
.end method

.method public isDefaultConnectionsEnabled()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->addDefaultConnections:Z

    return v0
.end method

.method public isReleaseTriggered()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->releaseTrigger:Z

    return v0
.end method

.method public isSelfNonExclusive()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelPerformer;->selfNonExclusive:Z

    return v0
.end method

.method public setExclusiveClass(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->exclusiveClass:I

    return-void
.end method

.method public setKeyFrom(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyFrom:I

    return-void
.end method

.method public setKeyTo(I)V
    .registers 2

    .line 101
    iput p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->keyTo:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->name:Ljava/lang/String;

    return-void
.end method

.method public setVelFrom(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->velFrom:I

    return-void
.end method

.method public setVelTo(I)V
    .registers 2

    .line 117
    iput p1, p0, Lcom/codemao/midi/sun/ModelPerformer;->velTo:I

    return-void
.end method
