.class public Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SwitchEnvActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/SwitchEnvActivity;Landroid/view/View;)V
    .registers 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0831

    const-string v1, "method \'onClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08ed

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v2, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0837

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    new-instance v2, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08e6

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08be

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v0, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/SwitchEnvActivity_ViewBinding;Lcom/codemao/nemo/activity/SwitchEnvActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
