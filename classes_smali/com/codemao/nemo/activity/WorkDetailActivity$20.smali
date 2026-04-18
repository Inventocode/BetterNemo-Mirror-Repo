.class Lcom/codemao/nemo/activity/WorkDetailActivity$20;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/fragment/WorkCommentFragment$CommentFragmentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->setWorkDetailData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCommentCount(I)V
    .registers 5

    .line 740
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setComment_times(I)V

    .line 741
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatUpdateCommentTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 742
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "评论("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    if-eqz v0, :cond_50

    .line 744
    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1900(Lcom/codemao/nemo/activity/WorkDetailActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    :cond_50
    return-void
.end method

.method public updateFakerInput(Ljava/lang/String;)V
    .registers 4

    .line 750
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$20;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1200ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
