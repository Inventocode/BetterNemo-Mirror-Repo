.class public Lcom/codemao/creativestore/bean/GetRuntimeListMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "GetRuntimeListMsg.java"


# instance fields
.field private variable_dict:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getVariable_dict()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/codemao/creativestore/bean/GetRuntimeListMsg;->variable_dict:Ljava/util/List;

    return-object v0
.end method

.method public setVariable_dict(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/GetRuntimeListMsg;->variable_dict:Ljava/util/List;

    return-void
.end method
