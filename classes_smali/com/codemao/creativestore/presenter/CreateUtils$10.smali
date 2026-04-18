.class Lcom/codemao/creativestore/presenter/CreateUtils$10;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->loadBcm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 2

    .line 1611
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1614
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v1

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->calculateWebViewSize(Landroid/content/Context;Z)Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    .line 1615
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v2

    invoke-interface {v2}, Lcom/codemao/creativestore/view/NewBcmView;->initUserInfo()Lcom/codemao/creativestore/bean/WebUserInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$900(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/WebUserInfo;)V

    .line 1616
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    if-nez v0, :cond_46

    .line 1618
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "the instance of the BcmV0 is null."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/view/NewBcmView;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void

    .line 1621
    :cond_46
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->copy()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    .line 1622
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    if-eqz v1, :cond_b5

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 1623
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v1

    .line 1624
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1625
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/SoundVO;

    if-eqz v3, :cond_6a

    .line 1626
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/record/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1628
    invoke-static {v4}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->fileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/SoundVO;->setMidi(Ljava/lang/String;)V

    goto :goto_6a

    .line 1632
    :cond_b5
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ScenesVO;->getCurrent_scene()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    if-eqz v1, :cond_157

    .line 1633
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_157

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 1634
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 1635
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_157

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 1636
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_107
    if-ltz v2, :cond_157

    .line 1637
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v3, :cond_139

    .line 1638
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v3

    if-nez v3, :cond_139

    .line 1639
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_157

    :cond_139
    add-int/lit8 v2, v2, -0x1

    goto :goto_107

    .line 1645
    :cond_13c
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1646
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    .line 1649
    :cond_157
    :goto_157
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string v2, " 开始加载bcm"

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;)V

    .line 1650
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$10;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$10$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils$10;)V

    const-string v4, "LOAD_BCM"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method
