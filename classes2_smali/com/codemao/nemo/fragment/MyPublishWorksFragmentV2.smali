.class public Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "MyPublishWorksFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/UserPublishedWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private header:Landroid/view/View;

.field private isPad:Z

.field private mSpanCount:I

.field private needToScrollToTop:Z

.field private total:I


# direct methods
.method public static synthetic $r8$lambda$dGv-HnEWeb9ejdIs__W5TVJYbCI(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->lambda$initRecyclerView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kXCfSa1_Lce-dUDzX5aCw59FzL4(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->lambda$initDelegate$1(Landroid/widget/ImageView;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->needToScrollToTop:Z

    .line 40
    iput v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->mSpanCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->isPad:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Lcom/codemao/nemo/bean/UserPublisWorks;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->setListData(Lcom/codemao/nemo/bean/UserPublisWorks;)V

    return-void
.end method

.method static synthetic access$302(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->needToScrollToTop:Z

    return p1
.end method

.method private addHead()V
    .registers 5

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    if-nez v0, :cond_48

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0221

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    const v1, 0x7f0a085b

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "为保证作品可在其他设备查看，请<font color=\"#6F60DD\">绑定手机号！</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    const v1, 0x7f0a063f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$5;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    :cond_48
    return-void
.end method

.method private getHeadCount()I
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 352
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;
    .registers 1

    .line 44
    new-instance v0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$initDelegate$1(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 11

    .line 111
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 114
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "我的"

    const-string v5, ""

    move-wide v1, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initRecyclerView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 4

    .line 99
    new-instance v0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f070244

    goto :goto_1a

    :cond_17
    const v2, 0x7f07025b

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->setContentLayoutParams(I)V

    return-object v0
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserPublisWorks;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_31

    .line 215
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 216
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b

    .line 217
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getTotal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, v0, p1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_30

    .line 220
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_30
    return-void

    .line 224
    :cond_31
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    .line 225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/event/MineTabEvent;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getTotal()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e6

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_61

    goto/16 :goto_e6

    .line 236
    :cond_61
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v2}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 237
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 238
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_76

    .line 240
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 242
    :cond_76
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 244
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_9b

    .line 245
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getHeadCount()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_a0

    .line 247
    :cond_9b
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 249
    :goto_a0
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$6;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$6;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 259
    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/BaseResponseListData;->getTotal()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v2, p1, :cond_c5

    const/4 p1, 0x1

    goto :goto_c6

    :cond_c5
    const/4 p1, 0x0

    :goto_c6
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_d0

    .line 261
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_d5

    .line 263
    :cond_d0
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 265
    :goto_d5
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->needToScrollToTop:Z

    if-eqz p1, :cond_e5

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$7;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e5
    return-void

    .line 227
    :cond_e6
    :goto_e6
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_fb

    .line 230
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_100

    .line 232
    :cond_fb
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_100
    return-void
.end method

.method private updateBindStatus()V
    .registers 4

    .line 177
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    const v1, 0x7f0a063f

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->hasPhone()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    const v2, 0x7f0a085b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "为保证作品可在其他设备查看，请<font color=\"#6F60DD\">绑定手机号！</font>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->addHead()V

    goto :goto_52

    .line 189
    :cond_3f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->header:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_52
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 53
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->isPad:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->mSpanCount:I

    goto :goto_f

    :cond_c
    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->mSpanCount:I

    :goto_f
    const v0, 0x7f0d0162

    return v0
.end method

.method protected getData()V
    .registers 4

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v2, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getMyPublished(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method protected initDelegate()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/MyPublishWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/MyPublishWorkDelegate$MyPublishWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 4

    .line 64
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 65
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->mSpanCount:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 66
    new-instance v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 78
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setFootView(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;)V

    return-void
.end method

.method public onBackHeaderEV(Lcom/codemao/nemo/event/BackHeaderEV;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 336
    iget-object p1, p1, Lcom/codemao/nemo/event/BackHeaderEV;->mClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 337
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1a
    return-void
.end method

.method public onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 361
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->updateBindStatus()V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 280
    :goto_8
    iget-object v6, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_24

    .line 281
    iget-object v6, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    .line 282
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getId()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-nez v8, :cond_21

    move v5, v4

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_24
    const/4 v0, 0x5

    if-gez v5, :cond_33

    .line 287
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    if-ne p1, v0, :cond_32

    .line 288
    iput v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 289
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getData()V

    :cond_32
    return-void

    .line 293
    :cond_33
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;

    .line 294
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_dc

    const/4 v6, 0x3

    if-eq v4, v6, :cond_ca

    if-eq v4, v0, :cond_a6

    const/4 v0, 0x6

    const/4 v6, 0x1

    if-eq v4, v0, :cond_6b

    const/4 v0, 0x7

    if-eq v4, v0, :cond_50

    goto/16 :goto_ed

    .line 320
    :cond_50
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 321
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->getPraise_times()I

    move-result v0

    if-eqz p1, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setPraise_times(I)V

    .line 322
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getHeadCount()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_ed

    .line 304
    :cond_6b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    iget p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    .line 306
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 307
    iget p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    if-gtz p1, :cond_80

    .line 308
    iput v3, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    .line 310
    :cond_80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    iget v1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->total:I

    invoke-direct {v0, v6, v1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 311
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_ed

    .line 312
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-eqz p1, :cond_a0

    .line 313
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_ed

    .line 315
    :cond_a0
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_ed

    .line 325
    :cond_a6
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setFork_enable(Z)V

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getHeadCount()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ed

    .line 296
    :cond_ca
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setView_times(I)V

    .line 297
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getHeadCount()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ed

    .line 300
    :cond_dc
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCollecTime()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->setCollect_times(I)V

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getHeadCount()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_ed
    :goto_ed
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 2

    .line 127
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 129
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getData()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 121
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->updateBindStatus()V

    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method
