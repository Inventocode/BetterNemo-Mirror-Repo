.class public Lcom/lxj/xpopup/impl/CenterListPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "CenterListPopupView.java"


# instance fields
.field checkedPosition:I

.field data:[Ljava/lang/String;

.field iconIds:[I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;

.field title:Ljava/lang/CharSequence;

.field tv_title:Landroid/widget/TextView;


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/impl/CenterListPopupView;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindItemLayoutId:I

    return p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/impl/CenterListPopupView;)Lcom/lxj/xpopup/interfaces/OnSelectListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;

    return-object p0
.end method


# virtual methods
.method protected applyDarkTheme()V
    .registers 4

    .line 126
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyDarkTheme()V

    .line 127
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 128
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_list_dark_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected applyLightTheme()V
    .registers 4

    .line 134
    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyLightTheme()V

    .line 135
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 136
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-nez v0, :cond_6

    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_center_impl_list:I

    :cond_6
    return v0
.end method

.method protected getMaxWidth()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_6
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->maxWidth:I

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->getMaxWidth()I

    move-result v0

    :cond_e
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 55
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 56
    sget v0, Lcom/lxj/xpopup/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iget v1, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-eqz v1, :cond_1d

    .line 58
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    :cond_1d
    sget v0, Lcom/lxj/xpopup/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_4f

    .line 63
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 64
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->tv_title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 67
    :cond_48
    iget-object v0, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_4f
    :goto_4f
    new-instance v0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->data:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindItemLayoutId:I

    if-nez v2, :cond_5d

    sget v2, Lcom/lxj/xpopup/R$layout;->_xpopup_adapter_text_match:I

    :cond_5d
    invoke-direct {v0, p0, v1, v2}, Lcom/lxj/xpopup/impl/CenterListPopupView$1;-><init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Ljava/util/List;I)V

    .line 107
    new-instance v1, Lcom/lxj/xpopup/impl/CenterListPopupView$2;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/CenterListPopupView$2;-><init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Lcom/lxj/easyadapter/EasyAdapter;)V

    invoke-virtual {v0, v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setOnItemClickListener(Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/CenterPopupView;->applyTheme()V

    return-void
.end method
