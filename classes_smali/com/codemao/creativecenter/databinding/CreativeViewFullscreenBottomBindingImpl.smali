.class public Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;
.source "CreativeViewFullscreenBottomBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback55:Landroid/view/View$OnClickListener;

.field private final mCallback56:Landroid/view/View$OnClickListener;

.field private final mCallback57:Landroid/view/View$OnClickListener;

.field private final mCallback58:Landroid/view/View$OnClickListener;

.field private final mCallback59:Landroid/view/View$OnClickListener;

.field private final mCallback60:Landroid/view/View$OnClickListener;

.field private final mCallback61:Landroid/view/View$OnClickListener;

.field private final mCallback62:Landroid/view/View$OnClickListener;

.field private final mCallback63:Landroid/view/View$OnClickListener;

.field private final mCallback64:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 47
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 26

    move-object/from16 v15, p0

    const/4 v14, 0x3

    .line 50
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v13, 0x4

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v12, 0x2

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v11, 0xa

    aget-object v0, p3, v11

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v10, 0x5

    aget-object v0, p3, v10

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const/4 v2, 0x6

    aget-object v0, p3, v2

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v0, p3, v1

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v19, p3, v0

    check-cast v19, Landroid/widget/TextView;

    const/16 v3, 0x9

    aget-object v20, p3, v3

    check-cast v20, Landroid/widget/TextView;

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    invoke-direct/range {v0 .. v14}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 1165
    iput-wide v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 1166
    iput-wide v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags_1:J

    .line 63
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 69
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 76
    invoke-virtual {v15, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 78
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback55:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback56:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0xa

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback64:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback59:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x8

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback62:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x9

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback63:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback57:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback60:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback58:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback61:Landroid/view/View$OnClickListener;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 6

    .line 257
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 258
    monitor-enter p0

    .line 259
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 260
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 263
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->rotation:I

    if-ne p2, p1, :cond_23

    .line 264
    monitor-enter p0

    .line 265
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 266
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 269
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->scale:I

    if-ne p2, p1, :cond_35

    .line 270
    monitor-enter p0

    .line 271
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x8000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 272
    monitor-exit p0

    return v0

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw p1

    .line 275
    :cond_35
    sget p1, Lcom/codemao/creativecenter/BR;->x:I

    if-ne p2, p1, :cond_47

    .line 276
    monitor-enter p0

    .line 277
    :try_start_3a
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x10000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 278
    monitor-exit p0

    return v0

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw p1

    .line 281
    :cond_47
    sget p1, Lcom/codemao/creativecenter/BR;->y:I

    if-ne p2, p1, :cond_59

    .line 282
    monitor-enter p0

    .line 283
    :try_start_4c
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x20000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 284
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

    .line 194
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 195
    monitor-enter p0

    .line 196
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 197
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

    .line 203
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 204
    monitor-enter p0

    .line 205
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 206
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

    .line 239
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 240
    monitor-enter p0

    .line 241
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 242
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

    .line 230
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 231
    monitor-enter p0

    .line 232
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 233
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

    .line 221
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 222
    monitor-enter p0

    .line 223
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 224
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

    .line 248
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 249
    monitor-enter p0

    .line 250
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 251
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

    .line 212
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 213
    monitor-enter p0

    .line 214
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 215
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

    .line 290
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 291
    monitor-enter p0

    .line 292
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 293
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

    .line 308
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 309
    monitor-enter p0

    .line 310
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 311
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

    .line 299
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 300
    monitor-enter p0

    .line 301
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 302
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

    .line 1021
    :pswitch_7  #0xa
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_80

    .line 1032
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickRevert(Landroid/view/View;)V

    goto/16 :goto_80

    .line 1075
    :pswitch_14  #0x9
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_80

    .line 1086
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickUpload(Landroid/view/View;)V

    goto/16 :goto_80

    .line 1057
    :pswitch_21  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_80

    .line 1068
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideY(Landroid/view/View;)V

    goto :goto_80

    .line 1147
    :pswitch_2d  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_80

    .line 1158
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideX(Landroid/view/View;)V

    goto :goto_80

    .line 1111
    :pswitch_39  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    if-eqz v0, :cond_80

    .line 1122
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideScale(Landroid/view/View;)V

    goto :goto_80

    .line 1039
    :pswitch_45  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    if-eqz v0, :cond_80

    .line 1050
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuideRotate(Landroid/view/View;)V

    goto :goto_80

    .line 1129
    :pswitch_51  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    if-eqz v0, :cond_80

    .line 1140
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickGuides(Landroid/view/View;)V

    goto :goto_80

    .line 1093
    :pswitch_5d  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    if-eqz v0, :cond_80

    .line 1104
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickCenterP(Landroid/view/View;)V

    goto :goto_80

    .line 1004
    :pswitch_69  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    if-eqz v0, :cond_80

    .line 1014
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->clickOritation()V

    goto :goto_80

    .line 986
    :pswitch_75  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    if-eqz p1, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    if-eqz v0, :cond_80

    .line 997
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
    .registers 94

    move-object/from16 v1, p0

    .line 321
    monitor-enter p0

    .line 322
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 323
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 325
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags_1:J

    .line 326
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_99f

    .line 343
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 357
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 378
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    const-wide/32 v8, 0x40800

    and-long v10, v2, v8

    cmp-long v13, v10, v4

    if-eqz v13, :cond_45b

    .line 411
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v13, :cond_d1

    if-eqz v0, :cond_77

    const-wide/32 v10, 0x100000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x400000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x1000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x4000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x10000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x40000000

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

    const-wide/high16 v10, 0x400000000000000L

    goto :goto_d0

    :cond_77
    const-wide/32 v10, 0x80000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x200000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x800000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x2000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x8000000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x20000000

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

    const-wide/high16 v10, 0x200000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, -0x8000000000000000L

    :goto_d0
    or-long/2addr v2, v10

    .line 483
    :cond_d1
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_dc

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    goto :goto_de

    :cond_dc
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    :goto_de
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 485
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    if-eqz v0, :cond_ed

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    goto :goto_ef

    :cond_ed
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_20dp:I

    :goto_ef
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 487
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v0, :cond_fe

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_100

    :cond_fe
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_100
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 489
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v0, :cond_10f

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_111

    :cond_10f
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_111
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v0, :cond_124

    .line 491
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_80dp:I

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    goto :goto_130

    :cond_124
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_74dp:I

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    :goto_130
    if-eqz v0, :cond_13f

    .line 493
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    goto :goto_14b

    :cond_13f
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_30dp:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 495
    :goto_14b
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_156

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    goto :goto_158

    :cond_156
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    :goto_158
    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v0, :cond_16b

    .line 497
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_94dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_177

    :cond_16b
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 499
    :goto_177
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_182

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    goto :goto_184

    :cond_182
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    :goto_184
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v0, :cond_199

    .line 501
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-wide/from16 v19, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1a7

    :cond_199
    move-wide/from16 v19, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 503
    :goto_1a7
    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1b2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    goto :goto_1b4

    :cond_1b2
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    :goto_1b4
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v0, :cond_1c9

    .line 505
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v21, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1d7

    :cond_1c9
    move/from16 v21, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1d7
    if-eqz v0, :cond_1e8

    .line 507
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v22, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1f6

    :cond_1e8
    move/from16 v22, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1f6
    if-eqz v0, :cond_207

    .line 509
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v23, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_215

    :cond_207
    move/from16 v23, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_215
    if-eqz v0, :cond_226

    .line 511
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v24, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_234

    :cond_226
    move/from16 v24, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_234
    if-eqz v0, :cond_245

    .line 513
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v25, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_253

    :cond_245
    move/from16 v25, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_253
    if-eqz v0, :cond_264

    .line 515
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v26, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_272

    :cond_264
    move/from16 v26, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_272
    if-eqz v0, :cond_283

    .line 517
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v27, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_291

    :cond_283
    move/from16 v27, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_291
    if-eqz v0, :cond_2a2

    .line 519
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v28, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2b0

    :cond_2a2
    move/from16 v28, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2b0
    if-eqz v0, :cond_2c1

    .line 521
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v29, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2cf

    :cond_2c1
    move/from16 v29, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2cf
    if-eqz v0, :cond_2e0

    .line 523
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v30, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2ee

    :cond_2e0
    move/from16 v30, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2ee
    if-eqz v0, :cond_2ff

    .line 525
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v31, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_30d

    :cond_2ff
    move/from16 v31, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_30d
    if-eqz v0, :cond_31e

    .line 527
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v32, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_50dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_32c

    :cond_31e
    move/from16 v32, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_32c
    if-eqz v0, :cond_33d

    .line 529
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v33, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_34b

    :cond_33d
    move/from16 v33, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_34b
    if-eqz v0, :cond_35c

    .line 531
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v34, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_36a

    :cond_35c
    move/from16 v34, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_36a
    if-eqz v0, :cond_37b

    .line 533
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v35, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_389

    :cond_37b
    move/from16 v35, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_389
    if-eqz v0, :cond_39a

    .line 535
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v36, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3a8

    :cond_39a
    move/from16 v36, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3a8
    if-eqz v0, :cond_3b9

    .line 537
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v37, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3c7

    :cond_3b9
    move/from16 v37, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3c7
    if-eqz v0, :cond_3d8

    .line 539
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v38, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_3e6

    :cond_3d8
    move/from16 v38, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_3e6
    if-eqz v0, :cond_3f7

    .line 541
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v39, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_405

    :cond_3f7
    move/from16 v39, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_405
    if-eqz v0, :cond_410

    .line 543
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_418

    :cond_410
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    :goto_418
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move/from16 v41, v3

    move v15, v4

    move v4, v5

    move/from16 v42, v8

    move/from16 v43, v9

    move/from16 v44, v10

    move/from16 v45, v12

    move/from16 v46, v13

    move v12, v14

    move/from16 v13, v21

    move/from16 v40, v28

    move/from16 v5, v31

    move/from16 v14, v32

    move/from16 v21, v34

    move/from16 v8, v36

    move/from16 v9, v37

    move/from16 v10, v38

    move/from16 v31, v2

    move-wide/from16 v2, v19

    move/from16 v19, v23

    move/from16 v20, v24

    move/from16 v28, v27

    move/from16 v23, v35

    move/from16 v24, v39

    move/from16 v27, v0

    move v0, v11

    move/from16 v11, v30

    move/from16 v30, v33

    move/from16 v92, v26

    move/from16 v26, v22

    move/from16 v22, v25

    move/from16 v25, v29

    move/from16 v29, v92

    goto :goto_48e

    :cond_45b
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

    const/16 v19, 0x0

    const/16 v20, 0x0

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

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    :goto_48e
    const-wide/32 v32, 0x4177f

    and-long v32, v2, v32

    const-wide/32 v34, 0x41100

    const-wide/32 v36, 0x41040

    const-wide/32 v38, 0x41010

    const-wide/32 v47, 0x41008

    const-wide/32 v49, 0x41020

    const-wide/32 v51, 0x41004

    const-wide/32 v53, 0x41002

    const-wide/32 v55, 0x41001

    move/from16 v57, v5

    const/4 v5, 0x0

    const-wide/16 v17, 0x0

    cmp-long v58, v32, v17

    if-eqz v58, :cond_707

    and-long v32, v2, v55

    const/high16 v58, 0x3f800000  # 1.0f

    const/16 v59, 0x0

    cmp-long v60, v32, v17

    if-eqz v60, :cond_4ec

    if-eqz v6, :cond_4cb

    .line 552
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v32

    move-object/from16 v92, v32

    move/from16 v32, v4

    move-object/from16 v4, v92

    goto :goto_4cf

    :cond_4cb
    move/from16 v32, v4

    move-object/from16 v4, v59

    .line 554
    :goto_4cf
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_4db

    .line 559
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_4dd

    :cond_4db
    move-object/from16 v4, v59

    .line 564
    :goto_4dd
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    xor-int/lit8 v33, v4, 0x1

    if-eqz v33, :cond_4e9

    const v33, 0x3e99999a  # 0.3f

    goto :goto_4f1

    :cond_4e9
    const/high16 v33, 0x3f800000  # 1.0f

    goto :goto_4f1

    :cond_4ec
    move/from16 v32, v4

    const/4 v4, 0x0

    const/16 v33, 0x0

    :goto_4f1
    and-long v60, v2, v53

    const-wide/16 v17, 0x0

    cmp-long v62, v60, v17

    if-eqz v62, :cond_51c

    if-eqz v6, :cond_504

    .line 586
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object v60

    move/from16 v61, v4

    move-object/from16 v5, v60

    goto :goto_508

    :cond_504
    move/from16 v61, v4

    move-object/from16 v5, v59

    :goto_508
    const/4 v4, 0x1

    .line 588
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_515

    .line 593
    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_517

    :cond_515
    move-object/from16 v4, v59

    .line 598
    :goto_517
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    goto :goto_51f

    :cond_51c
    move/from16 v61, v4

    const/4 v4, 0x0

    :goto_51f
    and-long v62, v2, v51

    const-wide/16 v17, 0x0

    cmp-long v5, v62, v17

    if-eqz v5, :cond_548

    if-eqz v6, :cond_530

    .line 604
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object v5

    move/from16 v62, v4

    goto :goto_534

    :cond_530
    move/from16 v62, v4

    move-object/from16 v5, v59

    :goto_534
    const/4 v4, 0x2

    .line 606
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_541

    .line 611
    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_543

    :cond_541
    move-object/from16 v4, v59

    .line 616
    :goto_543
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    goto :goto_54b

    :cond_548
    move/from16 v62, v4

    const/4 v4, 0x0

    :goto_54b
    and-long v63, v2, v47

    const-wide/16 v17, 0x0

    cmp-long v65, v63, v17

    if-eqz v65, :cond_57b

    if-eqz v6, :cond_55e

    .line 622
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v63

    move/from16 v64, v4

    move-object/from16 v5, v63

    goto :goto_562

    :cond_55e
    move/from16 v64, v4

    move-object/from16 v5, v59

    :goto_562
    const/4 v4, 0x3

    .line 624
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_56f

    .line 629
    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_571

    :cond_56f
    move-object/from16 v4, v59

    .line 634
    :goto_571
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_578

    goto :goto_57d

    :cond_578
    const/16 v4, 0x8

    goto :goto_57e

    :cond_57b
    move/from16 v64, v4

    :goto_57d
    const/4 v4, 0x0

    :goto_57e
    and-long v65, v2, v38

    const-wide/16 v17, 0x0

    cmp-long v5, v65, v17

    if-eqz v5, :cond_5a7

    if-eqz v6, :cond_58f

    .line 652
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenSelected()Landroidx/databinding/ObservableField;

    move-result-object v5

    move/from16 v65, v4

    goto :goto_593

    :cond_58f
    move/from16 v65, v4

    move-object/from16 v5, v59

    :goto_593
    const/4 v4, 0x4

    .line 654
    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_5a0

    .line 659
    invoke-virtual {v5}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_5a2

    :cond_5a0
    move-object/from16 v4, v59

    .line 664
    :goto_5a2
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    goto :goto_5aa

    :cond_5a7
    move/from16 v65, v4

    const/4 v4, 0x0

    :goto_5aa
    and-long v66, v2, v49

    const-wide/16 v17, 0x0

    cmp-long v5, v66, v17

    if-eqz v5, :cond_5eb

    if-eqz v6, :cond_5c1

    .line 670
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v66

    move/from16 v67, v10

    move-object/from16 v92, v66

    move/from16 v66, v4

    move-object/from16 v4, v92

    goto :goto_5c7

    :cond_5c1
    move/from16 v66, v4

    move/from16 v67, v10

    move-object/from16 v4, v59

    :goto_5c7
    const/4 v10, 0x5

    .line 672
    invoke-virtual {v1, v10, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_5d4

    .line 677
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_5d6

    :cond_5d4
    move-object/from16 v4, v59

    .line 682
    :goto_5d6
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v5, :cond_5e5

    if-eqz v4, :cond_5e1

    const-wide/high16 v68, 0x4000000000000000L  # 2.0

    goto :goto_5e3

    :cond_5e1
    const-wide/high16 v68, 0x2000000000000000L

    :goto_5e3
    or-long v2, v2, v68

    :cond_5e5
    if-eqz v4, :cond_5e8

    goto :goto_5ef

    :cond_5e8
    const/16 v4, 0x8

    goto :goto_5f0

    :cond_5eb
    move/from16 v66, v4

    move/from16 v67, v10

    :goto_5ef
    const/4 v4, 0x0

    :goto_5f0
    and-long v68, v2, v36

    const-wide/16 v17, 0x0

    cmp-long v5, v68, v17

    if-eqz v5, :cond_622

    if-eqz v6, :cond_601

    .line 700
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v10

    move/from16 v68, v4

    goto :goto_605

    :cond_601
    move/from16 v68, v4

    move-object/from16 v10, v59

    :goto_605
    const/4 v4, 0x6

    .line 702
    invoke-virtual {v1, v4, v10}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_612

    .line 707
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_614

    :cond_612
    move-object/from16 v4, v59

    .line 712
    :goto_614
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    xor-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_61f

    const v58, 0x3e99999a  # 0.3f

    :cond_61f
    move/from16 v16, v58

    goto :goto_627

    :cond_622
    move/from16 v68, v4

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_627
    and-long v69, v2, v34

    const-wide/16 v17, 0x0

    cmp-long v5, v69, v17

    if-eqz v5, :cond_667

    if-eqz v6, :cond_638

    .line 734
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v10

    move/from16 v58, v4

    goto :goto_63c

    :cond_638
    move/from16 v58, v4

    move-object/from16 v10, v59

    :goto_63c
    const/16 v4, 0x8

    .line 736
    invoke-virtual {v1, v4, v10}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_64a

    .line 741
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_64c

    :cond_64a
    move-object/from16 v10, v59

    .line 746
    :goto_64c
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v5, :cond_661

    if-eqz v10, :cond_65a

    const-wide v69, 0x100000000L

    goto :goto_65f

    :cond_65a
    const-wide v69, 0x80000000L

    :goto_65f
    or-long v2, v2, v69

    :cond_661
    if-eqz v10, :cond_664

    goto :goto_66b

    :cond_664
    const/16 v5, 0x8

    goto :goto_66c

    :cond_667
    move/from16 v58, v4

    const/16 v4, 0x8

    :goto_66b
    const/4 v5, 0x0

    :goto_66c
    const-wide/32 v69, 0x41200

    and-long v69, v2, v69

    const-wide/16 v17, 0x0

    cmp-long v10, v69, v17

    if-eqz v10, :cond_6ab

    if-eqz v6, :cond_682

    .line 764
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v63

    move/from16 v69, v5

    move-object/from16 v4, v63

    goto :goto_686

    :cond_682
    move/from16 v69, v5

    move-object/from16 v4, v59

    :goto_686
    const/16 v5, 0x9

    .line 766
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_694

    .line 771
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_696

    :cond_694
    move-object/from16 v4, v59

    .line 776
    :goto_696
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v10, :cond_6a5

    if-eqz v4, :cond_6a1

    const-wide/high16 v70, 0x1000000000000000L

    goto :goto_6a3

    :cond_6a1
    const-wide/high16 v70, 0x800000000000000L

    :goto_6a3
    or-long v2, v2, v70

    :cond_6a5
    if-eqz v4, :cond_6a8

    goto :goto_6ad

    :cond_6a8
    const/16 v5, 0x8

    goto :goto_6ae

    :cond_6ab
    move/from16 v69, v5

    :goto_6ad
    const/4 v5, 0x0

    :goto_6ae
    const-wide/32 v70, 0x41400

    and-long v70, v2, v70

    const-wide/16 v17, 0x0

    cmp-long v4, v70, v17

    if-eqz v4, :cond_6ee

    if-eqz v6, :cond_6c0

    .line 794
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object v4

    goto :goto_6c2

    :cond_6c0
    move-object/from16 v4, v59

    :goto_6c2
    const/16 v6, 0xa

    .line 796
    invoke-virtual {v1, v6, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_6d1

    .line 801
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v59, v4

    check-cast v59, Ljava/lang/Boolean;

    .line 806
    :cond_6d1
    invoke-static/range {v59 .. v59}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    move/from16 v76, v4

    move/from16 v75, v5

    move/from16 v77, v16

    move/from16 v10, v33

    move/from16 v33, v58

    move/from16 v5, v61

    move/from16 v4, v62

    move/from16 v72, v64

    move/from16 v73, v65

    move/from16 v74, v66

    move/from16 v6, v68

    move/from16 v16, v69

    goto :goto_71f

    :cond_6ee
    move/from16 v75, v5

    move/from16 v77, v16

    move/from16 v10, v33

    move/from16 v33, v58

    move/from16 v5, v61

    move/from16 v4, v62

    move/from16 v72, v64

    move/from16 v73, v65

    move/from16 v74, v66

    move/from16 v6, v68

    move/from16 v16, v69

    const/16 v76, 0x0

    goto :goto_71f

    :cond_707
    move/from16 v32, v4

    move/from16 v67, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v33, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    :goto_71f
    const-wide/32 v58, 0x7c080

    and-long v58, v2, v58

    const-wide/32 v60, 0x44080

    const-wide/32 v62, 0x48080

    const-wide/32 v64, 0x60080

    const-wide/32 v68, 0x50080

    const-wide/16 v70, 0x0

    const-wide/16 v17, 0x0

    cmp-long v66, v58, v17

    if-eqz v66, :cond_77a

    and-long v58, v2, v68

    cmp-long v66, v58, v17

    if-eqz v66, :cond_745

    if-eqz v7, :cond_745

    .line 816
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v58

    goto :goto_747

    :cond_745
    move-wide/from16 v58, v70

    :goto_747
    and-long v78, v2, v64

    cmp-long v66, v78, v17

    if-eqz v66, :cond_754

    if-eqz v7, :cond_754

    .line 823
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v78

    goto :goto_756

    :cond_754
    move-wide/from16 v78, v70

    :goto_756
    and-long v80, v2, v62

    cmp-long v66, v80, v17

    if-eqz v66, :cond_763

    if-eqz v7, :cond_763

    .line 830
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v80

    goto :goto_765

    :cond_763
    move-wide/from16 v80, v70

    :goto_765
    and-long v82, v2, v60

    cmp-long v66, v82, v17

    if-eqz v66, :cond_771

    if-eqz v7, :cond_771

    .line 837
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v70

    :cond_771
    move-wide/from16 v88, v58

    move-wide/from16 v84, v70

    move-wide/from16 v90, v78

    move-wide/from16 v86, v80

    goto :goto_782

    :cond_77a
    move-wide/from16 v84, v70

    move-wide/from16 v86, v84

    move-wide/from16 v88, v86

    move-wide/from16 v90, v88

    :goto_782
    and-long v55, v2, v55

    const/16 v7, 0xb

    cmp-long v58, v55, v17

    move/from16 v55, v4

    if-eqz v58, :cond_79c

    .line 844
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v4

    if-lt v4, v7, :cond_797

    .line 846
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 850
    :cond_797
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    :cond_79c
    const-wide/32 v4, 0x40000

    and-long/2addr v4, v2

    const-wide/16 v17, 0x0

    cmp-long v10, v4, v17

    if-eqz v10, :cond_7ec

    .line 855
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback57:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback58:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback56:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback64:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback63:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback55:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback59:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback60:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback61:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mCallback62:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7ec
    and-long v4, v2, v49

    const-wide/16 v17, 0x0

    cmp-long v10, v4, v17

    if-eqz v10, :cond_7f9

    .line 869
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7f9
    const-wide/32 v4, 0x40800

    and-long/2addr v4, v2

    cmp-long v6, v4, v17

    if-eqz v6, :cond_8ed

    .line 874
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v4, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 875
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v4, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 876
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 877
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 878
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 879
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 880
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 881
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 882
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 883
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 884
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 885
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v67

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 886
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v5, v32

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 887
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v4, v57

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 888
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 889
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v4, v31

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 890
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    move/from16 v4, v30

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 891
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    move/from16 v13, v46

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 892
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 893
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    move/from16 v4, v29

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 894
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v8, v42

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 895
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v28

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 896
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 897
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v12, v45

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 898
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    move/from16 v9, v43

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 899
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    move/from16 v4, v27

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 900
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 901
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    move/from16 v4, v26

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 902
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v4, v25

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 903
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v24

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 904
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v23

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 905
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v22

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 906
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v40

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 907
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v10, v44

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 908
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v21

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 909
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v20

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 910
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v41

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 911
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v19

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_8ed
    and-long v4, v2, v53

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_8fc

    .line 916
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    move/from16 v4, v55

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_8fc
    and-long v4, v2, v36

    cmp-long v0, v4, v8

    if-eqz v0, :cond_916

    .line 920
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v7, :cond_90f

    .line 922
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v77

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 926
    :cond_90f
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v33

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    :cond_916
    and-long v4, v2, v34

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_925

    .line 931
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_925
    and-long v4, v2, v51

    cmp-long v0, v4, v6

    if-eqz v0, :cond_932

    .line 936
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v72

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_932
    and-long v4, v2, v47

    cmp-long v0, v4, v6

    if-eqz v0, :cond_93f

    .line 941
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v73

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_93f
    and-long v4, v2, v38

    cmp-long v0, v4, v6

    if-eqz v0, :cond_94c

    .line 946
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v74

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_94c
    const-wide/32 v4, 0x41200

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_95b

    .line 951
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v5, v75

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_95b
    const-wide/32 v4, 0x41400

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_96a

    .line 956
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v4, v76

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_96a
    and-long v4, v2, v60

    cmp-long v0, v4, v6

    if-eqz v0, :cond_977

    .line 961
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    move-wide/from16 v4, v84

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindRotate(Landroid/widget/TextView;D)V

    :cond_977
    and-long v4, v2, v62

    cmp-long v0, v4, v6

    if-eqz v0, :cond_984

    .line 966
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    move-wide/from16 v4, v86

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindScale(Landroid/widget/TextView;D)V

    :cond_984
    and-long v4, v2, v68

    cmp-long v0, v4, v6

    if-eqz v0, :cond_991

    .line 971
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    move-wide/from16 v4, v88

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_991
    and-long v2, v2, v64

    cmp-long v0, v2, v6

    if-eqz v0, :cond_99e

    .line 976
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

    move-wide/from16 v2, v90

    invoke-static {v0, v2, v3}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_99e
    return-void

    :catchall_99f
    move-exception v0

    .line 326
    :try_start_9a0
    monitor-exit p0
    :try_end_9a1
    .catchall {:try_start_9a0 .. :try_end_9a1} :catchall_99f

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 102
    monitor-enter p0

    .line 103
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags_1:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    goto :goto_13

    .line 106
    :cond_10
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 104
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    .line 106
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 93
    monitor-enter p0

    const-wide/32 v0, 0x40000

    .line 94
    :try_start_4
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags_1:J

    .line 96
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 97
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 96
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

    .line 189
    :pswitch_5  #0xa
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMRevertSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 187
    :pswitch_c  #0x9
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMRevertVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 185
    :pswitch_13  #0x8
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMGridVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_1a  #0x7
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1

    .line 181
    :pswitch_21  #0x6
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMGridEnable(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_28  #0x5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMCenterPVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_2f  #0x4
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMFullscreenSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_36  #0x3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMFullscreenVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_3d  #0x2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMGridSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_44  #0x1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMCenterPSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_4b  #0x0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->onChangeDashboardItemVMCenterPEnable(Landroidx/databinding/ObservableField;I)Z

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

    .line 156
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 157
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 160
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 161
    sget p1, Lcom/codemao/creativecenter/BR;->actor:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 162
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 160
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
    .registers 6

    .line 140
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 141
    monitor-enter p0

    .line 142
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 143
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 144
    sget p1, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 145
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 143
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPadMode(Ljava/lang/Boolean;)V
    .registers 6

    .line 132
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 133
    monitor-enter p0

    .line 134
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 136
    sget p1, Lcom/codemao/creativecenter/BR;->isPadMode:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 137
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 135
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V
    .registers 6

    .line 148
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 152
    sget p1, Lcom/codemao/creativecenter/BR;->self:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 153
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 151
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 113
    sget v0, Lcom/codemao/creativecenter/BR;->isPadMode:I

    if-ne v0, p1, :cond_a

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->setIsPadMode(Ljava/lang/Boolean;)V

    goto :goto_27

    .line 116
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    if-ne v0, p1, :cond_14

    .line 117
    check-cast p2, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    goto :goto_27

    .line 119
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->self:I

    if-ne v0, p1, :cond_1e

    .line 120
    check-cast p2, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V

    goto :goto_27

    .line 122
    :cond_1e
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_29

    .line 123
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    :goto_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method
