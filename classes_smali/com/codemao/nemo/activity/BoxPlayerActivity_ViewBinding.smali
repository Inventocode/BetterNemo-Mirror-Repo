.class public Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BoxPlayerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;Landroid/view/View;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0a09c3

    const-string v2, "field \'wv_Game\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    .line 40
    const-class v0, Lcom/codemao/nemo/view/WebViewProgressBar;

    const v1, 0x7f0a05c8

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/WebViewProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a03c4

    const-string v1, "field \'ivLast\' and method \'last\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivLast\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    .line 45
    new-instance v0, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03e4

    const-string v1, "field \'ivNext\' and method \'next\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    .line 54
    new-instance v0, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    const-string v1, "method \'back\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0417

    const-string v1, "method \'share\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance v0, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/BoxPlayerActivity_ViewBinding;Lcom/codemao/nemo/activity/BoxPlayerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
