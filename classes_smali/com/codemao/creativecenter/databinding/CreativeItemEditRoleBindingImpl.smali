.class public Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;
.source "CreativeItemEditRoleBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback68:Landroid/view/View$OnClickListener;

.field private final mCallback69:Landroid/view/View$OnClickListener;

.field private final mCallback70:Landroid/view/View$OnClickListener;

.field private final mCallback71:Landroid/view/View$OnClickListener;

.field private final mCallback72:Landroid/view/View$OnClickListener;

.field private final mCallback73:Landroid/view/View$OnClickListener;

.field private final mCallback74:Landroid/view/View$OnClickListener;

.field private final mCallback75:Landroid/view/View$OnClickListener;

.field private final mCallback76:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private final mboundView5:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->move_view_bg:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->group2:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 47
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 29

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    .line 50
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v15, 0x8

    aget-object v5, p3, v15

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x14

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    const/16 v7, 0xd

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0xf

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageView;

    const/16 v9, 0xc

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x11

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0xa

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v14, 0x7

    aget-object v12, p3, v14

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0xb

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/ImageView;

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ProgressBar;

    move-object/from16 v14, v16

    const/16 v16, 0x10

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v15, v16

    const/4 v3, 0x3

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v17, p3, v3

    check-cast v17, Landroid/widget/ImageView;

    const/16 v18, 0x12

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v19, 0x13

    aget-object v19, p3, v19

    check-cast v19, Landroid/view/View;

    const/4 v3, 0x4

    aget-object v20, p3, v3

    check-cast v20, Landroid/widget/LinearLayout;

    const/16 v3, 0x9

    aget-object v21, p3, v3

    check-cast v21, Landroid/widget/TextView;

    const/4 v3, 0x6

    aget-object v22, p3, v3

    check-cast v22, Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v23, p3, v3

    check-cast v23, Landroid/view/View;

    const/16 v24, 0x1

    move/from16 v3, v24

    invoke-direct/range {v0 .. v23}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 915
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 916
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags_1:J

    .line 72
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->desLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 86
    aget-object v3, p3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mboundView5:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v3, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->viewBg:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 92
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 94
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback70:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback68:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback71:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback74:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback76:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback75:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback69:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v1, v2, v0}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback72:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback73:Landroid/view/View$OnClickListener;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 6

    .line 189
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 190
    monitor-enter p0

    .line 191
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 192
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 195
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, p1, :cond_23

    .line 196
    monitor-enter p0

    .line 197
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 198
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 201
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->name:I

    if-ne p2, p1, :cond_34

    .line 202
    monitor-enter p0

    .line 203
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 204
    monitor-exit p0

    return v0

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw p1

    .line 207
    :cond_34
    sget p1, Lcom/codemao/creativecenter/BR;->locked:I

    if-ne p2, p1, :cond_45

    .line 208
    monitor-enter p0

    .line 209
    :try_start_39
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 210
    monitor-exit p0

    return v0

    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw p1

    .line 213
    :cond_45
    sget p1, Lcom/codemao/creativecenter/BR;->editStatus:I

    if-ne p2, p1, :cond_56

    .line 214
    monitor-enter p0

    .line 215
    :try_start_4a
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 216
    monitor-exit p0

    return v0

    :catchall_53
    move-exception p1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw p1

    .line 219
    :cond_56
    sget p1, Lcom/codemao/creativecenter/BR;->uploading:I

    if-ne p2, p1, :cond_67

    .line 220
    monitor-enter p0

    .line 221
    :try_start_5b
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 222
    monitor-exit p0

    return v0

    :catchall_64
    move-exception p1

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    throw p1

    :cond_67
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_88

    goto/16 :goto_86

    .line 814
    :pswitch_7  #0x9
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 816
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    if-eqz p2, :cond_86

    .line 828
    invoke-interface {v1, p1, v0}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDisplay(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_86

    .line 835
    :pswitch_16  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 837
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    if-eqz p2, :cond_86

    .line 848
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickLock(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_86

    .line 794
    :pswitch_25  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 796
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    :goto_2d
    if-eqz p2, :cond_86

    .line 807
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickRename(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 895
    :pswitch_33  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 897
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    if-eqz p2, :cond_86

    .line 908
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickCopy(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 875
    :pswitch_41  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 877
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    if-eqz p2, :cond_86

    .line 888
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickCollect(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 774
    :pswitch_4f  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 776
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_56

    goto :goto_57

    :cond_56
    const/4 p2, 0x0

    :goto_57
    if-eqz p2, :cond_86

    .line 787
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickCollect(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 734
    :pswitch_5d  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 736
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_64
    const/4 p2, 0x0

    :goto_65
    if-eqz p2, :cond_86

    .line 747
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDel(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 855
    :pswitch_6b  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 857
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_72

    goto :goto_73

    :cond_72
    const/4 p2, 0x0

    :goto_73
    if-eqz p2, :cond_86

    .line 868
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickMore(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_86

    .line 754
    :pswitch_79  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 756
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 p2, 0x0

    :goto_81
    if-eqz p2, :cond_86

    .line 767
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickActorStyle(Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_79  #00000001
        :pswitch_6b  #00000002
        :pswitch_5d  #00000003
        :pswitch_4f  #00000004
        :pswitch_41  #00000005
        :pswitch_33  #00000006
        :pswitch_25  #00000007
        :pswitch_16  #00000008
        :pswitch_7  #00000009
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 83

    move-object/from16 v1, p0

    .line 232
    monitor-enter p0

    .line 233
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 234
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 236
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags_1:J

    .line 237
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_7c7

    .line 240
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mIsLogin:Ljava/lang/Boolean;

    .line 247
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mLandscapeStage:Ljava/lang/Boolean;

    .line 272
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 273
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    const-wide/16 v10, 0x383

    and-long v12, v2, v10

    const-wide/16 v14, 0x1000

    const/16 v16, 0x0

    cmp-long v17, v12, v4

    if-eqz v17, :cond_31

    .line 293
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v12, v0, 0x1

    if-eqz v17, :cond_33

    if-eqz v12, :cond_2f

    const-wide/16 v17, 0x2000

    or-long v2, v2, v17

    goto :goto_33

    :cond_2f
    or-long/2addr v2, v14

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    const/4 v12, 0x0

    :cond_33
    :goto_33
    const-wide/16 v17, 0x204

    and-long v19, v2, v17

    const-wide/32 v21, 0x800000

    const-wide/32 v23, 0x400000

    cmp-long v25, v19, v4

    if-eqz v25, :cond_58

    .line 312
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v19

    if-eqz v25, :cond_4e

    if-eqz v19, :cond_4c

    or-long v2, v2, v21

    goto :goto_4e

    :cond_4c
    or-long v2, v2, v23

    :cond_4e
    :goto_4e
    if-eqz v19, :cond_53

    const/16 v20, 0x8

    goto :goto_55

    :cond_53
    const/16 v20, 0x0

    :goto_55
    move/from16 v7, v20

    goto :goto_5b

    :cond_58
    const/4 v7, 0x0

    const/16 v19, 0x0

    :goto_5b
    const-wide/16 v25, 0x3f7

    and-long v25, v2, v25

    const-wide/16 v27, 0x281

    const-wide/16 v29, 0x241

    const-wide/16 v31, 0x1383

    const-wide/16 v33, 0x221

    const-wide/32 v35, 0x20000

    const-wide/16 v37, 0x211

    const-wide v39, 0x200000000000L

    const-wide/16 v41, 0x245

    cmp-long v43, v25, v4

    if-eqz v43, :cond_119

    and-long v25, v2, v41

    cmp-long v43, v25, v4

    if-eqz v43, :cond_a0

    if-eqz v8, :cond_84

    .line 333
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->isLocked()Z

    move-result v25

    goto :goto_86

    :cond_84
    const/16 v25, 0x0

    :goto_86
    if-eqz v43, :cond_94

    if-eqz v25, :cond_8d

    or-long v2, v2, v39

    goto :goto_94

    :cond_8d
    const-wide v43, 0x100000000000L

    or-long v2, v2, v43

    :cond_94
    :goto_94
    and-long v43, v2, v29

    cmp-long v26, v43, v4

    if-eqz v26, :cond_a2

    if-eqz v25, :cond_9d

    goto :goto_a2

    :cond_9d
    const/16 v26, 0x8

    goto :goto_a4

    :cond_a0
    const/16 v25, 0x0

    :cond_a2
    :goto_a2
    const/16 v26, 0x0

    :goto_a4
    and-long v43, v2, v37

    cmp-long v45, v43, v4

    if-eqz v45, :cond_c4

    if-eqz v8, :cond_b1

    .line 362
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->isSelected()Z

    move-result v43

    goto :goto_b3

    :cond_b1
    const/16 v43, 0x0

    :goto_b3
    if-eqz v45, :cond_be

    if-eqz v43, :cond_ba

    const-wide/high16 v44, 0x2000000000000000L

    goto :goto_bc

    :cond_ba
    const-wide/high16 v44, 0x1000000000000000L

    :goto_bc
    or-long v2, v2, v44

    :cond_be
    if-eqz v43, :cond_c1

    goto :goto_c4

    :cond_c1
    const/16 v43, 0x8

    goto :goto_c6

    :cond_c4
    :goto_c4
    const/16 v43, 0x0

    :goto_c6
    and-long v44, v2, v33

    cmp-long v46, v44, v4

    if-eqz v46, :cond_d3

    if-eqz v8, :cond_d3

    .line 381
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v20

    goto :goto_d5

    :cond_d3
    const/16 v20, 0x0

    :goto_d5
    and-long v44, v2, v10

    cmp-long v46, v44, v4

    if-eqz v46, :cond_110

    if-eqz v8, :cond_e2

    .line 388
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus()Z

    move-result v44

    goto :goto_e4

    :cond_e2
    const/16 v44, 0x0

    :goto_e4
    and-long v45, v2, v31

    cmp-long v47, v45, v4

    if-eqz v47, :cond_f4

    if-eqz v44, :cond_ef

    or-long v2, v2, v35

    goto :goto_f4

    :cond_ef
    const-wide/32 v45, 0x10000

    or-long v2, v2, v45

    :cond_f4
    :goto_f4
    and-long v45, v2, v27

    cmp-long v47, v45, v4

    if-eqz v47, :cond_107

    xor-int/lit8 v45, v44, 0x1

    move-object/from16 v13, v20

    move/from16 v48, v26

    move/from16 v49, v43

    move/from16 v10, v44

    move/from16 v11, v45

    goto :goto_122

    :cond_107
    move-object/from16 v13, v20

    move/from16 v48, v26

    move/from16 v49, v43

    move/from16 v10, v44

    goto :goto_117

    :cond_110
    move-object/from16 v13, v20

    move/from16 v48, v26

    move/from16 v49, v43

    const/4 v10, 0x0

    :goto_117
    const/4 v11, 0x0

    goto :goto_122

    :cond_119
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    :goto_122
    const-wide/16 v45, 0x208

    and-long v50, v2, v45

    const/16 v26, 0x0

    cmp-long v47, v50, v4

    if-eqz v47, :cond_50e

    if-eqz v9, :cond_133

    .line 412
    invoke-interface {v9}, Lcom/codemao/creativecenter/callback/ObserverAction;->isPad()Z

    move-result v9

    goto :goto_134

    :cond_133
    const/4 v9, 0x0

    :goto_134
    if-eqz v47, :cond_202

    if-eqz v9, :cond_19e

    const-wide/16 v50, 0x800

    or-long v2, v2, v50

    const-wide/32 v50, 0x8000

    or-long v2, v2, v50

    const-wide/32 v50, 0x80000

    or-long v2, v2, v50

    const-wide/32 v50, 0x200000

    or-long v2, v2, v50

    const-wide/32 v50, 0x2000000

    or-long v2, v2, v50

    const-wide/32 v50, 0x8000000

    or-long v2, v2, v50

    const-wide/32 v50, 0x20000000

    or-long v2, v2, v50

    const-wide v50, 0x80000000L

    or-long v2, v2, v50

    const-wide v50, 0x200000000L

    or-long v2, v2, v50

    const-wide v50, 0x800000000L

    or-long v2, v2, v50

    const-wide v50, 0x2000000000L

    or-long v2, v2, v50

    const-wide v50, 0x8000000000L

    or-long v2, v2, v50

    const-wide v50, 0x80000000000L

    or-long v2, v2, v50

    const-wide v50, 0x800000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x8000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x20000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x200000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x800000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, -0x8000000000000000L

    goto :goto_200

    :cond_19e
    const-wide/16 v50, 0x400

    or-long v2, v2, v50

    const-wide/16 v50, 0x4000

    or-long v2, v2, v50

    const-wide/32 v50, 0x40000

    or-long v2, v2, v50

    const-wide/32 v50, 0x100000

    or-long v2, v2, v50

    const-wide/32 v50, 0x1000000

    or-long v2, v2, v50

    const-wide/32 v50, 0x4000000

    or-long v2, v2, v50

    const-wide/32 v50, 0x10000000

    or-long v2, v2, v50

    const-wide/32 v50, 0x40000000

    or-long v2, v2, v50

    const-wide v50, 0x100000000L

    or-long v2, v2, v50

    const-wide v50, 0x400000000L

    or-long v2, v2, v50

    const-wide v50, 0x1000000000L

    or-long v2, v2, v50

    const-wide v50, 0x4000000000L

    or-long v2, v2, v50

    const-wide v50, 0x40000000000L

    or-long v2, v2, v50

    const-wide v50, 0x400000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x4000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x10000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x100000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x400000000000000L

    or-long v2, v2, v50

    const-wide/high16 v50, 0x4000000000000000L  # 2.0

    :goto_200
    or-long v2, v2, v50

    .line 473
    :cond_202
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v9, :cond_20d

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_20f

    :cond_20d
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_20f
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move/from16 v26, v14

    .line 475
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v9, :cond_220

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_38dp:I

    goto :goto_222

    :cond_220
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_32dp:I

    :goto_222
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    if-eqz v9, :cond_235

    .line 477
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v15}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_241

    :cond_235
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 479
    :goto_241
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v9, :cond_24c

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    goto :goto_24e

    :cond_24c
    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    :goto_24e
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    if-eqz v9, :cond_263

    .line 481
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v47, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_6dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_271

    :cond_263
    move/from16 v47, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_271
    if-eqz v9, :cond_282

    .line 483
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v54, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_290

    :cond_282
    move/from16 v54, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_290
    if-eqz v9, :cond_2a1

    .line 485
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v55, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2af

    :cond_2a1
    move/from16 v55, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2af
    if-eqz v9, :cond_2c0

    .line 487
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v56, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2ce

    :cond_2c0
    move/from16 v56, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2ce
    if-eqz v9, :cond_2df

    .line 489
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v57, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2ed

    :cond_2df
    move/from16 v57, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2ed
    if-eqz v9, :cond_2fe

    .line 491
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v58, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_30c

    :cond_2fe
    move/from16 v58, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_65dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_30c
    if-eqz v9, :cond_31d

    .line 493
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v59, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_56dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_32b

    :cond_31d
    move/from16 v59, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_44dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_32b
    if-eqz v9, :cond_33c

    .line 495
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mboundView5:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v60, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_34a

    :cond_33c
    move/from16 v60, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mboundView5:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_34a
    if-eqz v9, :cond_35b

    .line 497
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v61, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_369

    :cond_35b
    move/from16 v61, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_369
    if-eqz v9, :cond_37a

    .line 499
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v62, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_388

    :cond_37a
    move/from16 v62, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_388
    if-eqz v9, :cond_399

    .line 501
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v63, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_19dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_3a7

    :cond_399
    move/from16 v63, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_17dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_3a7
    if-eqz v9, :cond_3b8

    .line 503
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v64, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_3c6

    :cond_3b8
    move/from16 v64, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_73dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_3c6
    if-eqz v9, :cond_3d7

    .line 505
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v65, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_3e5

    :cond_3d7
    move/from16 v65, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_3e5
    if-eqz v9, :cond_3f6

    .line 507
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v66, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_404

    :cond_3f6
    move/from16 v66, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_404
    if-eqz v9, :cond_415

    .line 509
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v67, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_423

    :cond_415
    move/from16 v67, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_423
    if-eqz v9, :cond_434

    .line 511
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v68, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_442

    :cond_434
    move/from16 v68, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_442
    if-eqz v9, :cond_453

    .line 513
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v69, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_461

    :cond_453
    move/from16 v69, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_461
    if-eqz v9, :cond_472

    .line 515
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v70, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_480

    :cond_472
    move/from16 v70, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_480
    if-eqz v9, :cond_491

    .line 517
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v71, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_49f

    :cond_491
    move/from16 v71, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_49f
    if-eqz v9, :cond_4b0

    .line 519
    iget-object v15, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v72, v0

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_4be

    :cond_4b0
    move/from16 v72, v0

    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_4be
    if-eqz v9, :cond_4c9

    .line 521
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    goto :goto_4d1

    :cond_4c9
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v15, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    :goto_4d1
    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move/from16 v79, v0

    move/from16 v80, v9

    move/from16 v15, v55

    move/from16 v73, v61

    move/from16 v74, v64

    move/from16 v75, v65

    move/from16 v76, v66

    move/from16 v0, v68

    move/from16 v9, v69

    move/from16 v77, v71

    move/from16 v78, v72

    move/from16 v55, v7

    move/from16 v61, v26

    move/from16 v7, v58

    move/from16 v58, v60

    move/from16 v60, v4

    move-object/from16 v26, v13

    move/from16 v13, v56

    move/from16 v56, v57

    move/from16 v4, v70

    move/from16 v57, v14

    move/from16 v14, v62

    move/from16 v62, v54

    move/from16 v54, v11

    move/from16 v11, v59

    move/from16 v59, v5

    move/from16 v5, v63

    move/from16 v63, v67

    goto :goto_53f

    :cond_50e
    move/from16 v47, v0

    move/from16 v55, v7

    move/from16 v54, v11

    move-object/from16 v26, v13

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    :goto_53f
    and-long v39, v2, v39

    const-wide/16 v52, 0x0

    cmp-long v64, v39, v52

    if-eqz v64, :cond_558

    .line 530
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v19

    and-long v39, v2, v17

    cmp-long v6, v39, v52

    if-eqz v6, :cond_558

    if-eqz v19, :cond_556

    or-long v2, v2, v21

    goto :goto_558

    :cond_556
    or-long v2, v2, v23

    :cond_558
    :goto_558
    and-long v21, v2, v35

    cmp-long v6, v21, v52

    if-eqz v6, :cond_565

    if-eqz v8, :cond_565

    .line 546
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v6

    goto :goto_566

    :cond_565
    const/4 v6, 0x0

    :goto_566
    and-long v21, v2, v31

    cmp-long v23, v21, v52

    if-eqz v23, :cond_59a

    if-eqz v10, :cond_56f

    goto :goto_570

    :cond_56f
    const/4 v6, 0x0

    :goto_570
    const-wide/16 v21, 0x1000

    and-long v23, v2, v21

    cmp-long v21, v23, v52

    if-eqz v21, :cond_587

    if-eqz v6, :cond_580

    const-wide v21, 0x20000000000L

    goto :goto_585

    :cond_580
    const-wide v21, 0x10000000000L

    :goto_585
    or-long v2, v2, v21

    :cond_587
    const-wide/16 v21, 0x383

    and-long v23, v2, v21

    cmp-long v21, v23, v52

    const-wide/16 v21, 0x1000

    and-long v21, v2, v21

    cmp-long v23, v21, v52

    if-eqz v23, :cond_59b

    if-eqz v6, :cond_59b

    const/16 v21, 0x4

    goto :goto_59d

    :cond_59a
    const/4 v6, 0x0

    :cond_59b
    const/16 v21, 0x0

    :goto_59d
    and-long v22, v2, v41

    cmp-long v24, v22, v52

    if-eqz v24, :cond_5bf

    if-eqz v25, :cond_5a6

    goto :goto_5a8

    :cond_5a6
    const/16 v19, 0x0

    :goto_5a8
    if-eqz v24, :cond_5b3

    if-eqz v19, :cond_5af

    const-wide/high16 v22, 0x80000000000000L

    goto :goto_5b1

    :cond_5af
    const-wide/high16 v22, 0x40000000000000L

    :goto_5b1
    or-long v2, v2, v22

    :cond_5b3
    if-eqz v19, :cond_5b8

    const/16 v19, 0x0

    goto :goto_5ba

    :cond_5b8
    const/16 v19, 0x8

    :goto_5ba
    move/from16 v81, v19

    const-wide/16 v22, 0x383

    goto :goto_5c3

    :cond_5bf
    const-wide/16 v22, 0x383

    const/16 v81, 0x0

    :goto_5c3
    and-long v24, v2, v22

    const-wide/16 v22, 0x0

    cmp-long v19, v24, v22

    if-eqz v19, :cond_5d2

    if-eqz v12, :cond_5cf

    const/16 v21, 0x8

    :cond_5cf
    move/from16 v12, v21

    goto :goto_5d3

    :cond_5d2
    const/4 v12, 0x0

    :goto_5d3
    if-eqz v19, :cond_5ed

    if-eqz v6, :cond_5d8

    goto :goto_5da

    :cond_5d8
    const/16 v47, 0x0

    :goto_5da
    if-eqz v19, :cond_5e5

    if-eqz v47, :cond_5e1

    const-wide/high16 v21, 0x2000000000000L

    goto :goto_5e3

    :cond_5e1
    const-wide/high16 v21, 0x1000000000000L

    :goto_5e3
    or-long v2, v2, v21

    :cond_5e5
    if-eqz v47, :cond_5e8

    goto :goto_5ea

    :cond_5e8
    const/16 v16, 0x8

    :goto_5ea
    move/from16 v6, v16

    goto :goto_5ee

    :cond_5ed
    const/4 v6, 0x0

    :goto_5ee
    and-long v19, v2, v45

    const-wide/16 v21, 0x0

    cmp-long v16, v19, v21

    if-eqz v16, :cond_6d2

    move/from16 v16, v10

    .line 623
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v10, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 624
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v10, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 625
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v10, v0}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 626
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 627
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 628
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 629
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 630
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 631
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 632
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 633
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 634
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 635
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 636
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 637
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    move/from16 v4, v63

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 638
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    move/from16 v5, v62

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 639
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 640
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    move/from16 v4, v79

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 641
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    move/from16 v5, v61

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 642
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 643
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    move/from16 v4, v60

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 644
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 645
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    move/from16 v5, v59

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 646
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    move/from16 v4, v76

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 647
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 648
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    move/from16 v4, v58

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 649
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    move/from16 v9, v80

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 650
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 651
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    move/from16 v14, v57

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 652
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    move/from16 v4, v74

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 653
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 654
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    move/from16 v4, v77

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 655
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 656
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mboundView5:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v4, v73

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 657
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    move/from16 v4, v75

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 658
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    move/from16 v4, v78

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    .line 659
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    move/from16 v4, v56

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    goto :goto_6d4

    :cond_6d2
    move/from16 v16, v10

    :goto_6d4
    and-long v4, v2, v17

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_6e3

    .line 664
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->desLayout:Landroid/widget/LinearLayout;

    move/from16 v4, v55

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6e3
    const-wide/16 v4, 0x383

    and-long/2addr v4, v2

    cmp-long v0, v4, v9

    if-eqz v0, :cond_6f4

    .line 669
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6f4
    const-wide/16 v4, 0x201

    and-long/2addr v4, v2

    cmp-long v0, v4, v9

    if-eqz v0, :cond_73c

    .line 675
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 676
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 677
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 678
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindlock(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 679
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 680
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 681
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 682
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 683
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindDisplay(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 684
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 685
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindActor(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 686
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 687
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->viewBg:Landroid/view/View;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/view/View;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_73c
    and-long v4, v2, v27

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_772

    .line 692
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback71:Landroid/view/View$OnClickListener;

    move/from16 v5, v16

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 693
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback73:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 694
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback70:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 695
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback75:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 696
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback74:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 697
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback76:Landroid/view/View$OnClickListener;

    move/from16 v5, v54

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_772
    and-long v4, v2, v29

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_781

    .line 702
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    move/from16 v4, v48

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_781
    and-long v4, v2, v41

    cmp-long v0, v4, v6

    if-eqz v0, :cond_78e

    .line 707
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    move/from16 v4, v81

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_78e
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7aa

    .line 712
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback69:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback72:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mCallback68:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7aa
    and-long v4, v2, v37

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7b9

    .line 719
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    move/from16 v4, v49

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7b9
    and-long v2, v2, v33

    cmp-long v0, v2, v6

    if-eqz v0, :cond_7c6

    .line 724
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v2, v26

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7c6
    return-void

    :catchall_7c7
    move-exception v0

    .line 237
    :try_start_7c8
    monitor-exit p0
    :try_end_7c9
    .catchall {:try_start_7c8 .. :try_end_7c9} :catchall_7c7

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 117
    monitor-enter p0

    .line 118
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags_1:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    goto :goto_13

    .line 121
    :cond_10
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 119
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    .line 121
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public invalidateAll()V
    .registers 3

    .line 108
    monitor-enter p0

    const-wide/16 v0, 0x200

    .line 109
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags_1:J

    .line 111
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 112
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_e
    move-exception v0

    .line 111
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1
.end method

.method public setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 6

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 164
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 165
    monitor-enter p0

    .line 166
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 167
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 168
    sget p1, Lcom/codemao/creativecenter/BR;->actor:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 169
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 167
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setIsLogin(Ljava/lang/Boolean;)V
    .registers 6

    .line 147
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mIsLogin:Ljava/lang/Boolean;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 151
    sget p1, Lcom/codemao/creativecenter/BR;->isLogin:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 150
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setLandscapeStage(Ljava/lang/Boolean;)V
    .registers 6

    .line 155
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mLandscapeStage:Ljava/lang/Boolean;

    .line 156
    monitor-enter p0

    .line 157
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 159
    sget p1, Lcom/codemao/creativecenter/BR;->landscapeStage:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 160
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 158
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
    .registers 6

    .line 172
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    .line 173
    monitor-enter p0

    .line 174
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->mDirtyFlags:J

    .line 175
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 176
    sget p1, Lcom/codemao/creativecenter/BR;->observer:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 177
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 175
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 128
    sget v0, Lcom/codemao/creativecenter/BR;->isLogin:I

    if-ne v0, p1, :cond_a

    .line 129
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->setIsLogin(Ljava/lang/Boolean;)V

    goto :goto_27

    .line 131
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->landscapeStage:I

    if-ne v0, p1, :cond_14

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->setLandscapeStage(Ljava/lang/Boolean;)V

    goto :goto_27

    .line 134
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_1e

    .line 135
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_27

    .line 137
    :cond_1e
    sget v0, Lcom/codemao/creativecenter/BR;->observer:I

    if-ne v0, p1, :cond_29

    .line 138
    check-cast p2, Lcom/codemao/creativecenter/callback/ObserverAction;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBindingImpl;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    :goto_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method
