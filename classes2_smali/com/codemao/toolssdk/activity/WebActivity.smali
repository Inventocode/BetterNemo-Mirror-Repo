.class public final Lcom/codemao/toolssdk/activity/WebActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/WebActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebActivity.kt\ncom/codemao/toolssdk/activity/WebActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/activity/WebActivity$Companion;


# direct methods
.method public static synthetic $r8$lambda$LNfesmHFIFL0nW6pJtDef_xCVnE(Ljava/lang/String;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/WebActivity;->onCreate$lambda$4(Ljava/lang/String;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9qGe_tSCWNK5qpOnFJFCNtEkgs(Lcom/codemao/toolssdk/activity/WebActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/WebActivity;->onCreate$lambda$2(Lcom/codemao/toolssdk/activity/WebActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/WebActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/WebActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/activity/WebActivity;->Companion:Lcom/codemao/toolssdk/activity/WebActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/toolssdk/activity/WebActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final onCreate$lambda$4(Ljava/lang/String;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;Landroid/view/View;)V
    .registers 4

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_17

    .line 118
    iget-object p2, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p2, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressCircular:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 68
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 71
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 73
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$1;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$1;-><init>(Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    iget-object v0, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;-><init>(Lcom/codemao/toolssdk/activity/WebActivity;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 111
    iget-object v1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 113
    :cond_6a
    iget-object v1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->ivQuite:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/toolssdk/activity/WebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/activity/WebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->ivRefresh:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/toolssdk/activity/WebActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/codemao/toolssdk/activity/WebActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
