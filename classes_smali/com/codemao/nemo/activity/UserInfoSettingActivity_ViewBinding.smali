.class public Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserInfoSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;Landroid/view/View;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0228

    const-string v2, "field \'etNickname\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    const v0, 0x7f0a00e0

    const-string v1, "field \'tvCreate\' and method \'onViewClicked\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCreate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    .line 51
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a043c

    const-string v1, "field \'ivAvatar\' and method \'onViewClicked\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAvatar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatar:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0845

    const-string v2, "field \'tvUsedNotice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvUsedNotice:Landroid/widget/TextView;

    .line 67
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0661

    const-string v2, "field \'rlTop\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a08af

    const-string v1, "field \'tvProvision\' and method \'onViewClicked\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvProvision\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    .line 71
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0293

    const-string v2, "field \'flRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->flRoot:Landroid/widget/FrameLayout;

    .line 78
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0641

    const-string v2, "field \'rlInput\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlInput:Landroid/widget/RelativeLayout;

    .line 79
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0627

    const-string v2, "field \'rlChoose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    .line 80
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0688

    const-string v2, "field \'rvAvatarChoose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a043e

    const-string v1, "field \'ivAvatarEdit\' and method \'onViewClicked\'"

    .line 81
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivAvatarEdit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatarEdit:Landroid/widget/ImageView;

    .line 84
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0810

    const-string v1, "method \'onViewClicked\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b0

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037c

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding$7;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
