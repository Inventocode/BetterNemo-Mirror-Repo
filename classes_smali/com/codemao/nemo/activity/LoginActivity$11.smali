.class Lcom/codemao/nemo/activity/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->fetchAgreeIds(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Ljava/util/List<",
        "Lcn/codemao/android/account/bean/ProtocolInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;I)V
    .registers 3

    .line 735
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->val$viewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 735
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$11;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 738
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_40

    .line 745
    :cond_9
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->setCurUserAgreeIds(Ljava/util/List;)V

    .line 747
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$502(Lcom/codemao/nemo/activity/LoginActivity;Ljava/util/List;)Ljava/util/List;

    .line 748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/ProtocolInfo;

    .line 749
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/LoginActivity;->access$500(Lcom/codemao/nemo/activity/LoginActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/ProtocolInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 751
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget v0, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->val$viewId:I

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$600(Lcom/codemao/nemo/activity/LoginActivity;I)V

    return-void

    .line 739
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->access$502(Lcom/codemao/nemo/activity/LoginActivity;Ljava/util/List;)Ljava/util/List;

    .line 740
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$11;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$500(Lcom/codemao/nemo/activity/LoginActivity;)Ljava/util/List;

    move-result-object p1

    const-string v0, "-1"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
