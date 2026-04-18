.class Lcom/codemao/nemo/activity/LocalWebviewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "LocalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;


# direct methods
.method public static synthetic $r8$lambda$34BRzBFQhU5pNR-I3HdNdbQ2b8M(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->lambda$onShowFileChooser$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbAHOQqZeU4xjdd11eTAspRPndw(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->lambda$onShowFileChooser$1(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpaeQFlhO4k0qL6tn8m_H-qJogk(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->lambda$onShowFileChooser$0(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V
    .registers 2

    .line 487
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onShowFileChooser$0(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .line 551
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const-string v0, "image/*,audio/*"

    invoke-static {p2, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1000(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onShowFileChooser$1(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 4

    .line 555
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const-string v0, "file/*"

    invoke-static {p2, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1000(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onShowFileChooser$2(Landroid/content/DialogInterface;)V
    .registers 3

    .line 560
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$900(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 561
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$900(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 503
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 504
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    if-eqz p1, :cond_c

    .line 505
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/WebViewProgressBar;->setProgress(I)V

    :cond_c
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 491
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$700(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 492
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$600(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$800(Lcom/codemao/nemo/activity/LocalWebviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->tvTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 512
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$902(Lcom/codemao/nemo/activity/LocalWebviewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 514
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-ge p1, v0, :cond_15

    goto :goto_1c

    .line 517
    :cond_15
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    goto :goto_1e

    :cond_1c
    :goto_1c
    const-string p1, "image/*"

    .line 519
    :goto_1e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_eb

    .line 520
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    .line 521
    new-instance p3, Landroid/app/Dialog;

    invoke-direct {p3, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 523
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 524
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 527
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "上传文件"

    .line 528
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43480000  # 200.0f

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41400000  # 12.0f

    .line 530
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v4, 0x41200000  # 10.0f

    .line 531
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v7

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v8

    invoke-virtual {v2, v5, v7, v8, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 532
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "照片和视频"

    .line 535
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41700000  # 15.0f

    .line 537
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 538
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x41a00000  # 20.0f

    invoke-static {v8}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v7, v9, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 539
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 540
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "手机文件"

    .line 543
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 546
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    invoke-static {v8}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-static {v8}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    invoke-virtual {v7, p1, v3, p2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 547
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 548
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    new-instance p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    new-instance p1, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$2;)V

    invoke-virtual {p3, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 564
    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 565
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    goto :goto_f0

    .line 567
    :cond_eb
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-static {p2, p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1000(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;)V

    :goto_f0
    return v0
.end method
