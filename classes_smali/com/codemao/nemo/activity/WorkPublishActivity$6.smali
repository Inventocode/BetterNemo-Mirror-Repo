.class Lcom/codemao/nemo/activity/WorkPublishActivity$6;
.super Ljava/lang/Object;
.source "WorkPublishActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->setDataEdit(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 441
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 10

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "焦点改变,是否有焦点:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "流程-发布"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e5

    .line 445
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$200(Lcom/codemao/nemo/activity/WorkPublishActivity;)Z

    move-result p1

    if-eqz p1, :cond_e5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$300(Lcom/codemao/nemo/activity/WorkPublishActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const-string/jumbo v1, "发布作品页-点击输入描述"

    invoke-static {v1, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v5}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$300(Lcom/codemao/nemo/activity/WorkPublishActivity;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 449
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 450
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$400(Lcom/codemao/nemo/activity/WorkPublishActivity;)Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 451
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 452
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v1

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_a0

    .line 454
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v1

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 457
    :goto_a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "有焦点,设置是底部margin:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$500(Lcom/codemao/nemo/activity/WorkPublishActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->rlAllowNum:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 460
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etDes:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$600(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V

    goto :goto_e5

    .line 461
    :cond_d4
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 462
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/WorkPublishActivity;->etOperation:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$700(Lcom/codemao/nemo/activity/WorkPublishActivity;Landroid/widget/EditText;)V

    :cond_e5
    :goto_e5
    if-eqz p2, :cond_115

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "还可输入<font color=\"#6f60dd\">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    rsub-int p2, p2, 0xc8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "</font>个字符"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$6;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/WorkPublishActivity;->tvAllowNum:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_115
    return-void
.end method
