.class public Lcom/codemao/nemo/dialog/WorkInfoDialog_ViewBinding;
.super Ljava/lang/Object;
.source "WorkInfoDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/codemao/nemo/view/TextCountLimitEditText;

    const v1, 0x7f0a022a

    const-string v2, "field \'etDes\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/TextCountLimitEditText;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    .line 33
    const-class v0, Lcom/codemao/nemo/view/TextCountLimitEditText;

    const v1, 0x7f0a022b

    const-string v2, "field \'etName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/TextCountLimitEditText;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08b2

    const-string v2, "field \'tvPublish\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvPublish:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a037b

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->ivClose:Landroid/widget/ImageView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0867

    const-string v2, "field \'tvAllowNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvAllowNum:Landroid/widget/TextView;

    const v0, 0x7f0a0285

    const-string v1, "method \'showKeyBoard\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/codemao/nemo/dialog/WorkInfoDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/dialog/WorkInfoDialog_ViewBinding$1;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog_ViewBinding;Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
