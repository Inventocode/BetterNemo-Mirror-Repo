.class public Lcom/codemao/nemo/activity/CmDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CmDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CmDetailActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0281

    const-string v2, "field \'fl_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CmDetailActivity;->fl_content:Landroid/widget/FrameLayout;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0531

    const-string v2, "field \'midView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CmDetailActivity;->midView:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a048c

    const-string v2, "field \'left_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CmDetailActivity;->left_view:Landroid/widget/ImageView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0620

    const-string v2, "field \'right_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/activity/CmDetailActivity;->right_view:Landroid/widget/ImageView;

    return-void
.end method
