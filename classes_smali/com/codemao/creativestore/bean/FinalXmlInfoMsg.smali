.class public Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "FinalXmlInfoMsg.java"


# instance fields
.field private block_count:I

.field private block_count_visible_only:I

.field private broadcast_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/BroadcastVO;",
            ">;"
        }
    .end annotation
.end field

.field private procedure_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ProcedureVO;",
            ">;"
        }
    .end annotation
.end field

.field private split_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SplitOptionVO;",
            ">;"
        }
    .end annotation
.end field

.field private toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

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

.field private xml:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
.method public getBlock_count()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->block_count:I

    return v0
.end method

.method public getBlock_count_visible_only()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->block_count_visible_only:I

    return v0
.end method

.method public getBroadcast_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/BroadcastVO;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->broadcast_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getProcedure_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ProcedureVO;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->procedure_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getSplit_options()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SplitOptionVO;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->split_options:Ljava/util/Map;

    return-object v0
.end method

.method public getToolbox()Lcom/codemao/creativestore/bean/ToolboxV0;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

    return-object v0
.end method

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

    .line 66
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->variable_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getXml()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->xml:Ljava/util/Map;

    return-object v0
.end method

.method public setBlock_count(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->block_count:I

    return-void
.end method

.method public setBlock_count_visible_only(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->block_count_visible_only:I

    return-void
.end method

.method public setBroadcast_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/BroadcastVO;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->broadcast_dict:Ljava/util/Map;

    return-void
.end method

.method public setProcedure_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ProcedureVO;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->procedure_dict:Ljava/util/Map;

    return-void
.end method

.method public setSplit_options(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SplitOptionVO;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->split_options:Ljava/util/Map;

    return-void
.end method

.method public setToolbox(Lcom/codemao/creativestore/bean/ToolboxV0;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->toolbox:Lcom/codemao/creativestore/bean/ToolboxV0;

    return-void
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

    .line 70
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->variable_dict:Ljava/util/Map;

    return-void
.end method

.method public setXml(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->xml:Ljava/util/Map;

    return-void
.end method
