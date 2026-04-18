.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;
.source "CreativeLayoutStageDashboardBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback85:Landroid/view/View$OnClickListener;

.field private final mCallback86:Landroid/view/View$OnClickListener;

.field private final mCallback87:Landroid/view/View$OnClickListener;

.field private final mCallback88:Landroid/view/View$OnClickListener;

.field private final mCallback89:Landroid/view/View$OnClickListener;

.field private final mCallback90:Landroid/view/View$OnClickListener;

.field private final mCallback91:Landroid/view/View$OnClickListener;

.field private final mCallback92:Landroid/view/View$OnClickListener;

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

    .line 43
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 25

    move-object/from16 v13, p0

    const/4 v14, 0x1

    .line 46
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v15, 0x3

    aget-object v0, p3, v15

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v12, 0x2

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v11, 0x4

    aget-object v0, p3, v11

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v10, 0x5

    aget-object v0, p3, v10

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x6

    aget-object v0, p3, v9

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x7

    aget-object v0, p3, v3

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v2, 0x8

    aget-object v0, p3, v2

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v14, 0x8

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v9, v16

    const/4 v15, 0x5

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 1086
    iput-wide v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 1087
    iput-wide v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags_1:J

    .line 57
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 62
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 68
    invoke-virtual {v13, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 70
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v15}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback89:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v14}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback92:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback87:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback86:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback90:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback88:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback91:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback85:Landroid/view/View$OnClickListener;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 6

    .line 247
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 248
    monitor-enter p0

    .line 249
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 250
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 253
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->rotation:I

    if-ne p2, p1, :cond_23

    .line 254
    monitor-enter p0

    .line 255
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 256
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 259
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->scale:I

    if-ne p2, p1, :cond_35

    .line 260
    monitor-enter p0

    .line 261
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x8000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 262
    monitor-exit p0

    return v0

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw p1

    .line 265
    :cond_35
    sget p1, Lcom/codemao/creativecenter/BR;->x:I

    if-ne p2, p1, :cond_47

    .line 266
    monitor-enter p0

    .line 267
    :try_start_3a
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x10000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 268
    monitor-exit p0

    return v0

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_44

    throw p1

    .line 271
    :cond_47
    sget p1, Lcom/codemao/creativecenter/BR;->y:I

    if-ne p2, p1, :cond_59

    .line 272
    monitor-enter p0

    .line 273
    :try_start_4c
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/32 v1, 0x20000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 274
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

    .line 184
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 185
    monitor-enter p0

    .line 186
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 187
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

    .line 193
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 194
    monitor-enter p0

    .line 195
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 196
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

    .line 229
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 230
    monitor-enter p0

    .line 231
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 232
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

    .line 220
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 221
    monitor-enter p0

    .line 222
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 223
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

    .line 211
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 212
    monitor-enter p0

    .line 213
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 214
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

    .line 238
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 239
    monitor-enter p0

    .line 240
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 241
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

    .line 202
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 203
    monitor-enter p0

    .line 204
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 205
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

    .line 280
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 281
    monitor-enter p0

    .line 282
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 283
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

    .line 298
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 299
    monitor-enter p0

    .line 300
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 301
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

    .line 289
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 290
    monitor-enter p0

    .line 291
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 292
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

    packed-switch p1, :pswitch_data_68

    goto/16 :goto_66

    .line 961
    :pswitch_7  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_66

    .line 972
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideY(Landroid/view/View;)V

    goto :goto_66

    .line 1050
    :pswitch_13  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_66

    .line 1061
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideX(Landroid/view/View;)V

    goto :goto_66

    .line 1014
    :pswitch_1f  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_66

    .line 1025
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideScale(Landroid/view/View;)V

    goto :goto_66

    .line 943
    :pswitch_2b  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_66

    .line 954
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuideRotate(Landroid/view/View;)V

    goto :goto_66

    .line 1032
    :pswitch_37  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_66

    .line 1043
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickRevert(Landroid/view/View;)V

    goto :goto_66

    .line 979
    :pswitch_43  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-eqz v0, :cond_66

    .line 990
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickGuides(Landroid/view/View;)V

    goto :goto_66

    .line 997
    :pswitch_4f  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-eqz v0, :cond_66

    .line 1007
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickOritation()V

    goto :goto_66

    .line 1068
    :pswitch_5b  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    if-eqz p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    if-eqz v0, :cond_66

    .line 1079
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickCenterP(Landroid/view/View;)V

    :cond_66
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_4f  #00000002
        :pswitch_43  #00000003
        :pswitch_37  #00000004
        :pswitch_2b  #00000005
        :pswitch_1f  #00000006
        :pswitch_13  #00000007
        :pswitch_7  #00000008
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 90

    move-object/from16 v1, p0

    .line 311
    monitor-enter p0

    .line 312
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 313
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 315
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags_1:J

    .line 316
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8b6

    .line 330
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 343
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 364
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    const-wide/32 v8, 0x40800

    and-long v10, v2, v8

    cmp-long v13, v10, v4

    if-eqz v13, :cond_3b5

    .line 396
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

    const-wide/32 v10, 0x10000000

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

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x100000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x400000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x1000000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    goto :goto_d4

    :cond_79
    const-wide/32 v10, 0x80000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x200000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x800000

    or-long/2addr v2, v10

    const-wide/32 v10, 0x8000000

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

    const-wide/high16 v10, 0x8000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x80000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x200000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x800000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, 0x2000000000000000L

    or-long/2addr v2, v10

    const-wide/high16 v10, -0x8000000000000000L

    :goto_d4
    or-long/2addr v2, v10

    .line 458
    :cond_d5
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_e0

    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    goto :goto_e2

    :cond_e0
    sget v11, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    :goto_e2
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 460
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

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

    .line 462
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v0, :cond_102

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_40dp:I

    goto :goto_104

    :cond_102
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_30dp:I

    :goto_104
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 464
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v0, :cond_113

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_115

    :cond_113
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_115
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v0, :cond_128

    .line 466
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v12, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    goto :goto_134

    :cond_128
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    :goto_134
    if-eqz v0, :cond_143

    .line 468
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    goto :goto_14f

    :cond_143
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 470
    :goto_14f
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v0, :cond_15a

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    goto :goto_15c

    :cond_15a
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    :goto_15c
    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v0, :cond_16f

    .line 472
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_17b

    :cond_16f
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 474
    :goto_17b
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v0, :cond_186

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_82dp:I

    goto :goto_188

    :cond_186
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    :goto_188
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v0, :cond_19d

    .line 476
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-wide/from16 v19, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1ab

    :cond_19d
    move-wide/from16 v19, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 478
    :goto_1ab
    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v0, :cond_1b6

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    goto :goto_1b8

    :cond_1b6
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_1b8
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v0, :cond_1cd

    .line 480
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v21, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1db

    :cond_1cd
    move/from16 v21, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1db
    if-eqz v0, :cond_1ec

    .line 482
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v22, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1fa

    :cond_1ec
    move/from16 v22, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1fa
    if-eqz v0, :cond_20b

    .line 484
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v23, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_82dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_219

    :cond_20b
    move/from16 v23, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_64dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_219
    if-eqz v0, :cond_22a

    .line 486
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v24, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_238

    :cond_22a
    move/from16 v24, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_238
    if-eqz v0, :cond_249

    .line 488
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v25, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_257

    :cond_249
    move/from16 v25, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_257
    if-eqz v0, :cond_268

    .line 490
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v26, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_276

    :cond_268
    move/from16 v26, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_276
    if-eqz v0, :cond_287

    .line 492
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v27, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_18dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_295

    :cond_287
    move/from16 v27, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_295
    if-eqz v0, :cond_2a6

    .line 494
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v28, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_9dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2b4

    :cond_2a6
    move/from16 v28, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2b4
    if-eqz v0, :cond_2c5

    .line 496
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v29, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2d3

    :cond_2c5
    move/from16 v29, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2d3
    if-eqz v0, :cond_2e4

    .line 498
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v30, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_2f2

    :cond_2e4
    move/from16 v30, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_2f2
    if-eqz v0, :cond_303

    .line 500
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v31, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_311

    :cond_303
    move/from16 v31, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_311
    if-eqz v0, :cond_322

    .line 502
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v32, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_330

    :cond_322
    move/from16 v32, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_330
    if-eqz v0, :cond_341

    .line 504
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v33, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_34f

    :cond_341
    move/from16 v33, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_34f
    if-eqz v0, :cond_360

    .line 506
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v34, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_36e

    :cond_360
    move/from16 v34, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_36e
    if-eqz v0, :cond_379

    .line 508
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_80dp:I

    goto :goto_381

    :cond_379
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_52dp:I

    :goto_381
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    move/from16 v36, v3

    move/from16 v37, v4

    move/from16 v38, v8

    move/from16 v39, v10

    move/from16 v40, v13

    move v15, v14

    move/from16 v13, v24

    move/from16 v24, v25

    move/from16 v4, v26

    move/from16 v10, v27

    move/from16 v35, v28

    move/from16 v8, v31

    move/from16 v26, v34

    move/from16 v25, v0

    move/from16 v27, v5

    move v14, v9

    move v0, v11

    move v11, v12

    move/from16 v5, v30

    move/from16 v9, v32

    move v12, v2

    move-wide/from16 v2, v19

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v29

    move/from16 v22, v33

    goto :goto_3de

    :cond_3b5
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

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    :goto_3de
    const-wide/32 v28, 0x4177f

    and-long v28, v2, v28

    const-wide/32 v30, 0x41100

    const-wide/32 v32, 0x41040

    const-wide/32 v41, 0x41010

    const-wide/32 v43, 0x41008

    const-wide/32 v45, 0x41020

    const-wide/32 v47, 0x41004

    const-wide/32 v49, 0x41002

    const-wide/32 v51, 0x41001

    move/from16 v34, v15

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    cmp-long v53, v28, v17

    if-eqz v53, :cond_651

    and-long v28, v2, v51

    const/high16 v53, 0x3f800000  # 1.0f

    const/16 v54, 0x0

    cmp-long v55, v28, v17

    if-eqz v55, :cond_43c

    if-eqz v6, :cond_41b

    .line 517
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPEnable()Landroidx/databinding/ObservableField;

    move-result-object v28

    move-object/from16 v88, v28

    move/from16 v28, v14

    move-object/from16 v14, v88

    goto :goto_41f

    :cond_41b
    move/from16 v28, v14

    move-object/from16 v14, v54

    .line 519
    :goto_41f
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_42b

    .line 524
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_42d

    :cond_42b
    move-object/from16 v14, v54

    .line 529
    :goto_42d
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    xor-int/lit8 v29, v14, 0x1

    if-eqz v29, :cond_439

    const v29, 0x3e99999a  # 0.3f

    goto :goto_441

    :cond_439
    const/high16 v29, 0x3f800000  # 1.0f

    goto :goto_441

    :cond_43c
    move/from16 v28, v14

    const/4 v14, 0x0

    const/16 v29, 0x0

    :goto_441
    and-long v55, v2, v49

    const-wide/16 v17, 0x0

    cmp-long v57, v55, v17

    if-eqz v57, :cond_46c

    if-eqz v6, :cond_454

    .line 551
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPSelected()Landroidx/databinding/ObservableField;

    move-result-object v55

    move/from16 v56, v14

    move-object/from16 v15, v55

    goto :goto_458

    :cond_454
    move/from16 v56, v14

    move-object/from16 v15, v54

    :goto_458
    const/4 v14, 0x1

    .line 553
    invoke-virtual {v1, v14, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_465

    .line 558
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_467

    :cond_465
    move-object/from16 v14, v54

    .line 563
    :goto_467
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    goto :goto_46f

    :cond_46c
    move/from16 v56, v14

    const/4 v14, 0x0

    :goto_46f
    and-long v57, v2, v47

    const-wide/16 v17, 0x0

    cmp-long v15, v57, v17

    if-eqz v15, :cond_498

    if-eqz v6, :cond_480

    .line 569
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridSelected()Landroidx/databinding/ObservableField;

    move-result-object v15

    move/from16 v57, v14

    goto :goto_484

    :cond_480
    move/from16 v57, v14

    move-object/from16 v15, v54

    :goto_484
    const/4 v14, 0x2

    .line 571
    invoke-virtual {v1, v14, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_491

    .line 576
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_493

    :cond_491
    move-object/from16 v14, v54

    .line 581
    :goto_493
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    goto :goto_49b

    :cond_498
    move/from16 v57, v14

    const/4 v14, 0x0

    :goto_49b
    and-long v58, v2, v43

    const-wide/16 v17, 0x0

    cmp-long v60, v58, v17

    if-eqz v60, :cond_4cb

    if-eqz v6, :cond_4ae

    .line 587
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenVisible()Landroidx/databinding/ObservableField;

    move-result-object v58

    move/from16 v59, v14

    move-object/from16 v15, v58

    goto :goto_4b2

    :cond_4ae
    move/from16 v59, v14

    move-object/from16 v15, v54

    :goto_4b2
    const/4 v14, 0x3

    .line 589
    invoke-virtual {v1, v14, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_4bf

    .line 594
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_4c1

    :cond_4bf
    move-object/from16 v14, v54

    .line 599
    :goto_4c1
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v14, :cond_4c8

    goto :goto_4cd

    :cond_4c8
    const/16 v14, 0x8

    goto :goto_4ce

    :cond_4cb
    move/from16 v59, v14

    :goto_4cd
    const/4 v14, 0x0

    :goto_4ce
    and-long v60, v2, v41

    const-wide/16 v17, 0x0

    cmp-long v15, v60, v17

    if-eqz v15, :cond_4f7

    if-eqz v6, :cond_4df

    .line 617
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getFullscreenSelected()Landroidx/databinding/ObservableField;

    move-result-object v15

    move/from16 v60, v14

    goto :goto_4e3

    :cond_4df
    move/from16 v60, v14

    move-object/from16 v15, v54

    :goto_4e3
    const/4 v14, 0x4

    .line 619
    invoke-virtual {v1, v14, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_4f0

    .line 624
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_4f2

    :cond_4f0
    move-object/from16 v14, v54

    .line 629
    :goto_4f2
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    goto :goto_4fa

    :cond_4f7
    move/from16 v60, v14

    const/4 v14, 0x0

    :goto_4fa
    and-long v61, v2, v45

    const-wide/16 v17, 0x0

    cmp-long v15, v61, v17

    if-eqz v15, :cond_53a

    if-eqz v6, :cond_511

    .line 635
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCenterPVisible()Landroidx/databinding/ObservableField;

    move-result-object v61

    move/from16 v62, v9

    move-object/from16 v88, v61

    move/from16 v61, v14

    move-object/from16 v14, v88

    goto :goto_517

    :cond_511
    move/from16 v62, v9

    move/from16 v61, v14

    move-object/from16 v14, v54

    :goto_517
    const/4 v9, 0x5

    .line 637
    invoke-virtual {v1, v9, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_524

    .line 642
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_526

    :cond_524
    move-object/from16 v9, v54

    .line 647
    :goto_526
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v15, :cond_534

    if-eqz v9, :cond_531

    const-wide/high16 v14, 0x40000000000000L

    goto :goto_533

    :cond_531
    const-wide/high16 v14, 0x20000000000000L

    :goto_533
    or-long/2addr v2, v14

    :cond_534
    if-eqz v9, :cond_537

    goto :goto_53e

    :cond_537
    const/16 v9, 0x8

    goto :goto_53f

    :cond_53a
    move/from16 v62, v9

    move/from16 v61, v14

    :goto_53e
    const/4 v9, 0x0

    :goto_53f
    and-long v14, v2, v32

    const-wide/16 v17, 0x0

    cmp-long v63, v14, v17

    if-eqz v63, :cond_56d

    if-eqz v6, :cond_54e

    .line 665
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridEnable()Landroidx/databinding/ObservableField;

    move-result-object v14

    goto :goto_550

    :cond_54e
    move-object/from16 v14, v54

    :goto_550
    const/4 v15, 0x6

    .line 667
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_55d

    .line 672
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_55f

    :cond_55d
    move-object/from16 v14, v54

    .line 677
    :goto_55f
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    xor-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_56a

    const v53, 0x3e99999a  # 0.3f

    :cond_56a
    move/from16 v16, v53

    goto :goto_570

    :cond_56d
    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_570
    and-long v63, v2, v30

    const-wide/16 v17, 0x0

    cmp-long v15, v63, v17

    if-eqz v15, :cond_5b6

    if-eqz v6, :cond_589

    .line 699
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getGridVisible()Landroidx/databinding/ObservableField;

    move-result-object v53

    move/from16 v58, v14

    const/16 v14, 0x8

    move-object/from16 v88, v53

    move/from16 v53, v9

    move-object/from16 v9, v88

    goto :goto_591

    :cond_589
    move/from16 v53, v9

    move/from16 v58, v14

    move-object/from16 v9, v54

    const/16 v14, 0x8

    .line 701
    :goto_591
    invoke-virtual {v1, v14, v9}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_59d

    .line 706
    invoke-virtual {v9}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_59f

    :cond_59d
    move-object/from16 v9, v54

    .line 711
    :goto_59f
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v15, :cond_5b0

    if-eqz v9, :cond_5ab

    const-wide/32 v63, 0x4000000

    goto :goto_5ae

    :cond_5ab
    const-wide/32 v63, 0x2000000

    :goto_5ae
    or-long v2, v2, v63

    :cond_5b0
    if-eqz v9, :cond_5b3

    goto :goto_5bc

    :cond_5b3
    const/16 v9, 0x8

    goto :goto_5bd

    :cond_5b6
    move/from16 v53, v9

    move/from16 v58, v14

    const/16 v14, 0x8

    :goto_5bc
    const/4 v9, 0x0

    :goto_5bd
    const-wide/32 v63, 0x41200

    and-long v63, v2, v63

    const-wide/16 v17, 0x0

    cmp-long v15, v63, v17

    if-eqz v15, :cond_5fb

    if-eqz v6, :cond_5d3

    .line 729
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertVisible()Landroidx/databinding/ObservableField;

    move-result-object v63

    move/from16 v64, v9

    move-object/from16 v14, v63

    goto :goto_5d7

    :cond_5d3
    move/from16 v64, v9

    move-object/from16 v14, v54

    :goto_5d7
    const/16 v9, 0x9

    .line 731
    invoke-virtual {v1, v9, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_5e5

    .line 736
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_5e7

    :cond_5e5
    move-object/from16 v9, v54

    .line 741
    :goto_5e7
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v15, :cond_5f5

    if-eqz v9, :cond_5f2

    const-wide/high16 v14, 0x4000000000000L

    goto :goto_5f4

    :cond_5f2
    const-wide/high16 v14, 0x2000000000000L

    :goto_5f4
    or-long/2addr v2, v14

    :cond_5f5
    if-eqz v9, :cond_5f8

    goto :goto_5fd

    :cond_5f8
    const/16 v15, 0x8

    goto :goto_5fe

    :cond_5fb
    move/from16 v64, v9

    :goto_5fd
    const/4 v15, 0x0

    :goto_5fe
    const-wide/32 v65, 0x41400

    and-long v65, v2, v65

    const-wide/16 v17, 0x0

    cmp-long v9, v65, v17

    if-eqz v9, :cond_63c

    if-eqz v6, :cond_610

    .line 759
    invoke-virtual {v6}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_612

    :cond_610
    move-object/from16 v6, v54

    :goto_612
    const/16 v9, 0xa

    .line 761
    invoke-virtual {v1, v9, v6}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_621

    .line 766
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v54, v6

    check-cast v54, Ljava/lang/Boolean;

    .line 771
    :cond_621
    invoke-static/range {v54 .. v54}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    move/from16 v73, v6

    move/from16 v72, v15

    move/from16 v6, v29

    move/from16 v9, v53

    move/from16 v15, v56

    move/from16 v14, v57

    move/from16 v68, v58

    move/from16 v69, v59

    move/from16 v70, v60

    move/from16 v71, v61

    move/from16 v67, v64

    goto :goto_669

    :cond_63c
    move/from16 v72, v15

    move/from16 v6, v29

    move/from16 v9, v53

    move/from16 v15, v56

    move/from16 v14, v57

    move/from16 v68, v58

    move/from16 v69, v59

    move/from16 v70, v60

    move/from16 v71, v61

    move/from16 v67, v64

    goto :goto_667

    :cond_651
    move/from16 v62, v9

    move/from16 v28, v14

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    :goto_667
    const/16 v73, 0x0

    :goto_669
    const-wide/32 v53, 0x7c080

    and-long v53, v2, v53

    const-wide/32 v55, 0x44080

    const-wide/32 v57, 0x48080

    const-wide/32 v59, 0x60080

    const-wide/32 v63, 0x50080

    const-wide/16 v65, 0x0

    const-wide/16 v17, 0x0

    cmp-long v29, v53, v17

    if-eqz v29, :cond_6c4

    and-long v53, v2, v63

    cmp-long v29, v53, v17

    if-eqz v29, :cond_68f

    if-eqz v7, :cond_68f

    .line 781
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v53

    goto :goto_691

    :cond_68f
    move-wide/from16 v53, v65

    :goto_691
    and-long v74, v2, v59

    cmp-long v29, v74, v17

    if-eqz v29, :cond_69e

    if-eqz v7, :cond_69e

    .line 788
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v74

    goto :goto_6a0

    :cond_69e
    move-wide/from16 v74, v65

    :goto_6a0
    and-long v76, v2, v57

    cmp-long v29, v76, v17

    if-eqz v29, :cond_6ad

    if-eqz v7, :cond_6ad

    .line 795
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v76

    goto :goto_6af

    :cond_6ad
    move-wide/from16 v76, v65

    :goto_6af
    and-long v78, v2, v55

    cmp-long v29, v78, v17

    if-eqz v29, :cond_6bb

    if-eqz v7, :cond_6bb

    .line 802
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v65

    :cond_6bb
    move-wide/from16 v84, v53

    move-wide/from16 v80, v65

    move-wide/from16 v86, v74

    move-wide/from16 v82, v76

    goto :goto_6cc

    :cond_6c4
    move-wide/from16 v80, v65

    move-wide/from16 v82, v80

    move-wide/from16 v84, v82

    move-wide/from16 v86, v84

    :goto_6cc
    and-long v51, v2, v51

    const/16 v7, 0xb

    cmp-long v29, v51, v17

    if-eqz v29, :cond_6e7

    move/from16 v29, v14

    .line 809
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v14

    if-lt v14, v7, :cond_6e1

    .line 811
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v14, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 815
    :cond_6e1
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    goto :goto_6e9

    :cond_6e7
    move/from16 v29, v14

    :goto_6e9
    const-wide/32 v14, 0x40000

    and-long/2addr v14, v2

    const-wide/16 v17, 0x0

    cmp-long v6, v14, v17

    if-eqz v6, :cond_72b

    .line 820
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback85:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback87:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback86:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback88:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback89:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback90:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback91:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mCallback92:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_72b
    and-long v14, v2, v45

    const-wide/16 v17, 0x0

    cmp-long v6, v14, v17

    if-eqz v6, :cond_738

    .line 832
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_738
    const-wide/32 v14, 0x40800

    and-long/2addr v14, v2

    cmp-long v6, v14, v17

    if-eqz v6, :cond_804

    .line 837
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 838
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 839
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 840
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 841
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 842
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 843
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 844
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 845
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 846
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 847
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 848
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 849
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v62

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 850
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v9, v28

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 851
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v14, v34

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 852
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v5, v27

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 853
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 854
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v4, v26

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 855
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v13, v40

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 856
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v25

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottom(Landroid/view/View;F)V

    .line 857
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    move/from16 v4, v24

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 858
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 859
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    move/from16 v4, v23

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 860
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v22

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 861
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v21

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 862
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    move/from16 v4, v36

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 863
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v20

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 864
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v10, v39

    invoke-static {v0, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 865
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    move/from16 v4, v35

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 866
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v19

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 867
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v8, v38

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPadding(Landroid/view/View;F)V

    .line 868
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    move/from16 v4, v37

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    :cond_804
    and-long v4, v2, v49

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_813

    .line 873
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    move/from16 v4, v29

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_813
    and-long v4, v2, v32

    cmp-long v0, v4, v8

    if-eqz v0, :cond_82d

    .line 877
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v7, :cond_826

    .line 879
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 883
    :cond_826
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v68

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setEnable(Landroid/view/View;Z)V

    :cond_82d
    and-long v4, v2, v30

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_83c

    .line 888
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v67

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_83c
    and-long v4, v2, v47

    cmp-long v0, v4, v6

    if-eqz v0, :cond_849

    .line 893
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    move/from16 v4, v69

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_849
    and-long v4, v2, v43

    cmp-long v0, v4, v6

    if-eqz v0, :cond_856

    .line 898
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v70

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_856
    and-long v4, v2, v41

    cmp-long v0, v4, v6

    if-eqz v0, :cond_863

    .line 903
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    move/from16 v4, v71

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_863
    const-wide/32 v4, 0x41200

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_872

    .line 908
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v15, v72

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_872
    const-wide/32 v4, 0x41400

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_881

    .line 913
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    move/from16 v4, v73

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setSelect(Landroid/view/View;Z)V

    :cond_881
    and-long v4, v2, v55

    cmp-long v0, v4, v6

    if-eqz v0, :cond_88e

    .line 918
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    move-wide/from16 v4, v80

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindRotate(Landroid/widget/TextView;D)V

    :cond_88e
    and-long v4, v2, v57

    cmp-long v0, v4, v6

    if-eqz v0, :cond_89b

    .line 923
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    move-wide/from16 v4, v82

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindScale(Landroid/widget/TextView;D)V

    :cond_89b
    and-long v4, v2, v63

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8a8

    .line 928
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    move-wide/from16 v4, v84

    invoke-static {v0, v4, v5}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_8a8
    and-long v2, v2, v59

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8b5

    .line 933
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    move-wide/from16 v2, v86

    invoke-static {v0, v2, v3}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindTranset(Landroid/widget/TextView;D)V

    :cond_8b5
    return-void

    :catchall_8b6
    move-exception v0

    .line 316
    :try_start_8b7
    monitor-exit p0
    :try_end_8b8
    .catchall {:try_start_8b7 .. :try_end_8b8} :catchall_8b6

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags_1:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    goto :goto_13

    .line 96
    :cond_10
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 94
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    .line 96
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 83
    monitor-enter p0

    const-wide/32 v0, 0x40000

    .line 84
    :try_start_4
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags_1:J

    .line 86
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 87
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_f
    move-exception v0

    .line 86
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

    .line 179
    :pswitch_5  #0xa
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMRevertSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_c  #0x9
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMRevertVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_13  #0x8
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMGridVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_1a  #0x7
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_21  #0x6
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMGridEnable(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_28  #0x5
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMCenterPVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_2f  #0x4
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMFullscreenSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_36  #0x3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMFullscreenVisible(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_3d  #0x2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMGridSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_44  #0x1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMCenterPSelected(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_4b  #0x0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->onChangeDashboardItemVMCenterPEnable(Landroidx/databinding/ObservableField;I)Z

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

    .line 146
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 147
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 151
    sget p1, Lcom/codemao/creativecenter/BR;->actor:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 150
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
    .registers 6

    .line 130
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 134
    sget p1, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 135
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 133
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setIsPadMode(Ljava/lang/Boolean;)V
    .registers 6

    .line 122
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mIsPadMode:Ljava/lang/Boolean;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 126
    sget p1, Lcom/codemao/creativecenter/BR;->isPadMode:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 125
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setSelf(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V
    .registers 6

    .line 138
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    .line 139
    monitor-enter p0

    .line 140
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 142
    sget p1, Lcom/codemao/creativecenter/BR;->self:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 143
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 141
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 103
    sget v0, Lcom/codemao/creativecenter/BR;->isPadMode:I

    if-ne v0, p1, :cond_a

    .line 104
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->setIsPadMode(Ljava/lang/Boolean;)V

    goto :goto_27

    .line 106
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->dashboardItemVM:I

    if-ne v0, p1, :cond_14

    .line 107
    check-cast p2, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V

    goto :goto_27

    .line 109
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->self:I

    if-ne v0, p1, :cond_1e

    .line 110
    check-cast p2, Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->setSelf(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    goto :goto_27

    .line 112
    :cond_1e
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_29

    .line 113
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    :goto_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method
