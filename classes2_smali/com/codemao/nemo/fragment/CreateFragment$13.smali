.class Lcom/codemao/nemo/fragment/CreateFragment$13;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/util/List<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 1154
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1167
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$position:I

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2800(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method public onNetError()V
    .registers 4

    .line 1172
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2800(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1154
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$13;->onSuc(Ljava/util/List;)V

    return-void
.end method

.method public onSuc(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 1158
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->illeagalLogout()V

    goto :goto_15

    .line 1160
    :cond_c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$13;->val$position:I

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2800(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :goto_15
    return-void
.end method
