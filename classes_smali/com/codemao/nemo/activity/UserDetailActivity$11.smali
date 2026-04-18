.class Lcom/codemao/nemo/activity/UserDetailActivity$11;
.super Landroid/text/style/ClickableSpan;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->addEndDrawable(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

.field final synthetic val$authorLevel:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;I)V
    .registers 3

    .line 825
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->val$authorLevel:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 828
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1900(Lcom/codemao/nemo/activity/UserDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string v0, "个人主页-点击徽章"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 829
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$500(Lcom/codemao/nemo/activity/UserDetailActivity;)Z

    move-result p1

    const-string v0, "-点击徽章"

    if-eqz p1, :cond_45

    .line 830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "主态"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 831
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goMineLevelDetail(Landroid/content/Context;)V

    goto :goto_6f

    .line 833
    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {v1}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "客态"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->val$authorLevel:I

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelDetail(ILandroid/content/Context;)V

    :goto_6f
    return-void
.end method
