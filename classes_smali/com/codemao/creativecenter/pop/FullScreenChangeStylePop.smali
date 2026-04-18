.class public Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "FullScreenChangeStylePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private actor:Lcom/codemao/creativestore/bean/ActorVO;

.field private center_point:Lcom/codemao/creativestore/bean/CenterPoint;

.field private changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private isPad:Z

.field private iv_cover:Landroid/widget/ImageView;

.field loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

.field private oldActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/synergic/SynergicHelper;)V
    .registers 5

    .line 72
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->isPad:Z

    .line 73
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 74
    iput-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 76
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 78
    :try_start_15
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 79
    invoke-virtual {p3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_3f
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    return-object p0
.end method

.method private addMaterial(ZILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_86

    .line 289
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_86

    :cond_a
    if-eqz p1, :cond_7c

    .line 294
    invoke-direct {p0, p3, p2}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->update(Ljava/util/List;I)V

    .line 295
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->getCurrentIndex()I

    move-result p2

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 296
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p2

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p3}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->getCurrentIndex()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 298
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p2, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addToDeleteStyle(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 300
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_7c
    const/4 p1, 0x2

    if-ne p2, p1, :cond_83

    .line 304
    invoke-virtual {p0, p3}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->updateActorStyles(Ljava/util/List;)V

    goto :goto_86

    .line 306
    :cond_83
    invoke-virtual {p0, p3}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->updateBackgroundStyles(Ljava/util/List;)V

    :cond_86
    :goto_86
    return-void
.end method

.method private update(Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;I)V"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 193
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_26

    goto :goto_9a

    :cond_26
    const/4 v2, 0x0

    .line 215
    :goto_27
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 216
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-static {v3, v4, v5, v6}, Lcom/codemao/creativestore/bean/StyleVO;->createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v4

    .line 220
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCenterPoint()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 221
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7c

    .line 223
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto :goto_86

    .line 226
    :cond_7c
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 228
    :goto_86
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 194
    :cond_9a
    :goto_9a
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v2

    .line 195
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/codemao/creativestore/bean/MaterialActorBean;->qiniuUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->center_point:Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-static {v2, v3, v4, v5}, Lcom/codemao/creativestore/bean/StyleVO;->createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v3

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBasePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 199
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCenterPoint()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 201
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v4, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-direct {v4}, Lcom/codemao/creativestore/bean/ImgDictVO;-><init>()V

    .line 203
    invoke-virtual {v4, v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->setId(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v5}, Lcom/codemao/creativestore/presenter/CreateUtils;->getUserImgDictVO()Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v2, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-direct {v2, p2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 208
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 209
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getLocalImgPath(Lcom/codemao/creativestore/bean/MaterialActorBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 233
    :cond_12c
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->addLocalImgs(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->isPad:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_change_style_pad:I

    goto :goto_9

    :cond_7
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_change_style:I

    :goto_9
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 125
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->getCurrentIndex()I

    move-result p1

    if-ltz p1, :cond_6c

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_15

    goto :goto_6c

    .line 130
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 133
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1, v4}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 135
    :cond_33
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 137
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    .line 138
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v1, "背景造型页面"

    const-string/jumbo v2, "背景-确定"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_69

    .line 140
    :cond_5c
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v1, "角色造型页面"

    const-string/jumbo v2, "造型-确定"

    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    :goto_69
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_6c
    :goto_6c
    return-void
.end method

.method protected onCreate()V
    .registers 6

    .line 89
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 90
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_styles:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    .line 91
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->iv_cover:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/codemao/creativecenter/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->isPad:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_2f

    const/4 v3, 0x5

    goto :goto_30

    :cond_2f
    const/4 v3, 0x4

    :goto_30
    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/GridItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->isPad:Z

    if-eqz v3, :cond_43

    goto :goto_44

    :cond_43
    const/4 v4, 0x2

    :goto_44
    invoke-direct {v1, v2, v4}, Lcom/codemao/creativecenter/customview/GridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 95
    new-instance v0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0xc8

    .line 96
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 97
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 100
    new-instance v0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    .line 101
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->setDragAdapter(Lcom/codemao/creativecenter/callback/OnItemChangeListener;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->showDragAnimation(Z)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    .line 103
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->iv_cover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->setDragImageView(Landroid/widget/ImageView;)V

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$1;-><init>(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-nez v0, :cond_93

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->cacheCover()V

    .line 114
    :cond_93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 5

    .line 367
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 368
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;

    const v2, 0xe89d2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/event/CreateViewLevelVisibleEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->loadingDialog:Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    if-eqz v0, :cond_21

    .line 371
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_21
    return-void
.end method

.method public onGetImagePathResult(Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_70

    .line 261
    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getResultInfo()Lcn/codemao/android/sketch/model/ResultInfo;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_70

    .line 264
    :cond_d
    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->workUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->workUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_70

    .line 267
    :cond_24
    iget-object p1, p1, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    .line 268
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    return-void

    .line 270
    :cond_2e
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getResultInfo()Lcn/codemao/android/sketch/model/ResultInfo;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 273
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ResultInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ResultInfo;->getCenterPointX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ResultInfo;->getCenterPointY()F

    move-result v5

    neg-float v5, v5

    float-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCenterPoint(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 276
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/ResultInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nemo_users_db/"

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setPath(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;->getType()I

    move-result p1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->addMaterial(ZILjava/util/List;)V

    :cond_70
    :goto_70
    return-void
.end method

.method public replaceCurrentStyle(Lcn/codemao/android/sketch/model/ResultInfo;I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 176
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 177
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setCenterPoint(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 179
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ResultInfo;->getFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nemo_users_db/"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 185
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->addMaterial(ZILjava/util/List;)V

    return-void
.end method

.method public updateActorStyles(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->update(Ljava/util/List;I)V

    .line 148
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 150
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v0

    .line 152
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->setCurrentIndex(I)V

    .line 153
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$2;-><init>(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateBackgroundStyles(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->update(Ljava/util/List;I)V

    .line 241
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 242
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 244
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->changeStylesAdapter:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->setCurrentIndex(I)V

    .line 245
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V

    .line 246
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;->rv_styles:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop$3;-><init>(Lcom/codemao/creativecenter/pop/FullScreenChangeStylePop;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
