.class public Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CourseDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CourseDetailActivity;Landroid/view/View;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseDetailActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    const v0, 0x7f0a048c

    const-string v1, "field \'left_view\' and method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'left_view\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseDetailActivity;->left_view:Landroid/widget/ImageView;

    .line 38
    new-instance v0, Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/CourseDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0620

    const-string v2, "field \'right_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseDetailActivity;->right_view:Landroid/widget/ImageView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0531

    const-string v2, "field \'mid_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseDetailActivity;->mid_view:Landroid/widget/TextView;

    const v0, 0x7f0a0101

    const-string v1, "field \'card_contribute\' and method \'onClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'card_contribute\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseDetailActivity;->card_contribute:Landroid/widget/ImageView;

    .line 49
    new-instance v0, Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/CourseDetailActivity_ViewBinding;Lcom/codemao/nemo/activity/CourseDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
