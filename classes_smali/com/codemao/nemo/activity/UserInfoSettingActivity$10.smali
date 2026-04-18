.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setUserInfo()V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

.field final synthetic val$nickName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;Ljava/lang/String;)V
    .registers 3

    .line 423
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 434
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    const-string p2, "40103003"

    .line 435
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 436
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "该昵称已被使用了，换一个吧！"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_71

    :cond_27
    const-string p2, "40100003"

    .line 439
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 440
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "昵称里有不符合规定的字词，修改后再试试吧！"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_71

    :cond_48
    const-string p2, "40103004"

    .line 443
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 444
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo p2, "请使用数字、字母、汉字或下划线来设置昵称"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_71

    .line 448
    :cond_69
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    const-string/jumbo p2, "出现未知异常"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_71
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 423
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 426
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    .line 427
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$200(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$000(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserAvatar(Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->val$nickName:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserNickName(Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setUserInfoDonw()V

    return-void
.end method
