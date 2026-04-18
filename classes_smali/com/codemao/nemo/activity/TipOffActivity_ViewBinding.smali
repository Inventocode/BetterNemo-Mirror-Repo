.class public Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TipOffActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/TipOffActivity;Landroid/view/View;)V
    .registers 7

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0824

    const-string v2, "field \'tvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0a081f

    const-string v1, "field \'tvCommit\' and method \'tipOff\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCommit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->tvCommit:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a020f

    const-string v2, "field \'editText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->editText:Landroid/widget/EditText;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0828

    const-string v2, "field \'tvLimit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->tvLimit:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a010b

    const-string v2, "field \'cbIllegal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbIllegal:Landroid/widget/CheckBox;

    .line 62
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0108

    const-string v2, "field \'cbAd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbAd:Landroid/widget/CheckBox;

    .line 63
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a010a

    const-string v2, "field \'cbDirty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbDirty:Landroid/widget/CheckBox;

    .line 64
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a010e

    const-string v2, "field \'cbYellow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbYellow:Landroid/widget/CheckBox;

    .line 65
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a010c

    const-string v2, "field \'cbOther\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbOther:Landroid/widget/CheckBox;

    .line 66
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0109

    const-string v2, "field \'cbCopy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbCopy:Landroid/widget/CheckBox;

    .line 67
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a010d

    const-string v2, "field \'cbPivate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->cbPivate:Landroid/widget/CheckBox;

    .line 68
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04ae

    const-string v2, "field \'llContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->llContent:Landroid/widget/LinearLayout;

    .line 69
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04e2

    const-string v2, "field \'llRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->llRoot:Landroid/widget/LinearLayout;

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08b9

    const-string v2, "field \'tvReasonCopy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/TipOffActivity;->tvReasonCopy:Landroid/widget/TextView;

    const v0, 0x7f0a04dc

    const-string v1, "method \'selectReason\'"

    .line 71
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04db

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d9

    .line 87
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 89
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04dd

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04de

    .line 103
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$6;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04df

    .line 111
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 113
    new-instance v2, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$7;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$7;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04da

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$8;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    const-string v1, "method \'close\'"

    .line 127
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 129
    new-instance v0, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding$9;-><init>(Lcom/codemao/nemo/activity/TipOffActivity_ViewBinding;Lcom/codemao/nemo/activity/TipOffActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
