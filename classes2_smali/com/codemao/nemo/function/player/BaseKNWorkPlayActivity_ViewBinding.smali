.class public Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;Landroid/view/View;)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    const v1, 0x7f0a029b

    const-string v2, "field \'toolsWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    .line 52
    const-class v0, Lcom/codemao/nemo/view/WebViewProgressBar;

    const v1, 0x7f0a05c8

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/WebViewProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    .line 53
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a04f8

    const-string v2, "field \'loadingBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a087f

    const-string v1, "field \'vLoginCover\' and method \'clickLoginCover\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->vLoginCover:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a065f

    const-string v1, "field \'rlTitle\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlTitle:Landroid/view/View;

    .line 64
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0654

    const-string v2, "field \'rlRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlRoot:Landroid/widget/RelativeLayout;

    .line 65
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0650

    const-string v2, "field \'rlQrcode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    .line 66
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a062d

    const-string v2, "field \'rlContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->rlContent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03f3

    const-string v1, "field \'ivPraise\' and method \'praiseWorkOrCancel\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivPraise\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivPraise:Landroid/widget/ImageView;

    .line 70
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a03f8

    const-string v2, "field \'ivQrCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivQrCode:Landroid/widget/ImageView;

    .line 77
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0447

    const-string v2, "field \'ivWorkCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    const v0, 0x7f0a094f

    const-string v1, "field \'vCover\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->vCover:Landroid/view/View;

    const v0, 0x7f0a0410

    const-string v1, "field \'ivScreenShoot\' and method \'getScreenShoot\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivScreenShoot\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivScreenShoot:Landroid/widget/ImageView;

    .line 82
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a087e

    const-string v1, "field \'tvLogin\' and method \'clickLogin\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    .line 91
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$4;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0381

    const-string v1, "field \'ivCollect\' and method \'collectWorkOrCancel\'"

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 98
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCollect\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivCollect:Landroid/widget/ImageView;

    .line 100
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$5;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0386

    const-string v1, "field \'ivControl\' and method \'showGameKeyboard\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivControl\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivControl:Landroid/widget/ImageView;

    .line 109
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$6;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0143

    const-string v1, "field \'unLoginGuideLayout\' and method \'dismissGuide\'"

    .line 115
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 116
    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->unLoginGuideLayout:Landroid/view/View;

    .line 118
    new-instance v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$7;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02dd

    const-string v1, "field \'guideImageV\'"

    .line 124
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->guideImageV:Landroid/view/View;

    const v0, 0x7f0a037b

    const-string v1, "method \'back\'"

    .line 125
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$8;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03fe

    const-string v1, "method \'reloadUrl\'"

    .line 133
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 135
    new-instance v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding$9;-><init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity_ViewBinding;Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
