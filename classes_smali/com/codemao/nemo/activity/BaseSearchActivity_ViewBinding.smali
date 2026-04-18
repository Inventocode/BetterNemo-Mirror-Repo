.class public Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseSearchActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private view7f0a06d0TextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->root:Landroid/view/View;

    const v0, 0x7f0a06fb

    const-string v1, "field \'shade_area\' and method \'onClick\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->shade_area:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0060

    const-string v1, "field \'animRoot\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    const v0, 0x7f0a00fb

    const-string v1, "field \'cancelTv\' and method \'onClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->cancelTv:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a06d0

    const-string v1, "field \'search_edit\', method \'onClick\', method \'onEditorAction\', method \'beforeTextChanged\', method \'onTextChanged\', and method \'afterTextChanged\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/EditText;

    const-string v3, "field \'search_edit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    .line 67
    new-instance v0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    check-cast v1, Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    new-instance v0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;->view7f0a06d0TextWatcher:Landroid/text/TextWatcher;

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a01cc

    const-string v1, "field \'search_delete\' and method \'onClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 97
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'search_delete\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_delete:Landroid/widget/ImageView;

    .line 99
    new-instance v0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
