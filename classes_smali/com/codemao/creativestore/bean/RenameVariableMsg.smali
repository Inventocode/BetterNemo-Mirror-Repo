.class public Lcom/codemao/creativestore/bean/RenameVariableMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "RenameVariableMsg.java"


# instance fields
.field private name:Ljava/lang/String;

.field private pool:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPool()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->pool:Ljava/util/HashSet;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->name:Ljava/lang/String;

    return-void
.end method

.method public setPool(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->pool:Ljava/util/HashSet;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/RenameVariableMsg;->type:Ljava/lang/String;

    return-void
.end method
