.class public Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;
.super Landroid/widget/RelativeLayout;
.source "CreateBlockAcotorPop.java"


# instance fields
.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private createActorAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private iv_blur:Landroid/widget/ImageView;

.field private localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private mContainer:Landroid/view/View;

.field private rvActor:Landroidx/recyclerview/widget/RecyclerView;

.field private rvScene:Landroidx/recyclerview/widget/RecyclerView;

.field private sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

.field private scenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/view/LocalBcmView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createActorAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->initActors(Lcom/codemao/creativestore/bean/SceneVO;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Landroid/widget/ImageView;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initActors(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_35

    .line 207
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 208
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 210
    :cond_35
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getBackGroudInfo()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createActorAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private recycleBitmap()V
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 290
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_26

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_26

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_26
    return-void
.end method


# virtual methods
.method public getActorAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createActorAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    return-object v0
.end method

.method public getSceneAdapter()Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    return-object v0
.end method

.method public hide()V
    .registers 4

    .line 240
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 241
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$7;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public init(ILcom/codemao/creativecenter/view/LocalBcmView;)V
    .registers 6

    .line 74
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 75
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_block_actor:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->mContainer:Landroid/view/View;

    .line 76
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_scene:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->mContainer:Landroid/view/View;

    sget v0, Lcom/codemao/creativecenter/R$id;->rv_actor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->mContainer:Landroid/view/View;

    sget v0, Lcom/codemao/creativecenter/R$id;->iv_block_actor_blur:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    .line 79
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->mContainer:Landroid/view/View;

    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$1;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvActor:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 111
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz p1, :cond_95

    .line 112
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41a00000  # 20.0f

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    :cond_95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->scenes:Ljava/util/List;

    return-void
.end method

.method public initData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 10

    .line 128
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 129
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->scenes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->scenes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v6, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->actors:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    new-instance v5, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;

    invoke-direct {v5, p0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/presenter/CreateUtils;)V

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/callback/OnItemClickListener;)V

    iput-object v6, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->createActorAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    .line 164
    new-instance v6, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->scenes:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    new-instance v5, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    invoke-direct {v5, p0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/presenter/CreateUtils;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/callback/OnItemClickListener;)V

    iput-object v6, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    .line 187
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentSceneIndex()I

    move-result v0

    if-gez v0, :cond_50

    const/4 v0, 0x0

    .line 191
    :cond_50
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->setCurrentPosition(I)V

    .line 192
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->sceneAdapter:Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 193
    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorsBlockCounts(Ljava/lang/String;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->setBlur(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    return-void
.end method

.method public setBlur(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 9

    .line 263
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-long v5, v0

    mul-long v3, v3, v5

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    cmp-long v0, v1, v3

    if-gez v0, :cond_22

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 268
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->measure(II)V

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 270
    invoke-virtual {p1}, Landroid/webkit/WebView;->buildDrawingCache()V

    .line 271
    invoke-virtual {p1}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 272
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_6b

    .line 275
    :cond_42
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->recycleBitmap()V

    .line 276
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_56

    .line 278
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_56
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_60

    return-void

    :cond_60
    const/16 p1, 0x19

    .line 285
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->iv_blur:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public show()V
    .registers 6

    .line 216
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$6;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 232
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 233
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 234
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->rvScene:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v4, 0x41c80000  # 25.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v3, 0x0

    .line 235
    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
