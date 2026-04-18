.class Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserCollectWorkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserCollectWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 230
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 231
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$202(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$900(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    .line 233
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$000(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2c

    .line 234
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_33

    .line 236
    :cond_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_33
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 243
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$202(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$900(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    .line 246
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$000(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2c

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_33

    .line 249
    :cond_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_33
    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$700(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Lcom/codemao/nemo/bean/UserCollectWorks;)V

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->access$202(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 218
    check-cast p1, Lcom/codemao/nemo/bean/UserCollectWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;->onSuccess(Lcom/codemao/nemo/bean/UserCollectWorks;)V

    return-void
.end method
