.class public Lcom/codemao/nemo/fragment/ThemeDetailFragment;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/SubjectWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public appbarOffset:I

.field private bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

.field card_contribute:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field cl_scroll:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field hav:Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isEmpty:Z

.field private isLargePad:Z

.field protected isLoadMore:Z

.field protected isLoading:Z

.field ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivExit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mParentHeight:I

.field private mSpanNum:I

.field private mTargetViewHeight:I

.field private subjectId:I

.field private subjectInfo:Lcom/codemao/nemo/bean/SubjectInfo;

.field private title:Ljava/lang/String;

.field private toScroll:I

.field toobarEmpty:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field toobarError:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private toolBarHeight:I

.field toolbar:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_theme_dec:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_theme_title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_work:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vWhtie:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isEmpty:Z

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoadMore:Z

    .line 113
    iput v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mSpanNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isEmpty:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toScroll:I

    return p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->subjectId:I

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toScroll:I

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/fragment/ThemeDetailFragment;Lcom/codemao/nemo/bean/SubjectWorks;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->setListData(Lcom/codemao/nemo/bean/SubjectWorks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)F
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->getToolBarBgAlpha(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->headerMoving(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mParentHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mParentHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->headerRelease()V

    return-void
.end method

.method static synthetic access$602(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mTargetViewHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/codemao/nemo/fragment/ThemeDetailFragment;Lcom/codemao/nemo/bean/SubjectInfo;)Lcom/codemao/nemo/bean/SubjectInfo;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->subjectInfo:Lcom/codemao/nemo/bean/SubjectInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLargePad:Z

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I
    .registers 1

    .line 57
    iget p0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mSpanNum:I

    return p0
.end method

.method public static getInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/nemo/fragment/ThemeDetailFragment;
    .registers 7

    .line 128
    new-instance v0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;-><init>()V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subjectId"

    .line 130
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "from"

    .line 131
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 132
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "workId"

    .line 133
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getThemeInfo()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->subjectId:I

    new-instance v2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$9;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getSubjectDetailInfo(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 4

    .line 550
    iget v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toScroll:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    neg-int v1, v0

    if-le p1, v1, :cond_11

    .line 552
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_13

    :cond_11
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_13
    return p1
.end method

.method private headerMoving(I)V
    .registers 5

    .line 407
    iget v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appbarOffset:I

    if-gez v0, :cond_5

    return-void

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    iget v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mTargetViewHeight:I

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->scale(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II)V

    return-void
.end method

.method private headerRelease()V
    .registers 2

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/activity/ThemeDetailActivity;

    .line 413
    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->changeLastFragment()V

    return-void
.end method

.method private scale(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II)V
    .registers 8

    int-to-float v0, p3

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float v2, v0, v1

    int-to-float p4, p4

    div-float/2addr v2, p4

    add-float/2addr v2, v1

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 419
    iget-object p4, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_title:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 420
    iget-object p4, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_dec:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 421
    iget p4, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mParentHeight:I

    add-int/2addr p4, p3

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setBottom(I)V

    .line 422
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v1

    iget v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mParentHeight:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 423
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 424
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 426
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p4, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mTargetViewHeight:I

    sub-int/2addr p1, p4

    int-to-float p1, p1

    const/high16 p4, 0x40000000  # 2.0f

    div-float/2addr p1, p4

    .line 427
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 428
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->hav:Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;->setOffset(I)V

    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/SubjectWorks;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    .line 486
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 487
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 488
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->showEmpty()V

    goto :goto_19

    .line 490
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_19
    return-void

    .line 494
    :cond_1a
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_93

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2c

    goto :goto_93

    .line 504
    :cond_2c
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isEmpty:Z

    .line 505
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 508
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_3e

    .line 510
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 512
    :cond_3e
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 513
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 514
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLoadMore:Z

    if-eqz v3, :cond_5e

    .line 515
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_63

    .line 517
    :cond_5e
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 519
    :goto_63
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 520
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectWorks;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_78

    const/4 p1, 0x1

    goto :goto_79

    :cond_78
    const/4 p1, 0x0

    :goto_79
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_88

    .line 522
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 523
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    goto :goto_92

    .line 525
    :cond_88
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 526
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    :goto_92
    return-void

    .line 495
    :cond_93
    :goto_93
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 496
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 497
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a6

    .line 498
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->showEmpty()V

    goto :goto_ab

    .line 500
    :cond_a6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_ab
    return-void
.end method

.method private showEmpty()V
    .registers 4

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 480
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 119
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLargePad:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    .line 121
    iput v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mSpanNum:I

    const v0, 0x7f0d016c

    return v0

    :cond_f
    const v0, 0x7f0d016b

    return v0
.end method

.method protected getData()V
    .registers 5

    .line 439
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$15;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "主题详情页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 6

    .line 433
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/ThemeDetailDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->subjectId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/ThemeDetailDelegate;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 5

    .line 324
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 326
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 327
    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$10;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 336
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000  # 6.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 363
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    const-string v1, "下一个主题"

    .line 364
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->setNextPageName(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 367
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 368
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 369
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcn/codemao/android/sketch/utils/UiUtil;->px2dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666  # 0.9f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setFooterHeight(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 370
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 371
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$12;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnMultiPurposeListener(Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setFooterMaxDragRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$13;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$13;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$14;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subjectId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->subjectId:I

    .line 142
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->title:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 560
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 562
    :goto_7
    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_23

    .line 563
    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    .line 564
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_20

    move v4, v3

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    if-gez v4, :cond_26

    return-void

    .line 571
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    if-nez v0, :cond_31

    return-void

    .line 575
    :cond_31
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6c

    const/4 v3, 0x5

    if-eq v1, v3, :cond_54

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3f

    goto :goto_78

    .line 587
    :cond_3f
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 588
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getN_likes()I

    move-result v1

    if-eqz p1, :cond_4a

    const/4 v2, 0x1

    :cond_4a
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setN_likes(I)V

    .line 589
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_78

    .line 581
    :cond_54
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_78

    .line 577
    :cond_6c
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setN_views(I)V

    .line 578
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_78
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    .line 150
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLargePad:Z

    if-eqz p1, :cond_1f

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 153
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result p2

    neg-int p2, p2

    int-to-double v0, p2

    const-wide v2, 0x3fc70a3d70a3d70aL  # 0.18

    mul-double v0, v0, v2

    double-to-int p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 156
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 157
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_title:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x42400000  # 48.0f

    .line 159
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolBarHeight:I

    .line 160
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->isLargePad:Z

    if-nez p1, :cond_56

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolBarHeight:I

    const/high16 v0, 0x40e00000  # 7.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 163
    :cond_56
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toobarEmpty:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toobarError:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->cl_scroll:Landroid/view/View;

    iget p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolBarHeight:I

    const/high16 v1, 0x42480000  # 50.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toScroll:I

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$1;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 202
    new-instance p2, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-direct {p2}, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;-><init>()V

    .line 203
    new-instance v1, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$2;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->setListener(Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;)V

    .line 236
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 237
    iget-object p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$3;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->card_contribute:Landroid/widget/ImageView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$4;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$4;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivExit:Landroid/widget/ImageView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$5;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$5;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$6;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$6;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f0a0365

    aput v3, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 276
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$7;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$7;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    new-array v1, v1, [I

    const v2, 0x7f0a0366

    aput v2, v1, v0

    invoke-virtual {p1, p2, v1}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 283
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance p2, Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment$8;-><init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->getThemeInfo()V

    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 7

    :goto_0
    if-gt p1, p2, :cond_27

    .line 599
    :try_start_2
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_24

    :catch_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 604
    :cond_27
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 542
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 543
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 544
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :cond_15
    return-void
.end method
