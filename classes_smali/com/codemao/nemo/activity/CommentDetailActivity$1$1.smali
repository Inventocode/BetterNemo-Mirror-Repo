.class Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity$1;->showMore(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTop()V
    .registers 1

    return-void
.end method

.method public copy()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string v1, "二级"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击复制评论"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string/jumbo v1, "无文字可复制"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 206
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 208
    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Label"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string/jumbo v1, "已成功复制到粘贴板"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 213
    :goto_74
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public delete()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$200(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    if-nez v0, :cond_46

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance v1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string/jumbo v2, "取消"

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string/jumbo v2, "删除"

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$202(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 185
    :cond_46
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$200(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public jubao()V
    .registers 9

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string v1, "二级"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击评论举报"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v1, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$700(Lcom/codemao/nemo/activity/CommentDetailActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v4, v4, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v4}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v6, v6, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v6}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v7, v7, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v7}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "："

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v6, v6, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v6}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v7, v7, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v7}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkReplyItem;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v6, v6, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v6}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v7, v7, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v7}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkReplyItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/codemao/nemo/util/StringUtil;->getEmotionStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/TipOffActivity;->tipComment(Landroid/content/Context;JJLjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public top()V
    .registers 1

    return-void
.end method
