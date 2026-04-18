.class public Lcom/codemao/nemo/fragment/MineFragmentCopy_ViewBinding;
.super Ljava/lang/Object;
.source "MineFragmentCopy_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;Landroid/view/View;)V
    .registers 6

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    const v1, 0x7f0a099c

    const-string v2, "field \'vpContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    .line 28
    const-class v0, Lcom/codemao/nemo/view/CustomTabView;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CustomTabView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragmentCopy;->root:Landroid/view/View;

    .line 30
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0763

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0173

    const-string v1, "method \'onClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragmentCopy_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/MineFragmentCopy_ViewBinding$1;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy_ViewBinding;Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
