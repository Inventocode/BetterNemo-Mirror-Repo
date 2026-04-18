.class public Lcom/codemao/nemo/activity/AboutActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/AboutActivity;Landroid/view/View;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a08af

    const-string v1, "field \'tvPrivate\' and method \'onClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvPrivate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/AboutActivity;->tvPrivate:Landroid/widget/TextView;

    .line 40
    new-instance v0, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/AboutActivity_ViewBinding;Lcom/codemao/nemo/activity/AboutActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0372

    const-string v2, "field \'ivBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/AboutActivity;->ivBottom:Landroid/widget/ImageView;

    const v0, 0x7f0a037b

    const-string v1, "method \'onClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v2, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/AboutActivity_ViewBinding;Lcom/codemao/nemo/activity/AboutActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0917

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    new-instance v2, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/AboutActivity_ViewBinding;Lcom/codemao/nemo/activity/AboutActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a086e

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/AboutActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/AboutActivity_ViewBinding;Lcom/codemao/nemo/activity/AboutActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
