.class Lcom/codemao/nemo/fragment/CreateFragment$10;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->cancelPublish(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 1023
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1027
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1028
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    return-void

    .line 1031
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1032
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2300(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    move-result-object p1

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$10$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment$10$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$10;J)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->cancelPublishWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
