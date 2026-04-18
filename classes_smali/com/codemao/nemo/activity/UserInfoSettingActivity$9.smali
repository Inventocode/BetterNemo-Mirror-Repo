.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserInfoSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->getRandomName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/RandomNicknameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 347
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    .line 348
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    const-string/jumbo p2, "获取随机昵称失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/RandomNicknameInfo;)V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    .line 341
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RandomNicknameInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 337
    check-cast p1, Lcom/codemao/nemo/bean/RandomNicknameInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;->onSuc(Lcom/codemao/nemo/bean/RandomNicknameInfo;)V

    return-void
.end method
