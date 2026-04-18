.class public Lcom/codemao/creativecenter/pop/MaterialDrawerPop;
.super Lcom/nemo/commonui/xpopup/core/DrawerPopupView;
.source "MaterialDrawerPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private datas:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private isbgaction:Z

.field private materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

.field onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private rv_material:Landroidx/recyclerview/widget/RecyclerView;

.field private tv_select:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/databinding/ObservableField;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/databinding/ObservableField<",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;>;Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;-><init>(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 55
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    .line 56
    iput-boolean p3, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->isbgaction:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Landroidx/databinding/ObservableField;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->isbgaction:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Landroid/widget/TextView;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->tv_select:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    return-object p0
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 62
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_layout_pop_selected_material_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_layout_pop_selected_material:I

    :goto_d
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->dismiss()V

    return-void
.end method

.method protected onCreate()V
    .registers 7

    .line 68
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 70
    sget v0, Lcom/codemao/creativecenter/R$id;->rv_material:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->rv_material:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_select:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->tv_select:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/codemao/creativecenter/R$id;->sure:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 76
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 78
    :goto_37
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->tv_select:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->isbgaction:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_51

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_background_s_chosen:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    :cond_51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_sprite_s_chosen:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->rv_material:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/customview/CreativeWrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->rv_material:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/creativecenter/customview/GridItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/customview/GridItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    iget-boolean v3, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->isbgaction:Z

    iget-object v4, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->rv_material:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;-><init>(Landroid/content/Context;Landroidx/databinding/ObservableField;ZLandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->materialActorAdapter:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    .line 85
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->rv_material:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 3

    .line 98
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->datas:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_c

    .line 100
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_c
    return-void
.end method
