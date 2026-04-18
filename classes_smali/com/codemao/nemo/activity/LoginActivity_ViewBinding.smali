.class public Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;Landroid/view/View;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a080f

    const-string v2, "field \'tvChange\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->tvChange:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a0648

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a066d

    const-string v1, "field \'rlWX\' and method \'onViewClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'rlWX\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->rlWX:Landroid/widget/LinearLayout;

    .line 48
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0625

    const-string v1, "field \'rlAccount\' and method \'onViewClicked\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'rlAccount\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->rlAccount:Landroid/widget/LinearLayout;

    .line 57
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08ae

    const-string v2, "field \'tvPolicy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->tvPolicy:Landroid/widget/TextView;

    .line 64
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0106

    const-string v2, "field \'cbPolicy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->cbPolicy:Landroid/widget/CheckBox;

    .line 65
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04a4

    const-string v2, "field \'llPolicy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->llPolicy:Landroid/widget/LinearLayout;

    const v0, 0x7f0a096a

    const-string v1, "field \'vShadow\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->vShadow:Landroid/view/View;

    .line 67
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a044a

    const-string v2, "field \'ivWx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->ivWx:Landroid/widget/ImageView;

    .line 68
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0929

    const-string v2, "field \'tvWx\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->tvWx:Landroid/widget/TextView;

    const v0, 0x7f0a03f7

    const-string v1, "field \'ivQQ\' and method \'onViewClicked\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivQQ\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->ivQQ:Landroid/widget/ImageView;

    .line 72
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d1

    const-string v1, "field \'ll_other_way\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->ll_other_way:Landroid/view/View;

    const v0, 0x7f0a038b

    const-string v1, "field \'iv_cover\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    .line 80
    const-class v0, Landroid/widget/VideoView;

    const v1, 0x7f0a0974

    const-string v2, "field \'video\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    .line 81
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0355

    const-string v2, "field \'ivAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->ivAccount:Landroid/widget/ImageView;

    .line 82
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a07f9

    const-string v2, "field \'tvAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->tvAccount:Landroid/widget/TextView;

    const v0, 0x7f0a0380

    const-string v1, "field \'ivCode\' and method \'onViewClicked\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 84
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->ivCode:Landroid/widget/ImageView;

    .line 86
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07e1

    const-string v1, "field \'tryItOut\' and method \'onTryItOutClicked\'"

    .line 92
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 93
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tryItOut\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->tryItOut:Landroid/widget/TextView;

    .line 95
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/LoginActivity_ViewBinding;Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0364

    const-string v2, "field \'backImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    return-void
.end method
