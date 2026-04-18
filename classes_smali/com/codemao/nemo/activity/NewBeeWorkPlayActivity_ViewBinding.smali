.class public Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity_ViewBinding;
.super Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding;
.source "NewBeeWorkPlayActivity_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Landroid/view/View;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;Landroid/view/View;)V

    const v0, 0x7f0a0288

    const-string v1, "field \'vToCreate\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    return-void
.end method
