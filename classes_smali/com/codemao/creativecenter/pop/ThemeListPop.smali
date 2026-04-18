.class public Lcom/codemao/creativecenter/pop/ThemeListPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "ThemeListPop.java"


# instance fields
.field private activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

.field private adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

.field private clError:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
            ">;"
        }
    .end annotation
.end field

.field private isShowSkeleton:Z

.field private ivClose:Landroid/widget/ImageView;

.field private mListSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

.field private onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeDetailPop:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

.field private tvRetry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/base/BaseCreativeActivity;Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/ThemeListPop;Landroid/view/View;II)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/pop/ThemeListPop;->showGuide(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/pop/ThemeDetailPop;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->themeDetailPop:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->showError()V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/creativecenter/pop/ThemeListPop;Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/pop/ThemeDetailPop;
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->themeDetailPop:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/base/BaseCreativeActivity;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/ThemeListPop;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->isShowSkeleton:Z

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/creativecenter/pop/ThemeListPop;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->isShowSkeleton:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->hideError()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->getThemList()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->updateSort()V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/pop/ThemeListPop;)Lcom/ethanhua/skeleton/SkeletonScreen;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->mListSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    return-object p0
.end method

.method private getThemList()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 176
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->showError()V

    return-void

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->mListSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 181
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/ethanhua/skeleton/Skeleton;->bind(Landroidx/recyclerview/widget/RecyclerView;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    .line 182
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->adapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->shimmer(Z)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    sget v2, Lcom/codemao/creativecenter/R$color;->creative_shimmer_color:I

    .line 184
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->color(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->angle(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    const/16 v2, 0xbb8

    .line 186
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->duration(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 187
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->count(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v2

    if-eqz v2, :cond_42

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_skeleton_item_theme_list_pad:I

    goto :goto_44

    :cond_42
    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_skeleton_item_theme_list:I

    :goto_44
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->load(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->show()Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->mListSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    goto :goto_52

    .line 191
    :cond_4f
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->show()V

    .line 193
    :goto_52
    iput-boolean v1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->isShowSkeleton:Z

    .line 195
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-interface {v0}, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;->getThemeMaterialList()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 196
    invoke-virtual {v1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeListPop$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeListPop$5;-><init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    .line 198
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private hideError()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showError()V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->mListSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    if-eqz v0, :cond_d

    .line 231
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->hide()V

    .line 233
    :cond_d
    iput-boolean v1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->isShowSkeleton:Z

    return-void
.end method

.method private showGuide(Landroid/view/View;II)V
    .registers 6

    .line 299
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->isThemeGuideShowed()Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 302
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showThemeGuide()V

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr p2, v0

    .line 304
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    add-int/2addr v0, p3

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr v0, p3

    .line 307
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    const/4 v1, 0x0

    invoke-static {p3, p1, v0, p2, v1}, Lcom/codemao/creativecenter/utils/ThemePopUtils;->showPopForRemind(Landroid/app/Activity;Landroid/view/View;IIZ)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private updateSort()V
    .registers 6

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->loaclThemeIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_50

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 290
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 294
    :cond_50
    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->orderByListPostion(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 295
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 167
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_theme_list_pad:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_theme_list:I

    :goto_b
    return v0
.end method

.method protected onCreate()V
    .registers 5

    .line 82
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 84
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->ivClose:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_theme_error:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_theme_marterial_retry:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->tvRetry:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeListPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeListPop$1;-><init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    new-instance v3, Lcom/codemao/creativecenter/pop/ThemeListPop$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/pop/ThemeListPop$2;-><init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    .line 123
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_theme_list:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeListPop$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeListPop$3;-><init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 155
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->tvRetry:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeListPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeListPop$4;-><init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeListPop;->getThemList()V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 242
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 243
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->onDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_a

    .line 244
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 246
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onThemeDownloadProgressChange(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 253
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getProgress()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setProgress(I)V

    .line 254
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getProgress()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4c

    const/4 p1, 0x2

    .line 255
    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    :cond_4c
    return-void
.end method

.method public onThemeMaterialDownloadError(Lcom/codemao/creativecenter/event/ThemeMaterialDownloadErrorEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 274
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 275
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isDownloaing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 276
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    goto :goto_6

    .line 279
    :cond_36
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->themeDetailPop:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result p1

    if-nez p1, :cond_51

    .line 280
    :cond_40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_theme_download_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_51
    return-void
.end method

.method public onThemeMaterialDownloadStart(Lcom/codemao/creativecenter/event/ThemeMaterialDownloadStartEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 264
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    .line 265
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isDownloaing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    goto :goto_6

    :cond_36
    return-void
.end method
