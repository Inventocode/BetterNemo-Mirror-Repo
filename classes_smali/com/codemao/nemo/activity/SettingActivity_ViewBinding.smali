.class public Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/SettingActivity;Landroid/view/View;)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a091a

    const-string v2, "field \'tvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->tvVersion:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a085f

    const-string v2, "field \'tvHasNewVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->tvHasNewVersion:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a043a

    const-string v2, "field \'ivUpdate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->ivUpdate:Landroid/widget/ImageView;

    const v0, 0x7f0a0669

    const-string v1, "field \'rlUpdate\' and method \'onClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlUpdate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->rlUpdate:Landroid/widget/RelativeLayout;

    .line 51
    new-instance v0, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const-class v0, Lcom/codemao/nemo/view/SwitchButton;

    const v1, 0x7f0a0427

    const-string v2, "field \'ivSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/SwitchButton;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->ivSwitch:Lcom/codemao/nemo/view/SwitchButton;

    const v0, 0x7f0a0665

    const-string v1, "field \'rlUserInfo\' and method \'onClick\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 59
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlUserInfo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->rlUserInfo:Landroid/widget/RelativeLayout;

    .line 61
    new-instance v0, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0880

    const-string v1, "field \'tvLogout\' and method \'onClick\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvLogout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/SettingActivity;->tvLogout:Landroid/widget/TextView;

    .line 70
    new-instance v0, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0624

    const-string v1, "method \'onClick\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    new-instance v2, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    new-instance v2, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0668

    .line 92
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 94
    new-instance v2, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0632

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 102
    new-instance v0, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/SettingActivity_ViewBinding$7;-><init>(Lcom/codemao/nemo/activity/SettingActivity_ViewBinding;Lcom/codemao/nemo/activity/SettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
