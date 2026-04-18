.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;
.super Ljava/lang/Object;
.source "WorkPublishKnActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 8

    if-eqz p2, :cond_96

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z

    move-result p1

    if-eqz p1, :cond_96

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string/jumbo p2, "发布作品页-点击输入描述"

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v3}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 343
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p2, p2, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 344
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 346
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_8a

    .line 348
    :cond_77
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 349
    iget-object p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p2

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    :goto_8a
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 353
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$5;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$600(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)V

    :cond_96
    return-void
.end method
