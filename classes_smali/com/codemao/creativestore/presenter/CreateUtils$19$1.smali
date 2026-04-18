.class Lcom/codemao/creativestore/presenter/CreateUtils$19$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$19;->onValue(Ljava/lang/Object;)V
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
.field final synthetic this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$19;)V
    .registers 2

    .line 2847
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 6

    .line 2850
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemolog   onValue"

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;

    .line 2852
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->saveFinal(Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;)V

    .line 2854
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "have_uploaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/view/NewBcmView;->editMetaBeforeSave(Lcom/codemao/creativestore/bean/MetaVO;)V

    .line 2856
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v0

    if-nez v0, :cond_77

    .line 2857
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/BlockCount;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/BlockCount;-><init>()V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BcmVO;->setBlock_count(Lcom/codemao/creativestore/bean/BlockCount;)V

    .line 2859
    :cond_77
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BlockCount;->setAll_block_count(I)V

    .line 2860
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getBlock_count()Lcom/codemao/creativestore/bean/BlockCount;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count_visible_only()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BlockCount;->setVisible_block_count(I)V

    .line 2861
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getToolbox()Lcom/codemao/creativestore/bean/ToolboxV0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BcmVO;->setToolbox(Lcom/codemao/creativestore/bean/ToolboxV0;)V

    .line 2863
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    .line 2864
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "block_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBlock_count_visible_only()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "block_cnt_without_invisible"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "entity_cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2868
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->isLandscape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setLandscape(Z)V

    .line 2869
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->isMicroBit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setMicroBit(Z)V

    .line 2871
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getVariable_dict()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1e2

    .line 2873
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2874
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a2
    :goto_1a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2875
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/VariableVO;

    .line 2876
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "public"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1cc

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "private"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 2877
    :cond_1cc
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/codemao/creativestore/bean/CloudVariable;->create(Lcom/codemao/creativestore/bean/VariableVO;)Lcom/codemao/creativestore/bean/CloudVariable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a2

    .line 2883
    :cond_1e2
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-boolean v0, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveCover:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1fd

    .line 2884
    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$19$1;)V

    const-string v2, "SCREEN_SHOT_THEATRE"

    const-string v3, ""

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    goto/16 :goto_30a

    .line 2910
    :cond_1fd
    :try_start_1fd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bcm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".userimg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".meta"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".bcmc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".userimgc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".metac"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2916
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2917
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1602(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2918
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1700(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/listener/SaveBcmCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_2ec} :catch_2ed

    goto :goto_30a

    :catch_2ed
    move-exception p1

    .line 2920
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/ExceptionUtils;->exceptionToString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/codemao/creativestore/listener/SaveBcmCallBack;->onFail(Ljava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2922
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v0, v0, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1602(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2923
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30a
    return-void
.end method
