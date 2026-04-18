.class public Lcom/codemao/creativecenter/pop/SelectSoundPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "SelectSoundPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private callBack:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private indexId:Ljava/lang/String;

.field private final isPad:Z

.field private materialNames:Ljava/lang/String;

.field private rv_styles:Landroidx/recyclerview/widget/RecyclerView;

.field private selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->isPad:Z

    .line 48
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 49
    iput-object p3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->indexId:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->callBack:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    .line 51
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->initMaterialNames()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private initMaterialNames()V
    .registers 5

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_nemo_sound_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/pop/SelectSoundPop$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/pop/SelectSoundPop$1;-><init>(Lcom/codemao/creativecenter/pop/SelectSoundPop;)V

    .line 58
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v0, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_45

    const-string v3, ":"

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_45
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 66
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->materialNames:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSounds(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getNewRecordNameByNum(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->addSounds(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 129
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;-><init>(Lcom/codemao/creativecenter/pop/SelectSoundPop;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->isPad:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_select_sound_pad:I

    goto :goto_9

    :cond_7
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_select_sound:I

    :goto_9
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 102
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getCurrentIndex()I

    move-result p1

    if-ltz p1, :cond_24

    .line 104
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getSounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->callBack:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz v0, :cond_24

    if-eqz p1, :cond_1f

    .line 106
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_1f
    const-string p1, ""

    :goto_21
    invoke-interface {v0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 108
    :cond_24
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected onCreate()V
    .registers 6

    .line 72
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 73
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_styles:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    sget v0, Lcom/codemao/creativecenter/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->isPad:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_25

    const/4 v3, 0x5

    goto :goto_26

    :cond_25
    const/4 v3, 0x4

    :goto_26
    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate--isPad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->isPad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/GridItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->isPad:Z

    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v4, 0x2

    :goto_50
    invoke-direct {v1, v2, v4}, Lcom/codemao/creativecenter/customview/GridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 80
    new-instance v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->indexId:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->materialNames:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;-><init>(Landroid/content/Context;Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 83
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->rv_styles:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/SelectSoundPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/SelectSoundPop$2;-><init>(Lcom/codemao/creativecenter/pop/SelectSoundPop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 152
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 153
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->stopMusic()V

    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->stopMusic()V

    :cond_7
    return-void
.end method

.method public updateSelectDate(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getSounds()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getCurrentIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getSounds()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getCurrentIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop;->selectSoundAdapter:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    if-eqz p1, :cond_37

    .line 121
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_37
    return-void
.end method
