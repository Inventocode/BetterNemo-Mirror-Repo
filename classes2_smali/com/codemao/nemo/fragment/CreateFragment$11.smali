.class Lcom/codemao/nemo/fragment/CreateFragment$11;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->showRenameDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 1100
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$11;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rename(Ljava/lang/String;I)V
    .registers 6

    if-gez p2, :cond_3

    return-void

    .line 1105
    :cond_3
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$11$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CreateFragment$11$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$11;)V

    .line 1116
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$11;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$11;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->rename(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1117
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$11;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2400(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/RenameDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1118
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$11;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3a
    return-void
.end method
