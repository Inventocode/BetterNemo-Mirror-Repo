.class Lcom/codemao/nemo/fragment/CreateFragment$10$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

.field final synthetic val$workId:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$10;J)V
    .registers 4

    .line 1032
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iput-wide p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->val$workId:J

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p2, "40101005"

    .line 1041
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    const-string p2, "40101001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_1f

    .line 1047
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "取消发布失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 1042
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v0, 0x1

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1043
    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1044
    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->val$workId:J

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2200(Lcom/codemao/nemo/fragment/CreateFragment;J)V

    .line 1045
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object p2, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {p2, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :goto_38
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 1053
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1032
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 1035
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->val$workId:J

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2200(Lcom/codemao/nemo/fragment/CreateFragment;J)V

    .line 1036
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$10$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$10;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$10;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "取消发布成功"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
