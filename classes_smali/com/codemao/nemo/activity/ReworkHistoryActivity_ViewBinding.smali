.class public Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ReworkHistoryActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;Landroid/view/View;)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/codemao/nemo/view/ReworkRecycleView;

    const v1, 0x7f0a06a8

    const-string v2, "field \'rvRework\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/ReworkRecycleView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->rvRework:Lcom/codemao/nemo/view/ReworkRecycleView;

    .line 41
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a0068

    const-string v2, "field \'barLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->barLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 42
    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0a013a

    const-string v2, "field \'clHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->clHistory:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0a031f

    const-string v1, "field \'viewOpen\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewOpen:Landroid/view/View;

    const v0, 0x7f0a031e

    const-string v1, "field \'viewClose\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->viewClose:Landroid/view/View;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0894

    const-string v2, "field \'tvFirstName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvFirstName:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08b5

    const-string v2, "field \'tvFirstTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvFirstTime:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08e7

    const-string v2, "field \'tvStar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvStar:Landroid/widget/TextView;

    const v0, 0x7f0a019f

    const-string v1, "field \'ivFirst\' and method \'onClickCover\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivFirst\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->ivFirst:Landroid/widget/ImageView;

    .line 51
    new-instance v0, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048e

    const-string v1, "method \'onClickOpen\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b4

    const-string v1, "method \'onClickDetail\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048d

    const-string v1, "method \'onClickClose\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v0, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity_ViewBinding;Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
