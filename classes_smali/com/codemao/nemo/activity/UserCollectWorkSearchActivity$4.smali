.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;
.super Ljava/lang/Object;
.source "UserCollectWorkSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 179
    :cond_19
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$502(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;I)I

    .line 180
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$400(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)V

    return-void
.end method
