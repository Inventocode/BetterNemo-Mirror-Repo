.class public final Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;
.super Ljava/lang/Object;
.source "ToolsdkActivityAiImageGenerateStyleBinding.java"


# instance fields
.field public final bgAiConfirmCanvas:Landroid/view/View;

.field public final bgAiImageRefresh:Landroid/view/View;

.field public final bgCanvasTools:Landroid/view/View;

.field public final clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivClosePage:Landroid/widget/ImageView;

.field public final ivResult:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvStyle:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 14

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    iput-object p2, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiConfirmCanvas:Landroid/view/View;

    .line 69
    iput-object p3, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgAiImageRefresh:Landroid/view/View;

    .line 70
    iput-object p4, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bgCanvasTools:Landroid/view/View;

    .line 71
    iput-object p5, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iput-object p8, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivClosePage:Landroid/widget/ImageView;

    .line 75
    iput-object p9, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivResult:Landroid/widget/ImageView;

    .line 76
    iput-object p10, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rvStyle:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;
    .registers 16

    .line 110
    sget v0, Lcom/codemao/toolssdk/R$id;->bg_ai_confirm_canvas:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 116
    sget v0, Lcom/codemao/toolssdk/R$id;->bg_ai_image_refresh:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_78

    .line 122
    sget v0, Lcom/codemao/toolssdk/R$id;->bg_canvas_tools:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_78

    .line 128
    move-object v6, p0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_ai_confirm_canvas:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_78

    .line 136
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_ai_image_clear_canvas:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_78

    .line 142
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_close_page:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_78

    .line 148
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_result:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_78

    .line 154
    sget v0, Lcom/codemao/toolssdk/R$id;->rv_style:I

    .line 155
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_78

    .line 160
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_ai_confirm_canvas:I

    .line 161
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_78

    .line 166
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_ai_image_clear_canvas:I

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_78

    .line 172
    sget v0, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    .line 173
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_78

    .line 178
    new-instance p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v1 .. v14}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object p0

    .line 183
    :cond_78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;
    .registers 5

    .line 97
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_ai_image_generate_style:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
