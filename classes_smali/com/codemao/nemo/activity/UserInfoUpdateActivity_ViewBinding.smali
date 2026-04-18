.class public Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserInfoUpdateActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity;Landroid/view/View;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a043c

    const-string v2, "field \'ivAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivAvatar:Landroid/widget/ImageView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0914

    const-string v2, "field \'tvNickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvNickName:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0915

    const-string v2, "field \'tvSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->tvSign:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0372

    const-string v2, "field \'ivBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserInfoUpdateActivity;->ivBottom:Landroid/widget/ImageView;

    const v0, 0x7f0a0664

    const-string v1, "method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0666

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0667

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v2, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c9

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/UserInfoUpdateActivity_ViewBinding;Lcom/codemao/nemo/activity/UserInfoUpdateActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
