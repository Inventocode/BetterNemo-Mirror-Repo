.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserFollowersOrFansActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->follow(JI)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

.field final synthetic val$position:I

.field final synthetic val$userId:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;IJ)V
    .registers 5

    .line 363
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->val$position:I

    iput-wide p3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->val$userId:J

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const-string/jumbo p2, "关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 363
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 366
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->setFollowed(Z)V

    .line 367
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->val$position:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 368
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;->val$userId:J

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->creatFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
