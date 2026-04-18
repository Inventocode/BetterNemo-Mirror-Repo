.class public Lcom/codemao/creativecenter/pop/ThemeDetailPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "ThemeDetailPop.java"


# instance fields
.field private activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

.field private adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

.field private clBody:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

.field private clError:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private clTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;"
        }
    .end annotation
.end field

.field private downLoadThemeButton:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

.field private isShowSkeleton:Z

.field private ivClose:Landroid/widget/ImageView;

.field private mItemSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

.field private mViewSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeId:J

.field private themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

.field private tvDes:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvRetry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/base/BaseCreativeActivity;J)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 80
    iput-wide p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeId:J

    .line 81
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->isShowSkeleton:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Ljava/util/List;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->showError()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/creativecenter/pop/ThemeDetailPop;Lcom/codemao/creativestore/bean/ThemeMaterialListItem;)Lcom/codemao/creativestore/bean/ThemeMaterialListItem;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/ThemeDetailPop;Landroid/view/View;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->showGuide(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->hideError()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->getThemeDetail()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->downLoadThemeButton:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->updateUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->hideSkeleton()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    return-object p0
.end method

.method private checkDownloadStatus()V
    .registers 4

    .line 206
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2c

    .line 208
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    .line 210
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 211
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    goto :goto_76

    .line 212
    :cond_38
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isDownloaing(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    .line 213
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isError()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 214
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    goto :goto_76

    .line 216
    :cond_6a
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    goto :goto_76

    .line 219
    :cond_71
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    :goto_76
    return-void
.end method

.method private getThemeDetail()V
    .registers 6

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 252
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->showError()V

    return-void

    .line 256
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mViewSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    const/4 v1, 0x0

    const/16 v2, 0xbb8

    const/4 v3, 0x1

    if-nez v0, :cond_48

    .line 257
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/ethanhua/skeleton/Skeleton;->bind(Landroid/view/View;)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v3}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->shimmer(Z)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->duration(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    sget v4, Lcom/codemao/creativecenter/R$color;->creative_shimmer_color:I

    .line 260
    invoke-virtual {v0, v4}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->color(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->angle(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v4}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->color(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v4

    if-eqz v4, :cond_3b

    sget v4, Lcom/codemao/creativecenter/R$layout;->creative_skeleton_theme_title_pad:I

    goto :goto_3d

    :cond_3b
    sget v4, Lcom/codemao/creativecenter/R$layout;->creative_skeleton_theme_title:I

    :goto_3d
    invoke-virtual {v0, v4}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->load(I)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;->show()Lcom/ethanhua/skeleton/ViewSkeletonScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mViewSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    goto :goto_4b

    .line 266
    :cond_48
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->show()V

    .line 269
    :goto_4b
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mItemSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    if-nez v0, :cond_7a

    .line 270
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/ethanhua/skeleton/Skeleton;->bind(Landroidx/recyclerview/widget/RecyclerView;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    .line 271
    invoke-virtual {v0, v4}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->adapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v3}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->shimmer(Z)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    sget v4, Lcom/codemao/creativecenter/R$color;->creative_shimmer_color:I

    .line 273
    invoke-virtual {v0, v4}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->color(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->angle(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->duration(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_skeleton_item_theme:I

    .line 276
    invoke-virtual {v0, v1}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->load(I)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;->show()Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mItemSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    goto :goto_7d

    .line 279
    :cond_7a
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->show()V

    .line 281
    :goto_7d
    iput-boolean v3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->isShowSkeleton:Z

    .line 283
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;

    iget-wide v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeId:J

    invoke-interface {v0, v1, v2}, Lcom/codemao/creativecenter/service/ThemeMaterialApiService;->getThemeMaterialDetail(J)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    .line 284
    invoke-virtual {v1}, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$7;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    .line 286
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private hideError()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideSkeleton()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mViewSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    if-eqz v0, :cond_7

    .line 320
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->hide()V

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->mItemSkeleton:Lcom/ethanhua/skeleton/SkeletonScreen;

    if-eqz v0, :cond_e

    .line 323
    invoke-interface {v0}, Lcom/ethanhua/skeleton/SkeletonScreen;->hide()V

    :cond_e
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->isShowSkeleton:Z

    return-void
.end method

.method private showError()V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->hideSkeleton()V

    return-void
.end method

.method private showGuide(Landroid/view/View;)V
    .registers 6

    .line 198
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->isThemeGuideShowed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 201
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->showThemeGuide()V

    .line 202
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/codemao/creativecenter/utils/ThemePopUtils;->showPopForRemind(Landroid/app/Activity;Landroid/view/View;IIZ)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private updateUI()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$6;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 234
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->checkDownloadStatus()V

    .line 235
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvDes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getPackage_description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 243
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 87
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_theme_detail_pad:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_fullscreen_theme_detail:I

    :goto_b
    return v0
.end method

.method protected onCreate()V
    .registers 5

    .line 92
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->ivClose:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_body:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clBody:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    .line 96
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_theme_des:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvDes:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_theme_name:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvName:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_theme_error:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clError:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clTitle:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_theme_marterial_retry:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvRetry:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_theme_marterial_download:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->downLoadThemeButton:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$1;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->clBody:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$2;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->setOnCloseListener(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$OnCloseListener;)V

    .line 125
    new-instance v0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->activity:Lcom/codemao/creativecenter/base/BaseCreativeActivity;

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->datas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    .line 126
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_theme_list:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v3

    if-eqz v3, :cond_91

    const/4 v3, 0x6

    goto :goto_92

    :cond_91
    const/4 v3, 0x5

    :goto_92
    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->adapter:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 163
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->downLoadThemeButton:Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$4;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->tvRetry:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/pop/ThemeDetailPop$5;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop$5;-><init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->getThemeDetail()V

    return-void
.end method

.method public onThemeDownloadProgressChange(Lcom/codemao/creativecenter/utils/down/MaterialTask;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    if-nez v0, :cond_5

    return-void

    .line 343
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 344
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setProgress(I)V

    .line 345
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/MaterialTask;->getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->getProgress()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_45

    .line 346
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    :cond_45
    return-void
.end method

.method public onThemeMaterialDownloadError(Lcom/codemao/creativecenter/event/ThemeMaterialDownloadErrorEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 353
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    if-eqz p1, :cond_2b

    .line 354
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->getInstance()Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/utils/down/ThemeMaterialDownloadQueueManager;->isDownloaing(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 355
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->themeMaterialListItem:Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->setStatus(I)V

    .line 358
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_theme_download_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
