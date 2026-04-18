.class public Lcom/lxj/xpopup/impl/AttachListPopupView;
.super Lcom/lxj/xpopup/core/AttachPopupView;
.source "AttachListPopupView.java"


# instance fields
.field protected bindItemLayoutId:I

.field protected bindLayoutId:I

.field protected contentGravity:I

.field data:[Ljava/lang/String;

.field iconIds:[I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/impl/AttachListPopupView;)Lcom/lxj/xpopup/interfaces/OnSelectListener;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->selectListener:Lcom/lxj/xpopup/interfaces/OnSelectListener;

    return-object p0
.end method


# virtual methods
.method protected applyDarkTheme()V
    .registers 3

    .line 109
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyDarkTheme()V

    .line 110
    iget-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected applyLightTheme()V
    .registers 3

    .line 115
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->applyLightTheme()V

    .line 116
    iget-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/lxj/xpopup/widget/VerticalRecyclerView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/VerticalRecyclerView;->setupDivider(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected applyTheme()V
    .registers 4

    .line 96
    iget v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->bindLayoutId:I

    if-nez v0, :cond_31

    .line 97
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    if-eqz v0, :cond_e

    .line 98
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/AttachListPopupView;->applyDarkTheme()V

    goto :goto_11

    .line 100
    :cond_e
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/AttachListPopupView;->applyLightTheme()V

    .line 102
    :goto_11
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    if-eqz v2, :cond_20

    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    goto :goto_22

    :cond_20
    sget v2, Lcom/lxj/xpopup/R$color;->_xpopup_light_color:I

    :goto_22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->borderRadius:F

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->createDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->bindLayoutId:I

    if-nez v0, :cond_6

    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_attach_impl_list:I

    :cond_6
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 52
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 53
    sget v0, Lcom/lxj/xpopup/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iget v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->bindLayoutId:I

    if-eqz v1, :cond_1d

    .line 55
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    :cond_1d
    new-instance v0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->data:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->bindItemLayoutId:I

    if-nez v2, :cond_2b

    sget v2, Lcom/lxj/xpopup/R$layout;->_xpopup_adapter_text:I

    :cond_2b
    invoke-direct {v0, p0, v1, v2}, Lcom/lxj/xpopup/impl/AttachListPopupView$1;-><init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Ljava/util/List;I)V

    .line 82
    new-instance v1, Lcom/lxj/xpopup/impl/AttachListPopupView$2;

    invoke-direct {v1, p0, v0}, Lcom/lxj/xpopup/impl/AttachListPopupView$2;-><init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Lcom/lxj/easyadapter/EasyAdapter;)V

    invoke-virtual {v0, v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setOnItemClickListener(Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/AttachListPopupView;->applyTheme()V

    return-void
.end method
