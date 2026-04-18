.class public final Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;
.super Ljava/lang/Object;
.source "ToolsdkActivityAiimageCanvasBinding.java"


# instance fields
.field public final aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

.field public final bgAiImageClearCanvas:Landroid/view/View;

.field public final bgCanvasTools:Landroid/view/View;

.field public final clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final groupLoading:Landroidx/constraintlayout/widget/Group;

.field public final ivAiImageClearCanvas:Landroid/widget/ImageView;

.field public final ivBackground:Landroid/widget/ImageView;

.field public final ivBgOpenSelectImageMode:Landroid/widget/ImageView;

.field public final ivClosePage:Landroid/widget/ImageView;

.field public final ivOpenSelectImageMode:Landroid/widget/ImageView;

.field public final ivProgress:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvAiImageClearCanvas:Landroid/widget/TextView;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvConfirmCanvas:Landroid/widget/TextView;

.field public final tvConfirmMode:Landroid/widget/TextView;

.field public final tvLoadingCancel:Landroid/widget/TextView;

.field public final tvProgress:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .registers 28

    move-object v0, p0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 112
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 113
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    move-object v1, p3

    .line 114
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgAiImageClearCanvas:Landroid/view/View;

    move-object v1, p4

    .line 115
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bgCanvasTools:Landroid/view/View;

    move-object v1, p5

    .line 116
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clCanvas:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p6

    .line 117
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p7

    .line 118
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->groupLoading:Landroidx/constraintlayout/widget/Group;

    move-object v1, p8

    .line 119
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivAiImageClearCanvas:Landroid/widget/ImageView;

    move-object v1, p9

    .line 120
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivBackground:Landroid/widget/ImageView;

    move-object v1, p10

    .line 121
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivBgOpenSelectImageMode:Landroid/widget/ImageView;

    move-object v1, p11

    .line 122
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivClosePage:Landroid/widget/ImageView;

    move-object v1, p12

    .line 123
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivOpenSelectImageMode:Landroid/widget/ImageView;

    move-object v1, p13

    .line 124
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->ivProgress:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 125
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvDrawTools:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p15

    .line 126
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rvSelectMode:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p16

    .line 127
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvAiImageClearCanvas:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 128
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvCancel:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 129
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvConfirmCanvas:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 130
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvConfirmMode:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 132
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvLoadingCancel:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 133
    iput-object v1, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->tvProgress:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;
    .registers 30

    move-object/from16 v0, p0

    .line 166
    sget v1, Lcom/codemao/toolssdk/R$id;->ai_image_edit_canvas_view:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    if-eqz v5, :cond_113

    .line 172
    sget v1, Lcom/codemao/toolssdk/R$id;->bg_ai_image_clear_canvas:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_113

    .line 178
    sget v1, Lcom/codemao/toolssdk/R$id;->bg_canvas_tools:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_113

    .line 184
    sget v1, Lcom/codemao/toolssdk/R$id;->cl_canvas:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_113

    .line 190
    sget v1, Lcom/codemao/toolssdk/R$id;->cl_select_image_mode:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_113

    .line 196
    sget v1, Lcom/codemao/toolssdk/R$id;->group_loading:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/Group;

    if-eqz v10, :cond_113

    .line 202
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_ai_image_clear_canvas:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_113

    .line 208
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_background:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_113

    .line 214
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_bg_open_select_image_mode:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_113

    .line 220
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_close_page:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_113

    .line 226
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_open_select_image_mode:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_113

    .line 232
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_progress:I

    .line 233
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_113

    .line 238
    sget v1, Lcom/codemao/toolssdk/R$id;->rv_draw_tools:I

    .line 239
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_113

    .line 244
    sget v1, Lcom/codemao/toolssdk/R$id;->rv_select_mode:I

    .line 245
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_113

    .line 250
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_ai_image_clear_canvas:I

    .line 251
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_113

    .line 256
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_cancel:I

    .line 257
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_113

    .line 262
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_confirm_canvas:I

    .line 263
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_113

    .line 268
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_confirm_mode:I

    .line 269
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_113

    .line 274
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_generating:I

    .line 275
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_113

    .line 280
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_loading_cancel:I

    .line 281
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_113

    .line 286
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_progress:I

    .line 287
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_113

    .line 292
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_title:I

    .line 293
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_113

    .line 298
    sget v1, Lcom/codemao/toolssdk/R$id;->v_edit_list_bg:I

    .line 299
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v27

    if-eqz v27, :cond_113

    .line 304
    sget v1, Lcom/codemao/toolssdk/R$id;->v_loading_bg:I

    .line 305
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v28

    if-eqz v28, :cond_113

    .line 310
    new-instance v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v28}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;-><init>(Landroid/widget/FrameLayout;Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v1

    .line 317
    :cond_113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-static {p0, v0, v1}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;
    .registers 5

    .line 153
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_activity_aiimage_canvas:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_c

    .line 155
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    :cond_c
    invoke-static {p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->bind(Landroid/view/View;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/FrameLayout;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
