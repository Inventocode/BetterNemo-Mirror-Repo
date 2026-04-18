.class Lcom/codemao/nemo/fragment/WorkCommentFragment$1;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method public static synthetic $r8$lambda$dbCpq9UHjV__CyBKY3gYvhmBhwI(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;)Lkotlin/Unit;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->lambda$comment$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kO1Gvp8meoQUW30RGmD9JuvQkeo(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;I)Lkotlin/Unit;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->lambda$comment$1(I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$comment$0()Lkotlin/Unit;
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1202(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$comment$1(I)Lkotlin/Unit;
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1202(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public comment(I)V
    .registers 6

    .line 286
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;)V

    new-instance v2, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;I)V

    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 295
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string v3, "作品详情页-点击前往登录（评论）"

    .line 287
    invoke-static {v0, v3, v1, v2, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void

    .line 299
    :cond_2a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1100(Lcom/codemao/nemo/fragment/WorkCommentFragment;IZ)V

    return-void
.end method

.method public copyCommentId(J)V
    .registers 6

    .line 312
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/MainApplication;->isIsManager()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 314
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "无文字可复制"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 316
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Label"

    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 321
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "评论id已成功复制到粘贴板"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public praise(I)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 271
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 274
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->isIs_liked()Z

    move-result v0

    const-string v1, "一级"

    if-eqz v0, :cond_49

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击取消评论点赞"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$900(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V

    goto :goto_67

    .line 278
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "作品详情页-点击评论点赞"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1000(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V

    :goto_67
    return-void
.end method

.method public showCommentDetail(ILjava/lang/String;IJ)V
    .registers 8

    .line 251
    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 255
    :cond_16
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    const-string v0, "commentItem"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 257
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v0

    const-string p3, "commentId"

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)J

    move-result-wide v0

    const-string p3, "workId"

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    iget-object p3, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$800(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "workType"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "commentPostion"

    .line 260
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "touchReplyId"

    .line 261
    invoke-virtual {p2, p1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$700(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Z

    move-result p1

    const-string p3, "isOwnWork"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1, p2}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010052

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8e
    return-void
.end method

.method public showMore(Landroid/view/View;I)V
    .registers 7

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$002(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I

    .line 165
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    if-nez p1, :cond_26

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    new-instance p2, Lcom/codemao/nemo/view/CommentOptionDialogV2;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/WorkCommentFragment$1$1;-><init>(Lcom/codemao/nemo/fragment/WorkCommentFragment$1;)V

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setOrderChooseListener(Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    .line 239
    :cond_26
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->isIs_top()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setIsTop(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$700(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setOwnWork(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p2

    if-eqz p2, :cond_82

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/WorkCommentItem;->getUser()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p2

    invoke-virtual {p2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_82

    const/4 p2, 0x1

    goto :goto_83

    :cond_82
    const/4 p2, 0x0

    :goto_83
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setIsSelf(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    .line 240
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 243
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 244
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    .line 245
    invoke-static {p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 12

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 307
    :cond_b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "作品详情页"

    const-string v6, ""

    move-object v1, p4

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
