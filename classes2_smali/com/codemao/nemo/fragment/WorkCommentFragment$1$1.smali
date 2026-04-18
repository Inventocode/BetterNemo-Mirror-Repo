.class Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->showMore(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTop()V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v3, v3, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$600(Lcom/codemao/nemo/fragment/WorkCommentFragment;ZJI)V

    return-void
.end method

.method public copy()V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const-string v1, "一级"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击复制评论"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 188
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "无文字可复制"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 190
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 192
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Label"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v0, :cond_84

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "已成功复制到粘贴板"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 198
    :cond_84
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "复制失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 203
    :goto_91
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public delete()V
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    if-nez v0, :cond_48

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    new-instance v1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string v2, "取消"

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const-string v2, "删除"

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$202(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 172
    :cond_48
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1$1;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public jubao()V
    .registers 9

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const-string v1, "一级"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击评论举报"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v4, v4, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v4}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v6, v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v6}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v7, v7, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "："

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v6, v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v6}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v7, v7, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentItem;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v6, v6, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v6}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v7, v7, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v7}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/WorkCommentItem;->getEmoji_content()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/codemao/nemo/util/StringUtil;->getEmotionStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/TipOffActivity;->tipComment(Landroid/content/Context;JJLjava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public top()V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_39

    const/4 v0, 0x0

    :goto_1c
    const/4 v3, 0x2

    if-gt v2, v3, :cond_38

    .line 219
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v3, v3, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->isIs_top()Z

    move-result v3

    if-eqz v3, :cond_35

    add-int/lit8 v0, v0, 0x1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_38
    move v2, v0

    :cond_39
    if-lt v2, v1, :cond_49

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "最多设置三条置顶评论"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_6f

    .line 227
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;->this$1:Lcom/codemao/nemo/fragment/WorkCommentFragment$1;

    iget-object v3, v3, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$600(Lcom/codemao/nemo/fragment/WorkCommentFragment;ZJI)V

    :goto_6f
    return-void
.end method
