.class public Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LatestWorkDetailListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    const-string v1, "method \'back\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/LatestWorkDetailListActivity_ViewBinding;Lcom/codemao/nemo/activity/LatestWorkDetailListActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
