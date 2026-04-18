.class public final Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;
.super Ljava/lang/Object;
.source "ToolsdkActivityPlayerBinding.java"


# instance fields
.field public final enableVirtualBtn:Landroid/widget/Button;

.field public final resetBtn:Landroid/widget/Button;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final showResetBtn:Landroid/widget/Button;

.field public final showVirtualKeyboardBtn:Landroid/widget/Button;

.field public final webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/codemao/toolssdk/cpp/view/WoodWebView;)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    iput-object p2, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    .line 43
    iput-object p3, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->resetBtn:Landroid/widget/Button;

    .line 44
    iput-object p4, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showResetBtn:Landroid/widget/Button;

    .line 45
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->showVirtualKeyboardBtn:Landroid/widget/Button;

    .line 46
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->webView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;
    .registers 10

    .line 76
    sget v0, Lcom/codemao/toolssdk/R$id;->enableVirtualBtn:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_41

    .line 82
    sget v0, Lcom/codemao/toolssdk/R$id;->resetBtn:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_41

    .line 88
    sget v0, Lcom/codemao/toolssdk/R$id;->showResetBtn:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_41

    .line 94
    sget v0, Lcom/codemao/toolssdk/R$id;->showVirtualKeyboardBtn:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_41

    .line 100
    sget v0, Lcom/codemao/toolssdk/R$id;->webView:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    if-eqz v8, :cond_41

    .line 106
    new-instance v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/codemao/toolssdk/cpp/view/WoodWebView;)V

    return-object v0

    .line 109
    :cond_41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;
    .registers 5

    .line 63
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_player:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
