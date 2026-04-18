.class public Lcom/codemao/nemo/fragment/SearchRecommendFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchRecommendFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/SearchRecommendFragment;Landroid/view/View;)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a02fb

    const-string v1, "field \'icon_hot\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_hot:Landroid/view/View;

    const v0, 0x7f0a07f6

    const-string v1, "field \'tv_1\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tv_1:Landroid/view/View;

    .line 23
    const-class v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v1, 0x7f0a079f

    const-string v2, "field \'tfl_hot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_hot:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v0, 0x7f0a02fa

    const-string v1, "field \'icon_his\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_his:Landroid/view/View;

    const v0, 0x7f0a07e6

    const-string v1, "field \'tv2\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tv2:Landroid/view/View;

    const v0, 0x7f0a02f8

    const-string v1, "field \'icon_del\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->icon_del:Landroid/view/View;

    .line 27
    const-class v0, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    const v1, 0x7f0a079e

    const-string v2, "field \'tfl_his\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->tfl_his:Lcom/codemao/nemo/view/flowlayout/TagFlowLayout;

    return-void
.end method
