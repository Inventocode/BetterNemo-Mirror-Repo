.class public final Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;
.super Ljava/lang/Object;
.source "ToolsdkActivityEditListElementsBinding.java"


# instance fields
.field public final constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final etNumbers:Landroid/widget/EditText;

.field public final ivClose:Landroid/widget/ImageView;

.field public final ivIconAdd:Landroid/widget/ImageView;

.field public final ivIconDelete:Landroid/widget/ImageView;

.field public final ivTitleIcon:Landroid/widget/ImageView;

.field public final layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutNumbersEdit:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvConfirm:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final vEditListBg:Landroid/view/View;

.field public final vMaskBg:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .registers 21

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->etNumbers:Landroid/widget/EditText;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivClose:Landroid/widget/ImageView;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconAdd:Landroid/widget/ImageView;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivIconDelete:Landroid/widget/ImageView;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->ivTitleIcon:Landroid/widget/ImageView;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutAddNewElement:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->layoutNumbersEdit:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvConfirm:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vEditListBg:Landroid/view/View;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->vMaskBg:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;
    .registers 21

    move-object/from16 v0, p0

    .line 131
    move-object v2, v0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 133
    sget v1, Lcom/codemao/toolssdk/R$id;->et_numbers:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_aa

    .line 139
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_add_new_element:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_aa

    .line 145
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_close:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_aa

    .line 151
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_icon_add:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_aa

    .line 157
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_icon_delete:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_aa

    .line 163
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_title_icon:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_aa

    .line 169
    sget v1, Lcom/codemao/toolssdk/R$id;->layout_add_new_element:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_aa

    .line 175
    sget v1, Lcom/codemao/toolssdk/R$id;->layout_numbers_edit:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_aa

    .line 181
    sget v1, Lcom/codemao/toolssdk/R$id;->recyclerView:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_aa

    .line 187
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_add_new_element:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_aa

    .line 193
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_confirm:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_aa

    .line 199
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_edit_left:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_aa

    .line 205
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_edit_right:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_aa

    .line 211
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_title:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    .line 217
    sget v1, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_aa

    .line 223
    sget v1, Lcom/codemao/toolssdk/R$id;->v_mask_bg:I

    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_aa

    .line 229
    new-instance v19, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-direct/range {v0 .. v18}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v19

    .line 234
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;
    .registers 5

    .line 118
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_edit_list_elements:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
