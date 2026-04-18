.class public Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;
.source "CreativeViewFullscreenLeftBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private final mCallback12:Landroid/view/View$OnClickListener;

.field private final mCallback13:Landroid/view/View$OnClickListener;

.field private final mCallback14:Landroid/view/View$OnClickListener;

.field private final mCallback15:Landroid/view/View$OnClickListener;

.field private final mCallback16:Landroid/view/View$OnClickListener;

.field private final mCallback17:Landroid/view/View$OnClickListener;

.field private final mCallback18:Landroid/view/View$OnClickListener;

.field private final mCallback19:Landroid/view/View$OnClickListener;

.field private final mCallback20:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->line:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 48
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x5

    .line 51
    aget-object v4, p3, v15

    check-cast v4, Landroid/widget/ImageView;

    const/4 v14, 0x4

    aget-object v5, p3, v14

    check-cast v5, Landroid/widget/ImageView;

    const/4 v13, 0x3

    aget-object v6, p3, v13

    check-cast v6, Landroid/widget/ImageView;

    const/4 v12, 0x7

    aget-object v7, p3, v12

    check-cast v7, Landroid/widget/ImageView;

    const/4 v11, 0x6

    aget-object v8, p3, v11

    check-cast v8, Landroid/widget/ImageView;

    const/4 v10, 0x1

    aget-object v9, p3, v10

    check-cast v9, Landroid/widget/FrameLayout;

    const/16 v16, 0xd

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v10, v16

    const/16 v3, 0x8

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v11, v16

    const/4 v3, 0x2

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v12, v16

    const/16 v3, 0x9

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v13, v16

    const/16 v3, 0xa

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0xb

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0xb

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 1196
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 1197
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags_1:J

    .line 66
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->leftToolsFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 73
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 80
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 82
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback19:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    .line 90
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 6

    .line 261
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 262
    monitor-enter p0

    .line 263
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 264
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 267
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->rotation:I

    if-ne p2, p1, :cond_23

    .line 268
    monitor-enter p0

    .line 269
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 270
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 273
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->scale:I

    if-ne p2, p1, :cond_35

    .line 274
    monitor-enter p0

    .line 275
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x8000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 276
    monitor-exit p0

    return v0

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw p1

    .line 279
    :cond_35
    sget p1, Lcom/codemao/creativecenter/BR;->x:I

    if-ne p2, p1, :cond_47

    .line 280
    monitor-enter p0

    .line 281
    :try_start_3a
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x10000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 282
    monitor-exit p0

    return v0

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw p1

    .line 285
    :cond_47
    sget p1, Lcom/codemao/creativecenter/BR;->y:I

    if-ne p2, p1, :cond_59

    .line 286
    monitor-enter p0

    .line 287
    :try_start_4c
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x20000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 288
    monitor-exit p0

    return v0

    :catchall_56
    move-exception p1

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_56

    throw p1

    :cond_59
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMCenterPEnable(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 198
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 199
    monitor-enter p0

    .line 200
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 201
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMCenterPSelected(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 216
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 217
    monitor-enter p0

    .line 218
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 219
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMCenterPVisible(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 243
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 244
    monitor-enter p0

    .line 245
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 246
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMFullscreenSelected(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 234
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 235
    monitor-enter p0

    .line 236
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 237
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMFullscreenVisible(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 225
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 226
    monitor-enter p0

    .line 227
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 228
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMGridEnable(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 252
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 253
    monitor-enter p0

    .line 254
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 255
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMGridSelected(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 207
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 208
    monitor-enter p0

    .line 209
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 210
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMGridVisible(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 294
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 295
    monitor-enter p0

    .line 296
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 297
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMRevertSelected(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 312
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 313
    monitor-enter p0

    .line 314
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 315
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeDashboardItemVMRevertVisible(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 303
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 304
    monitor-enter p0

    .line 305
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 306
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_82

    goto/16 :goto_80

    .line 1160
    :pswitch_7  #0xa
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_80

    .line 1171
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideY(Landroid/view/View;)V

    goto/16 :goto_80

    .line 1107
    :pswitch_14  #0x9
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_80

    .line 1118
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideX(Landroid/view/View;)V

    goto/16 :goto_80

    .line 1178
    :pswitch_21  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_80

    .line 1189
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideScale(Landroid/view/View;)V

    goto :goto_80

    .line 1142
    :pswitch_2d  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_80

    .line 1153
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideRotate(Landroid/view/View;)V

    goto :goto_80

    .line 1035
    :pswitch_39  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    if-eqz v0, :cond_80

    .line 1046
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickRevert(Landroid/view/View;)V

    goto :goto_80

    .line 1017
    :pswitch_45  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    if-eqz v0, :cond_80

    .line 1028
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickUpload(Landroid/view/View;)V

    goto :goto_80

    .line 1071
    :pswitch_51  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    if-eqz v0, :cond_80

    .line 1082
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickCenterP(Landroid/view/View;)V

    goto :goto_80

    .line 1053
    :pswitch_5d  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    if-eqz v0, :cond_80

    .line 1064
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuides(Landroid/view/View;)V

    goto :goto_80

    .line 1125
    :pswitch_69  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    if-eqz v0, :cond_80

    .line 1135
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickOritation()V

    goto :goto_80

    .line 1089
    :pswitch_75  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    if-eqz v0, :cond_80

    .line 1100
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickRun(Landroid/view/View;)V

    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_75  #00000001
        :pswitch_69  #00000002
        :pswitch_5d  #00000003
        :pswitch_51  #00000004
        :pswitch_45  #00000005
        :pswitch_39  #00000006
        :pswitch_2d  #00000007
        :pswitch_21  #00000008
        :pswitch_14  #00000009
        :pswitch_7  #0000000a
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 102

    move-object/from16 v1, p0

    .line 325
    monitor-enter p0

    .line 326
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 327
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 329
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags_1:J

    .line 330
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a5a

    .line 345
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 357
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 383
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    const-wide/32 v8, 0x40800

    and-long v10, v2, v8

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4e5

    .line 419
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v13, :cond_d5

    if-eqz v0, :cond_79

    const-wide/32 v10, 0x100000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x400000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x1000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x4000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x40000000

    or-long/2addr v2, v10

    const-wide v10, 0x100000000L

    or-long/2addr v2, v10

    const-wide v10, 0x400000000L

    or-long/2addr v2, v10

    const-wide v10, 0x1000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x4000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x10000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x40000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x100000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x400000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x1000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x4000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x40000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x100000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x1000000000000000L

    goto :goto_d4

    :cond_79
    const-wide/32 v10, 0x80000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x200000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x800000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x2000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x20000000

    or-long/2addr v2, v10

    const-wide v10, 0x80000000L

    or-long/2addr v2, v10

    const-wide v10, 0x200000000L

    or-long/2addr v2, v10

    const-wide v10, 0x800000000L

    or-long/2addr v2, v10

    const-wide v10, 0x2000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x8000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x20000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x80000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x200000000000L

    or-long/2addr v2, v10

    const-wide v10, 0x800000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x2000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x8000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x20000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x80000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x800000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, -0x8000000000000000L

    :goto_d4
    or-long/2addr v2, v10

    .line 499
    :cond_d5
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_e0

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_e2

    :cond_e0
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_e2
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 501
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v0, :cond_f1

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_f3

    :cond_f1
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_f3
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 503
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v0, :cond_102

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_104

    :cond_102
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_104
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 505
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->leftToolsFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v0, :cond_113

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    goto :goto_115

    :cond_113
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    :goto_115
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v0, :cond_128

    .line 507
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    goto :goto_134

    :cond_128
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    :goto_134
    if-eqz v0, :cond_143

    .line 509
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    goto :goto_14f

    :cond_143
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 511
    :goto_14f
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_15a

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    goto :goto_15c

    :cond_15a
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    :goto_15c
    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v0, :cond_16f

    .line 513
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_17b

    :cond_16f
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 515
    :goto_17b
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_186

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_188

    :cond_186
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_188
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v0, :cond_19d

    .line 517
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-wide/from16 v21, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1ab

    :cond_19d
    move-wide/from16 v21, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 519
    :goto_1ab
    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1b6

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    goto :goto_1b8

    :cond_1b6
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_34dp:I

    :goto_1b8
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v0, :cond_1cd

    .line 521
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v23, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1db

    :cond_1cd
    move/from16 v23, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1db
    if-eqz v0, :cond_1ec

    .line 523
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v24, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1fa

    :cond_1ec
    move/from16 v24, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1fa
    if-eqz v0, :cond_20b

    .line 525
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v25, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_219

    :cond_20b
    move/from16 v25, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_34dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_219
    if-eqz v0, :cond_22a

    .line 527
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v26, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_238

    :cond_22a
    move/from16 v26, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_34dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_238
    if-eqz v0, :cond_249

    .line 529
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v27, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_257

    :cond_249
    move/from16 v27, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_257
    if-eqz v0, :cond_268

    .line 531
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v28, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_276

    :cond_268
    move/from16 v28, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_276
    if-eqz v0, :cond_287

    .line 533
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v29, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_295

    :cond_287
    move/from16 v29, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_295
    if-eqz v0, :cond_2a6

    .line 535
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v30, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_120dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2b4

    :cond_2a6
    move/from16 v30, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2b4
    if-eqz v0, :cond_2c5

    .line 537
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v31, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2d3

    :cond_2c5
    move/from16 v31, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2d3
    if-eqz v0, :cond_2e4

    .line 539
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v32, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2f2

    :cond_2e4
    move/from16 v32, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2f2
    if-eqz v0, :cond_303

    .line 541
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v33, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_311

    :cond_303
    move/from16 v33, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_311
    if-eqz v0, :cond_322

    .line 543
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v34, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_330

    :cond_322
    move/from16 v34, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_330
    if-eqz v0, :cond_341

    .line 545
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v35, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_34f

    :cond_341
    move/from16 v35, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_11dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_34f
    if-eqz v0, :cond_360

    .line 547
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v36, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_36e

    :cond_360
    move/from16 v36, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_36e
    if-eqz v0, :cond_37f

    .line 549
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v37, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_38d

    :cond_37f
    move/from16 v37, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_38d
    if-eqz v0, :cond_39e

    .line 551
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v38, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3ac

    :cond_39e
    move/from16 v38, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3ac
    if-eqz v0, :cond_3bd

    .line 553
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v39, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3cb

    :cond_3bd
    move/from16 v39, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3cb
    if-eqz v0, :cond_3dc

    .line 555
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v40, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3ea

    :cond_3dc
    move/from16 v40, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3ea
    if-eqz v0, :cond_3fb

    .line 557
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v41, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_409

    :cond_3fb
    move/from16 v41, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_409
    if-eqz v0, :cond_41a

    .line 559
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v42, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_428

    :cond_41a
    move/from16 v42, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_428
    if-eqz v0, :cond_439

    .line 561
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v43, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_447

    :cond_439
    move/from16 v43, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_34dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_447
    if-eqz v0, :cond_458

    .line 563
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v44, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_466

    :cond_458
    move/from16 v44, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_466
    if-eqz v0, :cond_477

    .line 565
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v45, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_485

    :cond_477
    move/from16 v45, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_485
    if-eqz v0, :cond_490

    .line 567
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_498

    :cond_490
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    :goto_498
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move/from16 v50, v3

    move/from16 v51, v5

    move/from16 v52, v8

    move/from16 v53, v10

    move/from16 v54, v12

    move/from16 v55, v13

    move v8, v14

    move/from16 v5, v33

    move/from16 v12, v35

    move/from16 v33, v36

    move/from16 v14, v37

    move/from16 v46, v38

    move/from16 v13, v40

    move/from16 v47, v41

    move/from16 v15, v42

    move/from16 v48, v44

    move/from16 v49, v45

    move v10, v4

    move v4, v9

    move/from16 v9, v43

    move-wide/from16 v98, v21

    move/from16 v22, v0

    move v0, v11

    move/from16 v21, v24

    move/from16 v11, v28

    move/from16 v28, v32

    move/from16 v24, v34

    move/from16 v32, v2

    move-wide/from16 v2, v98

    move/from16 v34, v25

    move/from16 v25, v31

    move/from16 v31, v27

    move/from16 v27, v30

    move/from16 v30, v39

    move/from16 v100, v26

    move/from16 v26, v23

    move/from16 v23, v29

    move/from16 v29, v100

    goto :goto_520

    :cond_4e5
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    :goto_520
    const-wide/32 v35, 0x4177f

    and-long v35, v2, v35

    const-wide/32 v37, 0x41100

    const-wide/32 v39, 0x41040

    const-wide/32 v41, 0x41010

    const-wide/32 v43, 0x41008

    const-wide/32 v56, 0x41020

    const-wide/32 v58, 0x41004

    const-wide/32 v60, 0x41002

    const-wide/32 v62, 0x41001

    move/from16 v45, v8

    const/4 v8, 0x0

    const-wide/16 v19, 0x0

    cmp-long v64, v35, v19

    if-eqz v64, :cond_795

    and-long v35, v2, v62

    const/high16 v64, 0x3f800000  # 1.0f

    const/16 v65, 0x0

    cmp-long v66, v35, v19

    if-eqz v66, :cond_57e

    if-eqz v6, :cond_55d

    .line 576
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v35

    move-object/from16 v98, v35

    move/from16 v35, v11

    move-object/from16 v11, v98

    goto :goto_561

    :cond_55d
    move/from16 v35, v11

    move-object/from16 v11, v65

    .line 578
    :goto_561
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_56d

    .line 583
    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_56f

    :cond_56d
    move-object/from16 v11, v65

    .line 588
    :goto_56f
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    xor-int/lit8 v36, v11, 0x1

    if-eqz v36, :cond_57b

    const v36, 0x3e99999a  # 0.3f

    goto :goto_583

    :cond_57b
    const/high16 v36, 0x3f800000  # 1.0f

    goto :goto_583

    :cond_57e
    move/from16 v35, v11

    const/4 v11, 0x0

    const/16 v36, 0x0

    :goto_583
    and-long v66, v2, v60

    const-wide/16 v19, 0x0

    cmp-long v68, v66, v19

    if-eqz v68, :cond_5ae

    if-eqz v6, :cond_596

    .line 610
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object v66

    move/from16 v67, v11

    move-object/from16 v8, v66

    goto :goto_59a

    :cond_596
    move/from16 v67, v11

    move-object/from16 v8, v65

    :goto_59a
    const/4 v11, 0x1

    .line 612
    invoke-virtual {v1, v11, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_5a7

    .line 617
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_5a9

    :cond_5a7
    move-object/from16 v8, v65

    .line 622
    :goto_5a9
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    goto :goto_5b1

    :cond_5ae
    move/from16 v67, v11

    const/4 v8, 0x0

    :goto_5b1
    and-long v68, v2, v58

    const-wide/16 v19, 0x0

    cmp-long v11, v68, v19

    if-eqz v11, :cond_5da

    if-eqz v6, :cond_5c2

    .line 628
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object v11

    move/from16 v68, v8

    goto :goto_5c6

    :cond_5c2
    move/from16 v68, v8

    move-object/from16 v11, v65

    :goto_5c6
    const/4 v8, 0x2

    .line 630
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_5d3

    .line 635
    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_5d5

    :cond_5d3
    move-object/from16 v8, v65

    .line 640
    :goto_5d5
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    goto :goto_5dd

    :cond_5da
    move/from16 v68, v8

    const/4 v8, 0x0

    :goto_5dd
    and-long v69, v2, v43

    const-wide/16 v19, 0x0

    cmp-long v71, v69, v19

    if-eqz v71, :cond_60d

    if-eqz v6, :cond_5f0

    .line 646
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v69

    move/from16 v70, v8

    move-object/from16 v11, v69

    goto :goto_5f4

    :cond_5f0
    move/from16 v70, v8

    move-object/from16 v11, v65

    :goto_5f4
    const/4 v8, 0x3

    .line 648
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_601

    .line 653
    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_603

    :cond_601
    move-object/from16 v8, v65

    .line 658
    :goto_603
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v8, :cond_60a

    goto :goto_60f

    :cond_60a
    const/16 v8, 0x8

    goto :goto_610

    :cond_60d
    move/from16 v70, v8

    :goto_60f
    const/4 v8, 0x0

    :goto_610
    and-long v71, v2, v41

    const-wide/16 v19, 0x0

    cmp-long v11, v71, v19

    if-eqz v11, :cond_639

    if-eqz v6, :cond_621

    .line 676
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenSelected()Landroidx/databinding/ObservableField;

    move-result-object v11

    move/from16 v71, v8

    goto :goto_625

    :cond_621
    move/from16 v71, v8

    move-object/from16 v11, v65

    :goto_625
    const/4 v8, 0x4

    .line 678
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_632

    .line 683
    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_634

    :cond_632
    move-object/from16 v8, v65

    .line 688
    :goto_634
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    goto :goto_63c

    :cond_639
    move/from16 v71, v8

    const/4 v8, 0x0

    :goto_63c
    and-long v72, v2, v56

    const-wide/16 v19, 0x0

    cmp-long v11, v72, v19

    if-eqz v11, :cond_67d

    if-eqz v6, :cond_653

    .line 694
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v72

    move/from16 v73, v14

    move-object/from16 v98, v72

    move/from16 v72, v8

    move-object/from16 v8, v98

    goto :goto_659

    :cond_653
    move/from16 v72, v8

    move/from16 v73, v14

    move-object/from16 v8, v65

    :goto_659
    const/4 v14, 0x5

    .line 696
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_666

    .line 701
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_668

    :cond_666
    move-object/from16 v8, v65

    .line 706
    :goto_668
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v11, :cond_677

    if-eqz v8, :cond_673

    const-wide/high16 v74, 0x4000000000000000L  # 2.0

    goto :goto_675

    :cond_673
    const-wide/high16 v74, 0x2000000000000000L

    :goto_675
    or-long v2, v2, v74

    :cond_677
    if-eqz v8, :cond_67a

    goto :goto_681

    :cond_67a
    const/16 v8, 0x8

    goto :goto_682

    :cond_67d
    move/from16 v72, v8

    move/from16 v73, v14

    :goto_681
    const/4 v8, 0x0

    :goto_682
    and-long v74, v2, v39

    const-wide/16 v19, 0x0

    cmp-long v11, v74, v19

    if-eqz v11, :cond_6b4

    if-eqz v6, :cond_693

    .line 724
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v14

    move/from16 v74, v8

    goto :goto_697

    :cond_693
    move/from16 v74, v8

    move-object/from16 v14, v65

    :goto_697
    const/4 v8, 0x6

    .line 726
    invoke-virtual {v1, v8, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_6a4

    .line 731
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_6a6

    :cond_6a4
    move-object/from16 v8, v65

    .line 736
    :goto_6a6
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    xor-int/lit8 v14, v8, 0x1

    if-eqz v14, :cond_6b1

    const v64, 0x3e99999a  # 0.3f

    :cond_6b1
    move/from16 v16, v64

    goto :goto_6b9

    :cond_6b4
    move/from16 v74, v8

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_6b9
    and-long v75, v2, v37

    const-wide/16 v19, 0x0

    cmp-long v11, v75, v19

    if-eqz v11, :cond_6f5

    if-eqz v6, :cond_6ca

    .line 758
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v14

    move/from16 v64, v8

    goto :goto_6ce

    :cond_6ca
    move/from16 v64, v8

    move-object/from16 v14, v65

    :goto_6ce
    const/16 v8, 0x8

    .line 760
    invoke-virtual {v1, v8, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_6dc

    .line 765
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_6de

    :cond_6dc
    move-object/from16 v14, v65

    .line 770
    :goto_6de
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v11, :cond_6ef

    if-eqz v14, :cond_6ea

    const-wide/32 v75, 0x10000000

    goto :goto_6ed

    :cond_6ea
    const-wide/32 v75, 0x8000000

    :goto_6ed
    or-long v2, v2, v75

    :cond_6ef
    if-eqz v14, :cond_6f2

    goto :goto_6f9

    :cond_6f2
    const/16 v11, 0x8

    goto :goto_6fa

    :cond_6f5
    move/from16 v64, v8

    const/16 v8, 0x8

    :goto_6f9
    const/4 v11, 0x0

    :goto_6fa
    const-wide/32 v75, 0x41200

    and-long v75, v2, v75

    const-wide/16 v19, 0x0

    cmp-long v14, v75, v19

    if-eqz v14, :cond_739

    if-eqz v6, :cond_710

    .line 788
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v69

    move/from16 v75, v11

    move-object/from16 v8, v69

    goto :goto_714

    :cond_710
    move/from16 v75, v11

    move-object/from16 v8, v65

    :goto_714
    const/16 v11, 0x9

    .line 790
    invoke-virtual {v1, v11, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_722

    .line 795
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_724

    :cond_722
    move-object/from16 v8, v65

    .line 800
    :goto_724
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v14, :cond_733

    if-eqz v8, :cond_72f

    const-wide/high16 v76, 0x400000000000000L

    goto :goto_731

    :cond_72f
    const-wide/high16 v76, 0x200000000000000L

    :goto_731
    or-long v2, v2, v76

    :cond_733
    if-eqz v8, :cond_736

    goto :goto_73b

    :cond_736
    const/16 v11, 0x8

    goto :goto_73c

    :cond_739
    move/from16 v75, v11

    :goto_73b
    const/4 v11, 0x0

    :goto_73c
    const-wide/32 v76, 0x41400

    and-long v76, v2, v76

    const-wide/16 v19, 0x0

    cmp-long v8, v76, v19

    if-eqz v8, :cond_77c

    if-eqz v6, :cond_74e

    .line 818
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_750

    :cond_74e
    move-object/from16 v6, v65

    :goto_750
    const/16 v8, 0xa

    .line 820
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_75f

    .line 825
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v65, v6

    check-cast v65, Ljava/lang/Boolean;

    .line 830
    :cond_75f
    invoke-static/range {v65 .. v65}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    move/from16 v82, v8

    move/from16 v81, v11

    move/from16 v83, v16

    move/from16 v14, v36

    move/from16 v36, v64

    move/from16 v8, v67

    move/from16 v78, v68

    move/from16 v6, v70

    move/from16 v79, v71

    move/from16 v80, v72

    move/from16 v11, v74

    move/from16 v16, v75

    goto :goto_7ad

    :cond_77c
    move/from16 v81, v11

    move/from16 v83, v16

    move/from16 v14, v36

    move/from16 v36, v64

    move/from16 v8, v67

    move/from16 v78, v68

    move/from16 v6, v70

    move/from16 v79, v71

    move/from16 v80, v72

    move/from16 v11, v74

    move/from16 v16, v75

    const/16 v82, 0x0

    goto :goto_7ad

    :cond_795
    move/from16 v35, v11

    move/from16 v73, v14

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v36, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    :goto_7ad
    const-wide/32 v64, 0x7c080

    and-long v64, v2, v64

    const-wide/32 v66, 0x44080

    const-wide/32 v68, 0x48080

    const-wide/32 v70, 0x60080

    const-wide/32 v74, 0x50080

    const-wide/16 v76, 0x0

    const-wide/16 v19, 0x0

    cmp-long v72, v64, v19

    if-eqz v72, :cond_808

    and-long v64, v2, v74

    cmp-long v72, v64, v19

    if-eqz v72, :cond_7d3

    if-eqz v7, :cond_7d3

    .line 840
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v64

    goto :goto_7d5

    :cond_7d3
    move-wide/from16 v64, v76

    :goto_7d5
    and-long v84, v2, v70

    cmp-long v72, v84, v19

    if-eqz v72, :cond_7e2

    if-eqz v7, :cond_7e2

    .line 847
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v84

    goto :goto_7e4

    :cond_7e2
    move-wide/from16 v84, v76

    :goto_7e4
    and-long v86, v2, v68

    cmp-long v72, v86, v19

    if-eqz v72, :cond_7f1

    if-eqz v7, :cond_7f1

    .line 854
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v86

    goto :goto_7f3

    :cond_7f1
    move-wide/from16 v86, v76

    :goto_7f3
    and-long v88, v2, v66

    cmp-long v72, v88, v19

    if-eqz v72, :cond_7ff

    if-eqz v7, :cond_7ff

    .line 861
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v76

    :cond_7ff
    move-wide/from16 v94, v64

    move-wide/from16 v90, v76

    move-wide/from16 v96, v84

    move-wide/from16 v92, v86

    goto :goto_810

    :cond_808
    move-wide/from16 v90, v76

    move-wide/from16 v92, v90

    move-wide/from16 v94, v92

    move-wide/from16 v96, v94

    :goto_810
    and-long v62, v2, v62

    const/16 v7, 0xb

    cmp-long v64, v62, v19

    move/from16 v62, v6

    if-eqz v64, :cond_82a

    .line 868
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v6

    if-lt v6, v7, :cond_825

    .line 870
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 874
    :cond_825
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    :cond_82a
    const-wide/32 v63, 0x40000

    and-long v63, v2, v63

    const-wide/16 v19, 0x0

    cmp-long v6, v63, v19

    if-eqz v6, :cond_87b

    .line 879
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback19:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_87b
    and-long v56, v2, v56

    const-wide/16 v19, 0x0

    cmp-long v6, v56, v19

    if-eqz v6, :cond_888

    .line 893
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_888
    const-wide/32 v17, 0x40800

    and-long v17, v2, v17

    cmp-long v6, v17, v19

    if-eqz v6, :cond_9a8

    .line 898
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 899
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 900
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 901
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 902
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 903
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 904
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 905
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 906
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 907
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 908
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 909
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 910
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    move/from16 v4, v73

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 911
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 912
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    move/from16 v4, v35

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 913
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->leftToolsFramelayout:Landroid/widget/FrameLayout;

    move/from16 v14, v45

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 914
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v34

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 915
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v33

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 916
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v32

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 917
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    move/from16 v12, v54

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 918
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 919
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    move/from16 v5, v51

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 920
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v4, v31

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 921
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v8, v52

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 922
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v4, v30

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 923
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 924
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v13, v55

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 925
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v29

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 926
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v28

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 927
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v27

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 928
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v47

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 929
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 930
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v10, v53

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 931
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v48

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 932
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v26

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 933
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v25

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 934
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v46

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 935
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 936
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v49

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 937
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v50

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 938
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v24

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 939
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v23

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 940
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v22

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingEnd(Landroid/view/View;F)V

    .line 941
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 942
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v21

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_9a8
    and-long v4, v2, v58

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9b7

    .line 947
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    move/from16 v4, v62

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_9b7
    and-long v4, v2, v39

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9d1

    .line 951
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v7, :cond_9ca

    .line 953
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v83

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 957
    :cond_9ca
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v36

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    :cond_9d1
    and-long v4, v2, v37

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9e0

    .line 962
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9e0
    and-long v4, v2, v60

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9ed

    .line 967
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v78

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_9ed
    and-long v4, v2, v43

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9fa

    .line 972
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v79

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9fa
    and-long v4, v2, v41

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a07

    .line 977
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v80

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_a07
    const-wide/32 v4, 0x41200

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a16

    .line 982
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v11, v81

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a16
    const-wide/32 v4, 0x41400

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a25

    .line 987
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v8, v82

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_a25
    and-long v4, v2, v66

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a32

    .line 992
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move-wide/from16 v4, v90

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindRotate(Landroid/widget/TextView;D)V

    :cond_a32
    and-long v4, v2, v68

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a3f

    .line 997
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move-wide/from16 v4, v92

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindScale(Landroid/widget/TextView;D)V

    :cond_a3f
    and-long v4, v2, v74

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a4c

    .line 1002
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move-wide/from16 v4, v94

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_a4c
    and-long v2, v2, v70

    cmp-long v0, v2, v6

    if-eqz v0, :cond_a59

    .line 1007
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    move-wide/from16 v2, v96

    invoke-static {v0, v2, v3}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_a59
    return-void

    :catchall_a5a
    move-exception v0

    .line 330
    :try_start_a5b
    monitor-exit p0
    :try_end_a5c
    .catchall {:try_start_a5b .. :try_end_a5c} :catchall_a5a

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 106
    monitor-enter p0

    .line 107
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags_1:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    goto :goto_13

    .line 110
    :cond_10
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 108
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    .line 110
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 97
    monitor-enter p0

    const-wide/32 v0, 0x40000

    .line 98
    :try_start_4
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags_1:J

    .line 100
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 101
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 100
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    packed-switch p1, :pswitch_data_52

    const/4 p1, 0x0

    return p1

    .line 193
    :pswitch_5  #0xa
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMRevertSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_c  #0x9
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMRevertVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 189
    :pswitch_13  #0x8
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMGridVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 187
    :pswitch_1a  #0x7
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1

    .line 185
    :pswitch_21  #0x6
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMGridEnable(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_28  #0x5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMCenterPVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 181
    :pswitch_2f  #0x4
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMFullscreenSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_36  #0x3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMFullscreenVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_3d  #0x2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMCenterPSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_44  #0x1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMGridSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_4b  #0x0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->onChangeDashboardItemVMCenterPEnable(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_44  #00000001
        :pswitch_3d  #00000002
        :pswitch_36  #00000003
        :pswitch_2f  #00000004
        :pswitch_28  #00000005
        :pswitch_21  #00000006
        :pswitch_1a  #00000007
        :pswitch_13  #00000008
        :pswitch_c  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method

.method public setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 6

    const/4 v0, 0x7

    .line 160
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 161
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 162
    monitor-enter p0

    .line 163
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 165
    sget p1, Lcom/codemao/creativecenter/BR;->actor:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 166
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 164
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
    .registers 6

    .line 144
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 145
    monitor-enter p0

    .line 146
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 147
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 148
    sget p1, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 149
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 147
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPadMode(Ljava/lang/Boolean;)V
    .registers 6

    .line 136
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 137
    monitor-enter p0

    .line 138
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 140
    sget p1, Lcom/codemao/creativecenter/BR;->isPadMode:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 141
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 139
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V
    .registers 6

    .line 152
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    .line 153
    monitor-enter p0

    .line 154
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->mDirtyFlags:J

    .line 155
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 156
    sget p1, Lcom/codemao/creativecenter/BR;->self:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 157
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 155
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 117
    sget v0, Lcom/codemao/creativecenter/BR;->isPadMode:I

    if-ne v0, p1, :cond_a

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->setIsPadMode(Ljava/lang/Boolean;)V

    goto :goto_27

    .line 120
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    if-ne v0, p1, :cond_14

    .line 121
    check-cast p2, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    goto :goto_27

    .line 123
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->self:I

    if-ne v0, p1, :cond_1e

    .line 124
    check-cast p2, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    goto :goto_27

    .line 126
    :cond_1e
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_29

    .line 127
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    :goto_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method
