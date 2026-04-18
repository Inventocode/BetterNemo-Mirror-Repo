.class Lcom/codemao/creativestore/presenter/CreateUtils$21$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$21;->onValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$21;)V
    .registers 2

    .line 2988
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 8

    .line 2991
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1600(Lcom/codemao/creativestore/presenter/CreateUtils;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_367

    .line 2994
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_367

    :cond_1c
    :try_start_1c
    const-string v2, "nemolog   onValue"

    .line 3000
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;

    invoke-virtual {v2, p1, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;

    .line 3002
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v2

    if-nez v2, :cond_53

    .line 3003
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/bean/BlockCount;

    invoke-direct {v3}, Lcom/codemao/creativestore/bean/BlockCount;-><init>()V

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/BcmVO;->setBlock_count(Lcom/codemao/creativestore/bean/BlockCount;)V

    .line 3005
    :cond_53
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/BlockCount;->setAll_block_count(I)V

    .line 3006
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count_visible_only()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/BlockCount;->setVisible_block_count(I)V

    .line 3007
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getVariable()Lcom/codemao/creativestore/bean/VariablesVO;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getVariable_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/VariablesVO;->setVariable_dict(Ljava/util/Map;)V

    .line 3008
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getBroadcast()Lcom/codemao/creativestore/bean/BroadcastsVO;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBroadcast_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/BroadcastsVO;->setBroadcast_dict(Ljava/util/Map;)V

    .line 3009
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getSplit_options()Lcom/codemao/creativestore/bean/SplitOptionsVO;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getSplit_options()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/SplitOptionsVO;->setOptions_dict(Ljava/util/Map;)V

    .line 3010
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getProcedures()Lcom/codemao/creativestore/bean/ProceduresVO;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getProcedure_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/ProceduresVO;->setProcedure_dict(Ljava/util/Map;)V

    .line 3011
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getToolbox()Lcom/codemao/creativestore/bean/ToolboxV0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/BcmVO;->setToolbox(Lcom/codemao/creativestore/bean/ToolboxV0;)V

    .line 3013
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getXml()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e0
    :goto_e0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3014
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v4, v4, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12f

    .line 3015
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v4, v4, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setBlocksXML(Ljava/lang/String;)V

    goto :goto_e0

    .line 3016
    :cond_12f
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v4, v4, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e0

    .line 3017
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v4, v4, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setBlocksXML(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 3020
    :cond_173
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v3, v3, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/codemao/creativestore/view/NewBcmView;->editMetaBeforeSave(Lcom/codemao/creativestore/bean/MetaVO;)V

    .line 3021
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    .line 3022
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v2

    const-string v3, "have_uploaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v2

    const-string v3, "block_cnt"

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v2

    const-string v3, "block_cnt_without_invisible"

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count_visible_only()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v2

    const-string v3, "entity_cnt"

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v4, v4, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v5, v5, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3028
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getVariable_dict()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_278

    .line 3030
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3031
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23a
    :goto_23a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_278

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3032
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/VariableVO;

    .line 3033
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "public"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_264

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "private"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23a

    .line 3034
    :cond_264
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v3, v3, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/codemao/creativestore/bean/CloudVariable;->create(Lcom/codemao/creativestore/bean/VariableVO;)Lcom/codemao/creativestore/bean/CloudVariable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23a

    .line 3038
    :cond_278
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setLandscape(Z)V

    .line 3039
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object p1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->isMicroBit()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setMicroBit(Z)V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a6} :catch_354

    .line 3046
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-boolean v2, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->val$saveCover:Z

    if-eqz v2, :cond_2be

    .line 3047
    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object p1

    new-instance v2, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$21$1;)V

    const-string v3, "SCREEN_SHOT_THEATRE"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    goto/16 :goto_353

    .line 3065
    :cond_2be
    :try_start_2be
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bcmc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".userimgc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1900(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".metac"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z
    :try_end_33d
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_33d} :catch_33e

    goto :goto_353

    :catch_33e
    move-exception p1

    .line 3070
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v2, "自动保存写入异常"

    invoke-virtual {v0, v2, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3071
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 3072
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_353
    return-void

    :catch_354
    move-exception p1

    .line 3041
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v2, "自动保存异常"

    invoke-virtual {v0, v2, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3042
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    return-void

    .line 2995
    :cond_367
    :goto_367
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    const-string/jumbo v2, "自动保存请求web数据异常"

    invoke-virtual {p1, v2, v0}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    return-void
.end method
