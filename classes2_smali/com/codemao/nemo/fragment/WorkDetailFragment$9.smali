.class Lcom/codemao/nemo/fragment/WorkDetailFragment$9;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->follow(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 566
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 576
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 577
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "取消关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 583
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 566
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 569
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->creatCancelFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 570
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->setFollow(Z)V

    .line 571
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "您已经取消了对Ta的关注"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
