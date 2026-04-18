.class public Lcom/codemao/creativestore/bean/VariablesVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "VariablesVO.java"


# instance fields
.field private variable_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
.method public getVariable_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/VariablesVO;->variable_dict:Ljava/util/Map;

    return-object v0
.end method

.method public setVariable_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/VariablesVO;->variable_dict:Ljava/util/Map;

    return-void
.end method
