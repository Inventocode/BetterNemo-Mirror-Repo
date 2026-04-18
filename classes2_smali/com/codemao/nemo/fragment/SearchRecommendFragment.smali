.class public Lcom/codemao/nemo/fragment/SearchRecommendFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "SearchRecommendFragment.java"


# instance fields
.field public hasHisData:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public hasHotData:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public historyAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/view/flowlayout/TagAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i20:I

.field public i5:I

.field icon_del:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field icon_his:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field icon_hot:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public searchHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public searchHot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tfl_his:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tfl_hot:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_1:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    .line 45
    new-instance v0, Landroidx/databinding/ObservableField;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    .line 46
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->getTagAdapter(Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getTagAdapter(Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/nemo/view/flowlayout/TagAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$6;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Ljava/util/List;)V

    return-object v0
.end method

.method private searchTag(Ljava/lang/String;)V
    .registers 4

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    if-eqz v1, :cond_d

    .line 147
    check-cast v0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    .line 148
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchTag(Ljava/lang/String;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    .line 155
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_34

    .line 158
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_34

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    .line 166
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->historyAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->adjustData(Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-static {p1}, Lcom/codemao/nemo/util/SprefUtil;->putSearchHistory(Ljava/util/List;)V

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->historyAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->notifyDataChanged()V

    return-void
.end method

.method public clearHistory(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "搜索页-主页-点击删除历史关键词"

    .line 177
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 179
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-static {p1}, Lcom/codemao/nemo/util/SprefUtil;->putSearchHistory(Ljava/util/List;)V

    .line 180
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->historyAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->notifyDataChanged()V

    return-void
.end method

.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0169

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 77
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$1;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 90
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$2;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 103
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getSearchHistory()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    if-nez p1, :cond_26

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    .line 106
    :cond_26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000  # 5.0f

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->i5:I

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41a00000  # 20.0f

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->i20:I

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHisData:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 110
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHistory:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->getTagAdapter(Ljava/util/List;)Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->historyAdapter:Lcom/codemao/nemo/view/flowlayout/TagAdapter;

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_his:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/codemao/nemo/view/flowlayout/TagAdapter;)V

    .line 113
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_his:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$3;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_hot:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$4;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/codemao/nemo/view/flowlayout/TagFlowLayout$OnTagClickListener;)V

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_del:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/fragment/SearchRecommendFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->requestHotTag()V

    return-void
.end method

.method public requestHotTag()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->searchHot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->hasHotData:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/BaseObservable;->notifyChange()V

    .line 192
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    new-instance v1, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/SearchRecommendFragment$5;-><init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->searchHotWord(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
