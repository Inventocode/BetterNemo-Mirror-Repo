.class public Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShareProductActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;Landroid/view/View;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05ca

    const-string v2, "field \'mProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->mProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02fc

    const-string v1, "field \'mIvTry\' and method \'onClick\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIvTry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->mIvTry:Landroid/widget/ImageView;

    .line 45
    new-instance v0, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00af

    const-string v2, "field \'ivBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->ivBg:Landroid/widget/ImageView;

    .line 52
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04f3

    const-string v2, "field \'llUploading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploading:Landroid/widget/RelativeLayout;

    .line 53
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04f1

    const-string v2, "field \'llUploadingError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingError:Landroid/widget/LinearLayout;

    .line 54
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04f2

    const-string v2, "field \'llUploadingNetError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    .line 55
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a036b

    const-string v2, "field \'ivClouds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->ivClouds:Landroid/widget/ImageView;

    .line 56
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a036e

    const-string v2, "field \'ivStarsLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->ivStarsLeft:Landroid/widget/ImageView;

    .line 57
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a036f

    const-string v2, "field \'ivStarsRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->ivStarsRight:Landroid/widget/ImageView;

    .line 58
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03cb

    const-string v2, "field \'ivLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->ivLoading:Landroid/widget/ImageView;

    const v0, 0x7f0a02f6

    const-string v1, "method \'onClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    new-instance v2, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f5

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v2, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f7

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    new-instance v2, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fd

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v0, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity_ViewBinding;Lcom/codemao/nemo/activity/ShareProductActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
