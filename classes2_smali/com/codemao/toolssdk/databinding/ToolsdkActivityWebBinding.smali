.class public final Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;
.super Ljava/lang/Object;
.source "ToolsdkActivityWebBinding.java"


# instance fields
.field public final ivQuite:Landroid/widget/ImageView;

.field public final ivRefresh:Landroid/widget/ImageView;

.field public final progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

.field public final progressCircular:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;)V
    .registers 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p2, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->ivQuite:Landroid/widget/ImageView;

    .line 49
    iput-object p3, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->ivRefresh:Landroid/widget/ImageView;

    .line 50
    iput-object p4, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    .line 51
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressCircular:Landroid/widget/ProgressBar;

    .line 53
    iput-object p7, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;
    .registers 11

    .line 83
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_quite:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_4c

    .line 89
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_refresh:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_4c

    .line 95
    sget v0, Lcom/codemao/toolssdk/R$id;->progress_bar:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    if-eqz v6, :cond_4c

    .line 101
    sget v0, Lcom/codemao/toolssdk/R$id;->progress_circular:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_4c

    .line 107
    sget v0, Lcom/codemao/toolssdk/R$id;->title_bar:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_4c

    .line 113
    sget v0, Lcom/codemao/toolssdk/R$id;->webView:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/webkit/WebView;

    if-eqz v9, :cond_4c

    .line 119
    new-instance v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;)V

    return-object v0

    .line 122
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;
    .registers 5

    .line 70
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_web:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
