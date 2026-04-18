.class public Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;
.super Ljava/lang/Object;
.source "OperationCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;
    }
.end annotation


# instance fields
.field private mCacheSize:I

.field private redoList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/CreateOptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private revokeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/CreateOptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private undoAndRedoCallback:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->undoAndRedoCallback:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;

    return-void
.end method

.method private canRedo()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private canRevoke()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private checkCache()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 97
    :cond_8
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->init()V

    :cond_b
    return-void
.end method


# virtual methods
.method public addRedoOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;I)V
    .registers 5

    .line 48
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->checkCache()V

    .line 49
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->mCacheSize:I

    if-ne v0, v1, :cond_13

    .line 50
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->undoAndRedoCallback:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRevoke()Z

    move-result p2

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRedo()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;->undoAndRedoStatus(ZZ)V

    return-void
.end method

.method public addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;IZ)V

    return-void
.end method

.method public addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;IZ)V
    .registers 4

    .line 73
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->checkCache()V

    if-eqz p3, :cond_b

    .line 76
    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_10

    .line 79
    :cond_b
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 81
    :goto_10
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    iget p3, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->mCacheSize:I

    if-ne p2, p3, :cond_20

    .line 83
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_20
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->undoAndRedoCallback:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRevoke()Z

    move-result p2

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRedo()Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;->undoAndRedoStatus(ZZ)V

    return-void
.end method

.method public clearCache()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 128
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 129
    iput-object v1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    if-eqz v0, :cond_13

    .line 133
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 134
    iput-object v1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    .line 138
    :cond_13
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->undoAndRedoCallback:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRevoke()Z

    move-result v1

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->canRedo()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;->undoAndRedoStatus(ZZ)V

    return-void
.end method

.method public getRedoList()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/CreateOptionInfo;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    return-object v0
.end method

.method public getRevokeList()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/CreateOptionInfo;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    return-object v0
.end method

.method public init()V
    .registers 2

    const/16 v0, 0x1e

    .line 102
    invoke-virtual {p0, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->init(I)V

    return-void
.end method

.method public init(I)V
    .registers 3

    .line 118
    iput p1, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->mCacheSize:I

    .line 119
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->revokeList:Ljava/util/Vector;

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->redoList:Ljava/util/Vector;

    return-void
.end method
