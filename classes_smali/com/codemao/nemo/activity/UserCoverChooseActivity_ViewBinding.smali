.class public Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserCoverChooseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a075f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    const-string v1, "method \'onClick\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v0, Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity_ViewBinding;Lcom/codemao/nemo/activity/UserCoverChooseActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
