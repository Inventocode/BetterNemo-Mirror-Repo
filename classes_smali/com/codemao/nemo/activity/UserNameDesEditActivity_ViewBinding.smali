.class public Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserNameDesEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;Landroid/view/View;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a08d1

    const-string v1, "field \'tvSave\' and method \'onClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvSave\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvSave:Landroid/widget/TextView;

    .line 37
    new-instance v0, Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding;Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a020a

    const-string v2, "field \'editText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0896

    const-string v2, "field \'tvUsedNotice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0828

    const-string v2, "field \'tvLimit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvLimit:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    const-string v1, "method \'onClick\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity_ViewBinding;Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
