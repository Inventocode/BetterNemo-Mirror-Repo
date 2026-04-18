.class public Lcom/codemao/nemo/fragment/CourseInfoFragment;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "CourseInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/CourseDetailWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private needToScrollToTop:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->needToScrollToTop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/CourseInfoFragment;Lcom/codemao/nemo/bean/CourseListInfo;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->setListData(Lcom/codemao/nemo/bean/CourseListInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/nemo/fragment/CourseInfoFragment;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->needToScrollToTop:Z

    return p1
.end method

.method public static getInstance(I)Lcom/codemao/nemo/fragment/CourseInfoFragment;
    .registers 4

    .line 54
    new-instance v0, Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CourseInfoFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private hideErrorToast()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/CourseListInfo;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8e

    .line 170
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8e

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_16

    goto/16 :goto_8e

    .line 180
    :cond_16
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 183
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_29

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 188
    :cond_29
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 190
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_49

    .line 191
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_4e

    .line 193
    :cond_49
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 195
    :goto_4e
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 196
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseListInfo;->getTotal()I

    move-result p1

    if-ge v2, p1, :cond_63

    const/4 p1, 0x1

    goto :goto_64

    :cond_63
    const/4 p1, 0x0

    :goto_64
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_73

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 199
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    goto :goto_7d

    .line 201
    :cond_73
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    .line 204
    :goto_7d
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->needToScrollToTop:Z

    if-eqz p1, :cond_8d

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/CourseInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CourseInfoFragment$4;-><init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8d
    return-void

    .line 171
    :cond_8e
    :goto_8e
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMoreWithoutFooter(Z)V

    .line 173
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a3

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_a8

    .line 176
    :cond_a3
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_a8
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 50
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0144

    goto :goto_d

    :cond_a
    const v0, 0x7f0d0143

    :goto_d
    return v0
.end method

.method protected getData()V
    .registers 6

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 126
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->hideErrorToast()V

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->type:I

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/CourseInfoFragment$3;-><init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;)V

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getCourseListInfo(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method protected initDelegate()V
    .registers 4

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    goto :goto_2c

    .line 119
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/FolkCourseDetailDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/FolkCourseDetailDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    :goto_2c
    return-void
.end method

.method protected initRecyclerView()V
    .registers 6

    .line 63
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40c00000  # 6.0f

    invoke-static {v0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 67
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/codemao/nemo/fragment/CourseInfoFragment$1;-><init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 85
    new-instance v0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    .line 86
    iget v2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    const-string v2, "大家的知识库"

    .line 87
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->setNextPageName(Ljava/lang/String;)V

    goto :goto_3f

    :cond_37
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    const-string v2, "星能猫小课堂"

    .line 89
    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->setNextPageName(Ljava/lang/String;)V

    .line 93
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment;->bezierCircleFooter:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 98
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

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setFooterMaxDragRate(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/fragment/CourseInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CourseInfoFragment$2;-><init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method protected showError()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 232
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 236
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseInfoFragment;->showErrorToast()V

    return-void
.end method
