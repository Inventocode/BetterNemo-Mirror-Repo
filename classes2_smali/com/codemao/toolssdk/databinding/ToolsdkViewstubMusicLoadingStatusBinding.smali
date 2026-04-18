.class public final Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;
.super Ljava/lang/Object;
.source "ToolsdkViewstubMusicLoadingStatusBinding.java"


# instance fields
.field public final groupLoading:Landroidx/constraintlayout/widget/Group;

.field public final groupShowError:Landroidx/constraintlayout/widget/Group;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvErrorText:Landroid/widget/TextView;

.field public final tvRetry:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    .line 52
    iput-object p3, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->groupShowError:Landroidx/constraintlayout/widget/Group;

    .line 55
    iput-object p6, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->tvErrorText:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->tvRetry:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;
    .registers 12

    .line 87
    sget v0, Lcom/codemao/toolssdk/R$id;->group_loading:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_57

    .line 93
    sget v0, Lcom/codemao/toolssdk/R$id;->group_show_error:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_57

    .line 99
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_image_error:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_57

    .line 105
    sget v0, Lcom/codemao/toolssdk/R$id;->progress:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_57

    .line 111
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_error_text:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_57

    .line 117
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_loading_text:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_57

    .line 123
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_retry:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_57

    .line 129
    new-instance v0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 132
    :cond_57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;
    .registers 5

    .line 74
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_viewstub_music_loading_status:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkViewstubMusicLoadingStatusBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
