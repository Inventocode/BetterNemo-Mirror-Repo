.class public Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ThemeMaterialDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

.field final synthetic this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    .line 70
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->this$0:Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 79
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->setData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 81
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->getResources_url_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->getResources_url_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_53

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;->getResources_url_list()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->mBinding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->ivAnim:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_53
    return-void
.end method
