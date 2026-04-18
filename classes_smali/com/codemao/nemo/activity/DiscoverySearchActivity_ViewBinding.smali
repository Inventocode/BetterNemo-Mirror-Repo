.class public Lcom/codemao/nemo/activity/DiscoverySearchActivity_ViewBinding;
.super Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;
.source "DiscoverySearchActivity_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V

    .line 27
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a06d8

    const-string v2, "field \'search_vp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    .line 28
    const-class v0, Lcom/codemao/nemo/view/CustomTabView;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/CustomTabView;

    iput-object p2, p1, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    return-void
.end method
