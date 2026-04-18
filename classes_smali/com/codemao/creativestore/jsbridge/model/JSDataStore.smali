.class public Lcom/codemao/creativestore/jsbridge/model/JSDataStore;
.super Ljava/lang/Object;
.source "JSDataStore.java"


# instance fields
.field public actorNameList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public actors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private basePath:Ljava/lang/String;

.field public currentActor:Lcom/codemao/creativestore/bean/ActorVO;

.field public currentScene:Lcom/codemao/creativestore/bean/SceneVO;

.field private defaultBgName:Ljava/lang/String;

.field private hideEnable:Z

.field private isFirstInitActor:Z

.field private jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

.field private mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field private mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

.field private materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

.field public metaVO:Lcom/codemao/creativestore/bean/MetaVO;

.field private operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

.field public recordPath:Ljava/lang/String;

.field public scenes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation
.end field

.field public sounds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation
.end field

.field public toDeleteImgPath:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public toDeleteList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field public userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;


# direct methods
.method public static synthetic $r8$lambda$eYRehGWFTOd7D7rGEHp_bFfyUyc(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->lambda$addActors$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$y6ny4_NT6A5OyjT8N16dFtBwoaI(Ljava/lang/String;Ljava/io/File;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->lambda$addSounds$0(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/listener/JSStoreCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 107
    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recordPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->hideEnable:Z

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->isFirstInitActor:Z

    .line 128
    iput-object p4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    .line 129
    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    .line 130
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 131
    iput-object p6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->defaultBgName:Ljava/lang/String;

    goto :goto_2a

    .line 133
    :cond_1a
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object p2

    sget p4, Lcom/codemao/creativecenter/R$string;->creative_default_bg_name:I

    invoke-virtual {p2, p4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->defaultBgName:Ljava/lang/String;

    .line 135
    :goto_2a
    iget-boolean p2, p3, Lcom/codemao/creativestore/bean/TheateConfigInfo;->enable_hide:Z

    iput-boolean p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->hideEnable:Z

    .line 136
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    .line 137
    iput-object p5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;)Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    return-object p0
.end method

.method private checkSceneName()V
    .registers 5

    const/4 v0, 0x1

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 470
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->defaultBgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/SceneVO;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_28
    return-void
.end method

.method private copyStyle(Lcom/codemao/creativestore/bean/ActorVO;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 892
    :goto_6
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 893
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 894
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v3

    .line 895
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 897
    invoke-virtual {p1, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 899
    :cond_2e
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->softCopyStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/codemao/creativestore/bean/StyleVO;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_43
    return-object v0
.end method

.method private copyVariables(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/CopyVariableMsg;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativestore/bean/CopyVariableMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DUPLICATE_ACTOR_VARIABLES"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getActorBlocksXml(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/Map;)V

    return-void
.end method

.method private doRealDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 717
    :goto_4
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 718
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 720
    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doRealDeleteScene(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 704
    :goto_5
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 705
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 707
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 708
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 710
    :cond_55
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doRealDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 730
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 731
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v0, :cond_37

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 735
    :cond_37
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :cond_44
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getActorBlocksXml(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 877
    new-instance v0, Lcom/codemao/creativestore/bean/GetCopyActorBlockMsg;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/GetCopyActorBlockMsg;-><init>()V

    .line 878
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/GetCopyActorBlockMsg;->setOriginal_actor_id(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/GetCopyActorBlockMsg;->setNew_actor_id(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, p3}, Lcom/codemao/creativestore/bean/GetCopyActorBlockMsg;->setStyles_track(Ljava/util/Map;)V

    .line 881
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nemolog   Blocks"

    invoke-static {p2, p1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DUPLICATE_ACTOR_BLOCKS"

    invoke-virtual {p1, p3, p2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNextActorPosition(I)I
    .registers 4

    .line 1064
    iget-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->hideEnable:Z

    if-nez v0, :cond_5

    return p1

    .line 1067
    :cond_5
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1068
    :goto_d
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 1069
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v1

    if-nez v1, :cond_25

    move v0, p1

    goto :goto_28

    :cond_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_28
    :goto_28
    return v0
.end method

.method private synthetic lambda$addActors$1()V
    .registers 4

    .line 820
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    return-void
.end method

.method private static synthetic lambda$addSounds$0(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private updateToDeleteImg(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateToDeleteImg(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public addActors(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 786
    new-instance v0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;-><init>()V

    .line 787
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 788
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 789
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->getActorVOS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 790
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->getStyles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 791
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 792
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    const/4 v2, 0x0

    .line 793
    :goto_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_80

    .line 794
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 796
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_80
    const/4 v2, 0x0

    .line 799
    :goto_81
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a4

    .line 800
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 802
    :cond_a4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v2, v4, :cond_c3

    .line 803
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 805
    :cond_c3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c9
    if-ltz v2, :cond_eb

    .line 806
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_c9

    .line 808
    :cond_eb
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 809
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->setIndexes(Ljava/util/List;)V

    .line 810
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ADD_ACTORS"

    invoke-virtual {v1, v2, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_100
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_111

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/StyleVO;

    const/4 v1, 0x0

    .line 815
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setBase64(Ljava/lang/String;)V

    goto :goto_100

    :cond_111
    if-nez p4, :cond_147

    .line 818
    new-instance p2, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;

    iget-object p4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p2, p4, v0}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 820
    iget-object p4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;)V

    const/16 v1, 0x64

    invoke-virtual {p4, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postDelay(Ljava/lang/Runnable;I)V

    .line 821
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getActors()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 822
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getIndexs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 823
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance p3, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 p4, 0x5

    invoke-direct {p3, p4, p2}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 826
    :cond_147
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {p1}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateUserList()V

    return-void
.end method

.method public addLocalImgs(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/LocalImgInfoMsg;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 946
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7e

    .line 947
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->copy()Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    move-result-object v1

    .line 948
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 949
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 950
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_66

    .line 952
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getEntityType()I

    move-result v2

    if-nez v2, :cond_46

    .line 953
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getStyle_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/StyleVO;

    const-string v3, "res/drawable/lost_background.png"

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    goto :goto_66

    .line 954
    :cond_46
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getEntityType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_66

    .line 955
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getStyle_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/StyleVO;

    const-string v3, "res/drawable/lost_actor.png"

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 958
    :cond_66
    :goto_66
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->path:Ljava/lang/String;

    .line 959
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v3, "UPDATE_STYLE_CONTENT"

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_7a

    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_7a
    move-exception p1

    .line 963
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7e
    return-void
.end method

.method public addNewScene(I)V
    .registers 7

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->defaultBgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/SceneVO;-><init>()V

    .line 414
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setId(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/SceneVO;->setName(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->defaultBgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BcmVO;->isLandscape()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->getDefaultBgStyle(Ljava/lang/String;Z)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 420
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 421
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setStyles(Ljava/util/Vector;)V

    .line 424
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setActors(Ljava/util/Vector;)V

    const-string v3, ""

    .line 425
    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setBlocksXML(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/SceneVO;->setVisible(Z)V

    .line 427
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 432
    new-instance v2, Lcom/codemao/creativestore/bean/AddSceneInfo;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/AddSceneInfo;-><init>()V

    .line 433
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/AddSceneInfo;->getScenes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/AddSceneInfo;->getStyles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$1;-><init>(Lcom/codemao/creativestore/jsbridge/model/JSDataStore;ILcom/codemao/creativestore/bean/SceneVO;)V

    const-string p1, "ADD_SCENES"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public addScene(ILcom/codemao/creativestore/bean/SceneVO;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 457
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 460
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkSceneName()V

    .line 462
    new-instance v0, Lcom/codemao/creativestore/bean/AddSceneInfo;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/AddSceneInfo;-><init>()V

    .line 463
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/AddSceneInfo;->getScenes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/AddSceneInfo;->getIndexes()Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ADD_SCENES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public addSounds(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)I"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eqz p1, :cond_e3

    .line 301
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v2

    .line 302
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 306
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-gez v1, :cond_39

    .line 320
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :cond_39
    const-string v5, "mid"

    if-eqz v3, :cond_55

    .line 324
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 325
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->convertMidiSound()Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v3

    goto :goto_5d

    .line 327
    :cond_4c
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->convertRecordSound(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v3

    goto :goto_5d

    .line 330
    :cond_55
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->convertSound(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v3

    .line 332
    :goto_5d
    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->copyWithSame()Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v6

    .line 334
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recordPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/record/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".mid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_c4

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c4

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c4

    .line 338
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 339
    new-instance v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, v5, v7}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v2}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    .line 342
    :cond_c4
    invoke-static {v5}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->fileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/codemao/creativestore/bean/SoundVO;->setMidi(Ljava/lang/String;)V

    .line 344
    :cond_cb
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_e3
    if-ltz v1, :cond_f9

    .line 351
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    new-instance v2, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;

    invoke-direct {v2, v0}, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v2, "ADD_SOUNDS"

    invoke-virtual {v0, v2, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    return v1
.end method

.method public changeActorCurStyleCenter(Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;)V
    .registers 10

    .line 990
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->getActor_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 991
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    .line 992
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->getPosition()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 993
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->getPosition()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 995
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 996
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 997
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v5

    if-nez v5, :cond_70

    .line 999
    new-instance v5, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7, v6, v7}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    .line 1001
    :cond_70
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 1004
    :cond_74
    new-instance v3, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;

    .line 1005
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->getCenterPoint()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1007
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->getCenterPoint()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    .line 1008
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SET_STYLES_CENTER_POINT"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v3}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    return-void
.end method

.method public changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 974
    :goto_1
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 975
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p2, :cond_1e

    .line 976
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CenterPoint;

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 977
    :goto_1f
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz v1, :cond_3b

    if-nez v2, :cond_38

    .line 980
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>()V

    .line 979
    :cond_38
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3e
    return-void
.end method

.method public checkBcm(Z)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkBcm(ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    return-void
.end method

.method public checkBcm(ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    .registers 12

    const-string v0, ""

    .line 175
    :try_start_2
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/SceneVO;

    .line 181
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_4f
    if-ltz v6, :cond_79

    .line 182
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_76

    .line 183
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_76
    add-int/lit8 v6, v6, -0x1

    goto :goto_4f

    .line 186
    :cond_79
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 187
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    goto :goto_33

    .line 190
    :cond_96
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a2
    :goto_a2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 192
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ca

    .line 193
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 196
    :cond_ca
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 197
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_f0

    .line 199
    :cond_db
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    :goto_f0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a2

    .line 202
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 206
    :cond_ff
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_139

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_109
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_139

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 208
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ImgDictVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_109

    .line 212
    :cond_139
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_149
    :goto_149
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/StyleVO;

    .line 214
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_172

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_172

    .line 215
    invoke-virtual {v3, v0}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 217
    :cond_172
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 218
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    if-eqz v4, :cond_1a0

    .line 219
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    :cond_1a0
    const-string v4, "res/drawable/lost_actor.png"

    .line 220
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 222
    :cond_1a5
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_149

    .line 223
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    const-string v6, "res"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 224
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto/16 :goto_149

    .line 225
    :cond_1cb
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    const-string v6, "file"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 226
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto/16 :goto_149

    .line 230
    :cond_1df
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1ef
    :goto_1ef
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_245

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 232
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getScene_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_220

    .line 233
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getScene_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_220

    .line 234
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_220
    if-eqz p1, :cond_1ef

    .line 237
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 238
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ef

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 239
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0.9.4"

    invoke-static {v1, v3}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_1ef

    .line 240
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v3

    neg-double v3, v3

    .line 241
    invoke-virtual {v0, v3, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    goto :goto_1ef

    .line 244
    :cond_245
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_26a

    .line 245
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    .line 246
    invoke-direct {p0, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25e} :catch_25f

    goto :goto_24f

    :catch_25f
    move-exception p1

    .line 251
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p2

    const-string/jumbo p3, "校验bcm异常"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_26a
    return-void
.end method

.method public copyActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 13

    .line 837
    :try_start_0
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    .line 838
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setId(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0, v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->copyStyle(Lcom/codemao/creativestore/bean/ActorVO;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    .line 841
    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 842
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-static {v3, v4}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->buildNewName(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setName(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 843
    invoke-virtual {p1, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 844
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 845
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 846
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v5, v4, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 847
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v5, v4

    .line 848
    new-instance v6, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;

    invoke-direct {v6}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;-><init>()V

    .line 849
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->getActorVOS()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->getIndexes()Ljava/util/List;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 851
    :goto_55
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_83

    .line 852
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->getStyles()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 854
    :cond_83
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 856
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v7, "ADD_ACTORS"

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, p1, v0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->copyVariables(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/Map;)V

    .line 863
    new-instance p1, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p1, v1, v0}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 864
    invoke-virtual {p0, v0, v3, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    .line 865
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v1, v4}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->copyActor(I)V

    .line 866
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getIndexs()Ljava/util/List;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception p1

    .line 872
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e2
    return-void
.end method

.method public copySound(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;I)V
    .registers 8

    .line 385
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getExitSoundNameSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->getNewFileName(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/SoundVO;->copyWithNewId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/record/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 388
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 390
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->copyWithSame()Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 393
    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->fileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/codemao/creativestore/bean/SoundVO;->setMidi(Ljava/lang/String;)V

    .line 395
    :cond_7d
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {p2, p3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 397
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p2

    new-instance p3, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;

    invoke-direct {p3, p1}, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, p3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p3, "ADD_SOUNDS"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteActorInCache(Ljava/util/List;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;ZZ)V"
        }
    .end annotation

    if-eqz p1, :cond_112

    .line 1021
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto/16 :goto_112

    .line 1025
    :cond_a
    new-instance v0, Lcom/codemao/creativestore/bean/DeleteAcotorMsgInfo;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/DeleteAcotorMsgInfo;-><init>()V

    .line 1026
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1028
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_7c

    .line 1029
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/DeleteAcotorMsgInfo;->getActor_ids()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1034
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1036
    :cond_7c
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8a

    return-void

    .line 1038
    :cond_8a
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 1039
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "DELETE_ACTORS"

    invoke-virtual {v4, v6, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_bd

    .line 1042
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v0, v3}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->deleteActor(I)V

    goto :goto_c2

    .line 1044
    :cond_bd
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v0}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateUserList()V

    :goto_c2
    if-nez p2, :cond_112

    .line 1048
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-ne p2, v0, :cond_ce

    const/4 p2, 0x1

    goto :goto_cf

    :cond_ce
    const/4 p2, 0x0

    .line 1049
    :goto_cf
    invoke-direct {p0, v3}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getNextActorPosition(I)I

    move-result v0

    const/4 v3, 0x0

    if-eqz p3, :cond_d8

    move-object v4, v3

    goto :goto_e0

    .line 1050
    :cond_d8
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    :goto_e0
    if-nez p2, :cond_e3

    goto :goto_e4

    :cond_e3
    move-object v3, v4

    .line 1052
    :goto_e4
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 1053
    invoke-static {v3, v6, p1, v1}, Lcom/codemao/creativestore/jsbridge/transforms/OperationTransform;->buildDeleteActorsData(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/List;Ljava/util/List;)Lcom/codemao/creativestore/bean/CreateOptionInfo;

    move-result-object v1

    .line 1052
    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    if-eqz p2, :cond_112

    .line 1056
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 1057
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1, v5}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 1058
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    :cond_112
    :goto_112
    return-void
.end method

.method public deleteScene(IZ)V
    .registers 9

    if-nez p1, :cond_8

    .line 482
    :try_start_2
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {p1}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->showCannotDeleteSceneOne()V

    return-void

    .line 486
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    return-void

    .line 489
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    .line 490
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 492
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v2, "DELETE_SCENE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"scene_id\": \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_69

    .line 494
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_6a

    :cond_69
    move v0, p1

    .line 496
    :goto_6a
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_9f

    .line 498
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v2, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 v3, 0x3

    new-instance v4, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    .line 499
    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {v4, p1, v0, v5}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;-><init>(IILcom/codemao/creativestore/bean/SceneVO;)V

    invoke-direct {v2, v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    .line 498
    invoke-virtual {p2, v2}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 501
    :cond_9f
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;

    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    .line 502
    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;-><init>(ILjava/lang/Object;)V

    .line 501
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 504
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 505
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkSceneName()V

    .line 506
    invoke-virtual {p0, p1, v0, v5, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d6} :catch_d6

    :catch_d6
    return-void
.end method

.method public doRealDelete()V
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->clearCache()V

    .line 671
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 672
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;

    .line 673
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_42

    const/4 v3, 0x1

    if-eq v2, v3, :cond_38

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2e

    goto :goto_f

    .line 681
    :cond_2e
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    goto :goto_f

    .line 678
    :cond_38
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_f

    .line 675
    :cond_42
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDeleteScene(Lcom/codemao/creativestore/bean/SceneVO;)V

    goto :goto_f

    .line 685
    :cond_4c
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 686
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->updateToDeleteImg()V

    return-void
.end method

.method public getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    return-object p1
.end method

.method public getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    return-object v0
.end method

.method public getExitRecordSoundName()Ljava/lang/String;
    .registers 5

    .line 1147
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    if-eqz v0, :cond_39

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1149
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_26

    const-string v3, ":"

    .line 1151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_26
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->isRecordVoice()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1154
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1157
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_39
    const-string v0, ""

    :goto_3b
    return-object v0
.end method

.method public getExitSoundName()Ljava/lang/String;
    .registers 5

    .line 1164
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    if-eqz v0, :cond_33

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_26

    const-string v3, ":"

    .line 1168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :cond_26
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1173
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_33
    const-string v0, ""

    :goto_35
    return-object v0
.end method

.method public getExitSoundName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1180
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    if-eqz v0, :cond_3d

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1183
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_30

    const-string v3, ":"

    .line 1185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    :cond_30
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1191
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_3d
    const-string p1, ""

    :goto_3f
    return-object p1
.end method

.method public getExitSoundNameSet()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    if-eqz v1, :cond_21

    .line 1126
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1127
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public initActorList(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 8

    .line 613
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    const/16 v1, -0x3e8

    const/16 v2, -0x63

    if-eqz p1, :cond_70

    .line 616
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 617
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1f
    if-ltz v3, :cond_70

    .line 618
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    if-eqz v4, :cond_6d

    .line 619
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v5

    if-eqz v5, :cond_6d

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 620
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v4, :cond_6d

    .line 622
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v5

    if-nez v5, :cond_61

    if-gez v2, :cond_61

    .line 623
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    .line 625
    :cond_61
    iget-boolean v5, v4, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz v5, :cond_68

    .line 626
    iput-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    move v1, v3

    .line 629
    :cond_68
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    :cond_70
    if-eqz p1, :cond_7b

    .line 635
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getBackGroudInfo()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_7b
    if-gez v2, :cond_84

    .line 638
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :cond_84
    if-gez v1, :cond_115

    .line 641
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 642
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v3

    if-eqz v3, :cond_115

    .line 643
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    .line 644
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getCurrent_actor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_cb

    .line 645
    iget-boolean p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->hideEnable:Z

    if-eqz p1, :cond_b8

    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-le p1, v2, :cond_b8

    .line 646
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    goto :goto_115

    .line 647
    :cond_b8
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_115

    .line 648
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    goto :goto_115

    :cond_cb
    if-eqz p1, :cond_f3

    .line 650
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getCurrent_actor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 651
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_115

    .line 652
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    goto :goto_115

    .line 654
    :cond_f3
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_115

    .line 655
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getCurrent_actor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez p1, :cond_115

    .line 657
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 662
    :cond_115
    :goto_115
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz p1, :cond_11c

    .line 663
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    :cond_11c
    return-void
.end method

.method public initSoundList()V
    .registers 4

    .line 264
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    .line 266
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 268
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 270
    new-instance v1, Lcom/codemao/creativestore/bean/SoundsVO;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/SoundsVO;-><init>()V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BcmVO;->setAudios(Lcom/codemao/creativestore/bean/SoundsVO;)V

    .line 272
    :cond_1b
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_31

    .line 273
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/SoundsVO;->setSounds(Ljava/util/Map;)V

    .line 274
    :cond_31
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    .line 277
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_59
    return-void
.end method

.method public recycle()V
    .registers 1

    return-void
.end method

.method public removeSound(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;)V
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    if-eqz v0, :cond_69

    if-nez p1, :cond_7

    goto :goto_69

    .line 371
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/record/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->isRecordVoice()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 376
    :cond_52
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/SoundVO;->delRecordVoice(Ljava/lang/String;)V

    .line 379
    :cond_55
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p2

    new-instance v0, Lcom/codemao/creativestore/bean/SoundRemovePropertyInfo;

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/bean/SoundRemovePropertyInfo;-><init>(Lcom/codemao/creativestore/bean/SoundVO;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 380
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v0, "REMOVE_SOUND"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    return-void
.end method

.method public saveFinal(Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getVariable()Lcom/codemao/creativestore/bean/VariablesVO;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 750
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getVariable_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/VariablesVO;->setVariable_dict(Ljava/util/Map;)V

    .line 752
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getBroadcast()Lcom/codemao/creativestore/bean/BroadcastsVO;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 754
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getBroadcast_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/BroadcastsVO;->setBroadcast_dict(Ljava/util/Map;)V

    .line 756
    :cond_21
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getSplit_options()Lcom/codemao/creativestore/bean/SplitOptionsVO;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 758
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getSplit_options()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SplitOptionsVO;->setOptions_dict(Ljava/util/Map;)V

    .line 760
    :cond_30
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getProcedures()Lcom/codemao/creativestore/bean/ProceduresVO;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 762
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getProcedure_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ProceduresVO;->setProcedure_dict(Ljava/util/Map;)V

    .line 764
    :cond_3f
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/FinalXmlInfoMsg;->getXml()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_c2

    .line 766
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 768
    :try_start_59
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 769
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/ActorVO;->setBlocksXML(Ljava/lang/String;)V

    goto :goto_4d

    .line 770
    :cond_8b
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 771
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/SceneVO;->setBlocksXML(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_bc} :catch_bd

    goto :goto_4d

    :catch_bd
    move-exception v0

    .line 774
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d

    :cond_c2
    return-void
.end method

.method public selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 1084
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    const-string v1, "{\"actor_id\": \"\"}"

    const-string v2, "\"}"

    const-string v3, "{\"actor_id\": \""

    const/4 v4, 0x1

    const-string v5, "SELECT_ACTOR"

    if-ne p1, v0, :cond_51

    .line 1086
    invoke-virtual {p1, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    if-eqz p3, :cond_43

    .line 1088
    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p2, :cond_28

    .line 1089
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {p1, v5, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 1091
    :cond_28
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->actorScrollTo(I)V

    return-void

    :cond_51
    if-eqz v0, :cond_57

    const/4 v6, 0x0

    .line 1098
    invoke-virtual {v0, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    :cond_57
    if-eqz p2, :cond_6c

    .line 1101
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 v6, 0x8

    new-instance v7, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;

    iget-object v8, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {v7, v8, p1}, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-direct {v0, v6, v7}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 1105
    :cond_6c
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 1106
    invoke-virtual {p1, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 1107
    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p2, :cond_81

    .line 1108
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_8e

    .line 1110
    :cond_81
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    :goto_8e
    if-eqz p3, :cond_b9

    .line 1113
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p1, :cond_9c

    .line 1114
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {p1, v5, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    .line 1116
    :cond_9c
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_b9
    :goto_b9
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->actorScrollTo(I)V

    return-void
.end method

.method public selectEntity(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    .line 515
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    .line 519
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v0, :cond_30

    .line 521
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 524
    :cond_30
    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v3, :cond_41

    .line 525
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    .line 526
    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v6, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    goto :goto_42

    :cond_41
    move-object v3, v5

    .line 528
    :goto_42
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    .line 529
    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/SceneVO;

    iput-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    .line 530
    invoke-virtual {v6, p2}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v6, :cond_88

    const/4 v5, 0x1

    .line 533
    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v5

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_bc

    .line 535
    :cond_88
    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 536
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v5

    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_bc

    .line 538
    :cond_ac
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    .line 539
    iget-object v6, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 541
    :goto_bc
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p0, v5}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->initActorList(Lcom/codemao/creativestore/bean/SceneVO;)V

    .line 542
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/codemao/creativestore/bean/ScenesVO;->setCurrent_scene(Ljava/lang/String;)V

    if-nez p3, :cond_f1

    .line 544
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"scene_id\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SELECT_SCENE"

    invoke-virtual {v5, v7, v6}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_f1
    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    xor-int/lit8 v6, p3, 0x1

    invoke-virtual {p0, v5, v4, v6}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    .line 548
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v4, v2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateScenList(I)V

    .line 549
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v4}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateUserList()V

    .line 550
    iget-object v4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {v4, v2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->sceneScrollTo(I)V

    if-eqz p3, :cond_11c

    if-eq v0, v2, :cond_11c

    .line 553
    iget-object p3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 v2, 0x13

    new-instance v4, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;

    invoke-direct {v4, v1, v3, p1, p2}, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v4}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    :cond_11c
    return-void
.end method

.method public selectScene(IIZZ)V
    .registers 11

    .line 567
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_118

    if-gez p2, :cond_c

    goto/16 :goto_118

    :cond_c
    if-gez p1, :cond_16

    .line 572
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 574
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 575
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 577
    :cond_1e
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    if-nez p4, :cond_45

    if-eq p1, p2, :cond_45

    .line 580
    iget-object p4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 v3, 0x4

    new-instance v4, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;

    iget-object v5, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, p2, v5}, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 583
    :cond_45
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SceneVO;

    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    .line 584
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object p1

    iget-object p4, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p4}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    const/4 p4, 0x1

    if-eqz p1, :cond_7d

    .line 586
    invoke-virtual {p1, p4}, Lcom/codemao/creativestore/bean/ActorVO;->setSelected(Z)V

    .line 587
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_b1

    .line 588
    :cond_7d
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 589
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    goto :goto_b1

    .line 591
    :cond_a1
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p1, v2}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 594
    :goto_b1
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->initActorList(Lcom/codemao/creativestore/bean/SceneVO;)V

    .line 595
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ScenesVO;->setCurrent_scene(Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"scene_id\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SELECT_SCENE"

    invoke-virtual {p1, v2, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-boolean p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->isFirstInitActor:Z

    if-nez p1, :cond_105

    .line 598
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p1, v1, p4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    .line 600
    :cond_105
    iput-boolean v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->isFirstInitActor:Z

    .line 602
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateScenList(I)V

    .line 603
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {p1}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->updateUserList()V

    if-eqz p3, :cond_118

    .line 605
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->jsStoreCallBack:Lcom/codemao/creativestore/listener/JSStoreCallBack;

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/listener/JSStoreCallBack;->sceneScrollTo(I)V

    :cond_118
    :goto_118
    return-void
.end method

.method public setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mBcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    return-void
.end method

.method public setMaterialsDownloadManager(Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    return-void
.end method

.method public softCopyStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 9

    .line 906
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->copy()Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v0

    .line 907
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_114

    .line 911
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ImgDictVO;

    const/4 p2, 0x0

    if-eqz p1, :cond_d4

    .line 914
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 915
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 916
    new-instance v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;-><init>()V

    .line 917
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->setId(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v1, p2}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->basePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_f0

    .line 923
    :cond_d4
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    if-eqz p1, :cond_f0

    .line 924
    sget-object p2, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getActorPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    .line 925
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getActorMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v1

    .line 926
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-virtual {p1, p2, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getLocalPathFromUrl(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 929
    :cond_f0
    :goto_f0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 930
    new-instance v1, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-direct {v1, p4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 931
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 932
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v1, p3}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v1, p2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 935
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addLocalImgs(Ljava/util/List;)V

    :cond_114
    return-object v0
.end method

.method public updateMidi(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 283
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->convertMidiSound()Lcom/codemao/creativestore/bean/SoundVO;

    move-result-object p1

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recordPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->fileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/SoundVO;->setMidi(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "ADD_SOUNDS"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateToDeleteImg()V
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->updateToDeleteImg(Ljava/util/Set;)V

    return-void
.end method
