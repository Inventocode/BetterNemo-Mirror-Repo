.class public Lcom/lxj/xpopup/impl/BottomListPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "BottomListPopupView.java"


# instance fields
.field protected bindItemLayoutId:I

.field protected bindLayoutId:I

.field checkedPosition:I

.field data:[Ljava/lang/String;

.field iconIds:[I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;

.field title:Ljava/lang/CharSequence;

.field tv_cancel:Landroid/widget/TextView;

.field tv_title:Landroid/widget/TextView;

.field vv_divider:Landroid/view/View;


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/impl/BottomListPopupView;)Lcom/lxj/xpopup/interfaces/OnSelectListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;

    return-object p0
.end method


# virtual methods
.method protected applyDarkTheme()V
    .registers 5

    .line 183
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyDarkTheme()V

    .line 184
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 185
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_cancel:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    :cond_2a
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_list_dark_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->vv_divider:Landroid/view/View;

    if-eqz v0, :cond_4a

    const-string v1, "#1B1B1B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    :cond_4a
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->borderRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->createDrawable(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected applyLightTheme()V
    .registers 5

    .line 197
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyLightTheme()V

    .line 198
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    .line 199
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_cancel:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :cond_2a
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_list_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->vv_divider:Landroid/view/View;

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    :cond_4e
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_light_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->borderRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3, v3}, Lcom/lxj/xpopup/util/XPopupUtils;->createDrawable(IFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected applyTheme()V
    .registers 2

    .line 172
    iget v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->bindLayoutId:I

    if-nez v0, :cond_11

    .line 173
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    if-eqz v0, :cond_e

    .line 174
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/BottomListPopupView;->applyDarkTheme()V

    goto :goto_11

    .line 176
    :cond_e
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/BottomListPopupView;->applyLightTheme()V

    :cond_11
    :goto_11
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->bindLayoutId:I

    if-nez v0, :cond_6

    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_bottom_impl_list:I

    :cond_6
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 61
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 62
    sget v0, Lcom/lxj/xpopup/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iget v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->bindLayoutId:I

    if-eqz v1, :cond_1d

    .line 64
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    :cond_1d
    sget v0, Lcom/lxj/xpopup/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/lxj/xpopup/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_cancel:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/lxj/xpopup/R$id;->vv_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->vv_divider:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_cancel:Landroid/widget/TextView;

    if-eqz v0, :cond_45

    .line 70
    new-instance v1, Lcom/lxj/xpopup/impl/BottomListPopupView$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/BottomListPopupView$1;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_45
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_6f

    .line 79
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 80
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    sget v0, Lcom/lxj/xpopup/R$id;->xpopup_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 83
    :cond_68
    iget-object v0, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_6f
    :goto_6f
    new-instance v0, Lcom/lxj/xpopup/impl/BottomListPopupView$2;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->data:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->bindItemLayoutId:I

    if-nez v2, :cond_7d

    sget v2, Lcom/lxj/xpopup/R$layout;->_xpopup_adapter_text_match:I

    :cond_7d
    invoke-direct {v0, p0, v1, v2}, Lcom/lxj/xpopup/impl/BottomListPopupView$2;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Ljava/util/List;I)V

    .line 124
    new-instance v1, Lcom/lxj/xpopup/impl/BottomListPopupView$3;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/BottomListPopupView$3;-><init>(Lcom/lxj/xpopup/impl/BottomListPopupView;Lcom/lxj/easyadapter/EasyAdapter;)V

    invoke-virtual {v0, v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setOnItemClickListener(Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/lxj/xpopup/impl/BottomListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/BottomListPopupView;->applyTheme()V

    return-void
.end method
