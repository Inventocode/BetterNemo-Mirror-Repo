.class public Lcom/codemao/nemo/fragment/TrendsFragment_ViewBinding;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment_ViewBinding;
.source "TrendsFragment_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;Landroid/view/View;)V

    .line 23
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    const v1, 0x7f0a02e5

    const-string v2, "field \'commonHeader\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/TrendsFragment;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    .line 24
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04cd

    const-string v2, "field \'llNonet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/TrendsFragment;->llNonet:Landroid/widget/LinearLayout;

    .line 25
    const-class v0, Landroid/view/ViewStub;

    const v1, 0x7f0a099f

    const-string v2, "field \'vsFind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/TrendsFragment;->vsFind:Landroid/view/ViewStub;

    return-void
.end method
