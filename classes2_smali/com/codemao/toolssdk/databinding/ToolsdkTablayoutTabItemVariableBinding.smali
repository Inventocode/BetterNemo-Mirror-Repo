.class public final Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;
.super Ljava/lang/Object;
.source "ToolsdkTablayoutTabItemVariableBinding.java"


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    iput-object p2, p0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->icon:Landroid/widget/ImageView;

    .line 33
    iput-object p3, p0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;
    .registers 4

    .line 63
    sget v0, Lcom/codemao/toolssdk/R$id;->icon:I

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1c

    .line 69
    sget v0, Lcom/codemao/toolssdk/R$id;->title:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1c

    .line 75
    new-instance v0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 77
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;
    .registers 5

    .line 50
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_tablayout_tab_item_variable:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkTablayoutTabItemVariableBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
