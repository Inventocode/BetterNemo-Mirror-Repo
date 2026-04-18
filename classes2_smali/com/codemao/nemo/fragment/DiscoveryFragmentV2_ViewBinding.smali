.class public Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;
.super Ljava/lang/Object;
.source "DiscoveryFragmentV2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Landroid/view/View;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 34
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0992

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a0411

    const-string v1, "field \'searchIv\' and method \'goSearch\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'searchIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->searchIv:Landroid/widget/TextView;

    .line 38
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a040c

    const-string v1, "field \'scanIv\' and method \'onViewClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'scanIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->scanIv:Landroid/widget/ImageView;

    .line 47
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$2;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->root:Landroid/view/View;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0887

    const-string v2, "field \'messageCountTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCountTv:Landroid/widget/TextView;

    .line 55
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0623

    const-string v2, "field \'rlTop\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->rlTop:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a03da

    const-string v1, "method \'goMessage\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$3;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
