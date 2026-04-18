.class Lcom/codemao/nemo/activity/CommentDetailActivity$1;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyReplyId(J)V
    .registers 6

    .line 287
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/MainApplication;->isIsManager()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 289
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string/jumbo p2, "无文字可复制"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 291
    :cond_2a
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Label"

    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 295
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const-string/jumbo p2, "评论id已成功复制到粘贴板"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public praise(I)V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->isIs_liked()Z

    move-result v0

    const-string v1, "一级"

    const-string v2, "二级"

    if-eqz v0, :cond_3a

    .line 247
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击取消评论点赞"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$900(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V

    goto :goto_5d

    .line 250
    :cond_3a
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    if-nez p1, :cond_3f

    goto :goto_40

    :cond_3f
    move-object v1, v2

    :goto_40
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "作品详情页-点击评论点赞"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1000(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V

    :goto_5d
    return-void
.end method

.method public reply(I)V
    .registers 6

    .line 257
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$1$2;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1;)V

    new-instance v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$1$3;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1;I)V

    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    .line 270
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->getReportParams()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v3, "作品详情页-点击前往登录（评论）"

    .line 258
    invoke-static {v0, v3, v1, v2, p1}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForCommentTipsDialog(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Map;)V

    return-void

    .line 274
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1200(Lcom/codemao/nemo/activity/CommentDetailActivity;IZ)V

    return-void
.end method

.method public showMore(Landroid/view/View;I)V
    .registers 8

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$002(Lcom/codemao/nemo/activity/CommentDetailActivity;I)I

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    if-nez p1, :cond_22

    .line 179
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance p2, Lcom/codemao/nemo/view/CommentOptionDialogV2;

    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p2, v0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;-><init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1;)V

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setOrderChooseListener(Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$102(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    .line 234
    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$800(Lcom/codemao/nemo/activity/CommentDetailActivity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setOwnWork(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setNeedShowTop(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p1

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getReply_user()Lcom/codemao/nemo/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserInfo;->getId()J

    move-result-wide v0

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_68

    const/4 p2, 0x1

    :cond_68
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->setIsSelf(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    .line 235
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 237
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 238
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 239
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    .line 240
    invoke-static {p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/view/CommentOptionDialogV2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public toUserDetail(Landroid/view/View;JLjava/lang/String;)V
    .registers 12

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 282
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$700(Lcom/codemao/nemo/activity/CommentDetailActivity;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "评论详情页"

    const-string v6, ""

    move-object v1, p4

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
