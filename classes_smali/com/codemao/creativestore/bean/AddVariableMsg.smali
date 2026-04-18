.class public Lcom/codemao/creativestore/bean/AddVariableMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "AddVariableMsg.java"


# instance fields
.field private cloud_info:Lcom/codemao/creativestore/bean/CloudInfo;

.field private entity:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private global:Ljava/util/HashSet;
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
.method public getCloud_info()Lcom/codemao/creativestore/bean/CloudInfo;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->cloud_info:Lcom/codemao/creativestore/bean/CloudInfo;

    return-object v0
.end method

.method public getEntity()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->entity:Ljava/util/HashSet;

    return-object v0
.end method

.method public getGlobal()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->global:Ljava/util/HashSet;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCloud_info(Lcom/codemao/creativestore/bean/CloudInfo;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->cloud_info:Lcom/codemao/creativestore/bean/CloudInfo;

    return-void
.end method

.method public setEntity(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->entity:Ljava/util/HashSet;

    return-void
.end method

.method public setGlobal(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->global:Ljava/util/HashSet;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddVariableMsg;->type:Ljava/lang/String;

    return-void
.end method
