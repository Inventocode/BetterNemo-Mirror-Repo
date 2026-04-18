.class Lcom/codemao/nemo/fragment/UserDynamicFragment$8;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->getUserDynamic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserDynamics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 262
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$1002(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 263
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$802(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$1100(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_24

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_2b

    .line 268
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 270
    :goto_2b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$1002(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$802(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 277
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$1100(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    .line 278
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_2b

    .line 281
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 283
    :goto_2b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserDynamics;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$900(Lcom/codemao/nemo/fragment/UserDynamicFragment;Lcom/codemao/nemo/bean/UserDynamics;)V

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$1002(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$802(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 252
    check-cast p1, Lcom/codemao/nemo/bean/UserDynamics;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;->onSuc(Lcom/codemao/nemo/bean/UserDynamics;)V

    return-void
.end method
