.class public Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;
.super Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;
.source "ToolsdkActivityIsTransformBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/toolssdk/R$id;->image_transform_v:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_back:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/toolssdk/R$id;->line_right_tool_bar:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/codemao/toolssdk/R$id;->right_tool_bar_bg:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/codemao/toolssdk/R$id;->btnConfirm:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/codemao/toolssdk/R$id;->click_bg_transform_vertical:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/codemao/toolssdk/R$id;->click_bg_transform_horizontal:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/codemao/toolssdk/R$id;->click_bg_transform_rotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_transform_vertical:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_transform_vertical:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_transform_horizontal:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_transform_horizontal:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_transform_rotate:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_transform_rotate:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 41
    sget-object v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 23

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x5

    .line 44
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x7

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/16 v6, 0x8

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x6

    aget-object v7, p3, v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x1

    aget-object v8, p3, v8

    check-cast v8, Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;

    const/4 v9, 0x2

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0xb

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/16 v12, 0x9

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    check-cast v13, Landroid/view/View;

    const/4 v14, 0x4

    aget-object v14, p3, v14

    check-cast v14, Landroid/view/View;

    const/16 v15, 0xc

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/TextView;

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xa

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v3, v18

    invoke-direct/range {v0 .. v17}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/codemao/toolssdk/image_selector/widget/ImageTransformView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 110
    iput-wide v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    .line 60
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 62
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .registers 3

    .line 101
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 103
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 77
    monitor-enter p0

    .line 78
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 79
    monitor-exit p0

    return v0

    .line 81
    :cond_c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 69
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 70
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityIsTransformBindingImpl;->mDirtyFlags:J

    .line 71
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 72
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 71
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
