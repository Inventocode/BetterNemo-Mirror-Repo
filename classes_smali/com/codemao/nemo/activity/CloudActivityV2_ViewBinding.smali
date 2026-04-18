.class public Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding;
.super Ljava/lang/Object;
.source "CloudActivityV2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CloudActivityV2;Landroid/view/View;)V
    .registers 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0531

    const-string v2, "field \'midView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->midView:Landroid/widget/TextView;

    const v0, 0x7f0a0620

    const-string v1, "field \'right_view\' and method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'right_view\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->right_view:Landroid/widget/ImageView;

    .line 39
    new-instance v0, Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding;Lcom/codemao/nemo/activity/CloudActivityV2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->root:Landroid/view/View;

    .line 46
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a097c

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    const-class v0, Lcom/codemao/nemo/view/CustomTabView;

    const v1, 0x7f0a0760

    const-string v2, "field \'tabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CustomTabView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudActivityV2;->tabView:Lcom/codemao/nemo/view/CustomTabView;

    const v0, 0x7f0a048c

    const-string v1, "method \'onClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/CloudActivityV2_ViewBinding;Lcom/codemao/nemo/activity/CloudActivityV2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
