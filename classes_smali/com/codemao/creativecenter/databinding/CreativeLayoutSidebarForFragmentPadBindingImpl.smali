.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;
.source "CreativeLayoutSidebarForFragmentPadBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback28:Landroid/view/View$OnClickListener;

.field private final mCallback29:Landroid/view/View$OnClickListener;

.field private final mCallback30:Landroid/view/View$OnClickListener;

.field private final mCallback31:Landroid/view/View$OnClickListener;

.field private final mCallback32:Landroid/view/View$OnClickListener;

.field private final mCallback33:Landroid/view/View$OnClickListener;

.field private final mCallback34:Landroid/view/View$OnClickListener;

.field private final mCallback35:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->topview:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->bottom:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/creativecenter/R$id;->sw:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 44
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 27

    move-object/from16 v15, p0

    const/4 v14, 0x3

    .line 47
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v13, 0x5

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v12, 0x6

    aget-object v0, p3, v12

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v11, 0x7

    aget-object v0, p3, v11

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/16 v10, 0x8

    aget-object v0, p3, v10

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v0, p3, v3

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v0, p3, v2

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v0, p3, v1

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/codemao/creativecenter/customview/CmSwitchView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/FrameLayout;

    const/16 v22, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    invoke-direct/range {v0 .. v15}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmSwitchView;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 750
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 61
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->sideRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 70
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 72
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback35:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback33:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback34:Landroid/view/View$OnClickListener;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeVmBlockCanRedo(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 161
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 162
    monitor-enter p0

    .line 163
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 164
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

.method private onChangeVmBlockCanUndo(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 188
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 189
    monitor-enter p0

    .line 190
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 191
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

.method private onChangeVmCanRedo(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 179
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 180
    monitor-enter p0

    .line 181
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 182
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

.method private onChangeVmCanRevert(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 197
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 198
    monitor-enter p0

    .line 199
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 200
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

.method private onChangeVmCurrentStatus(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 170
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 171
    monitor-enter p0

    .line 172
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 173
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

.method private onChangeVmIsLandscapeMode(Landroidx/databinding/ObservableField;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    .line 152
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 153
    monitor-enter p0

    .line 154
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 155
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

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_a8

    .line 539
    :pswitch_7  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_a8

    .line 551
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    if-eqz p2, :cond_a8

    .line 557
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto/16 :goto_a8

    .line 724
    :pswitch_1d  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_a8

    .line 736
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    if-eqz p2, :cond_a8

    .line 742
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto/16 :goto_a8

    .line 679
    :pswitch_33  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    if-eqz v1, :cond_a8

    .line 691
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 p2, 0x0

    :goto_42
    if-eqz p2, :cond_a8

    .line 697
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickBlcokRestore()V

    goto/16 :goto_a8

    .line 623
    :pswitch_49  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    if-eqz v1, :cond_a8

    .line 635
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 p2, 0x0

    :goto_58
    if-eqz p2, :cond_a8

    .line 641
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickBlockRevoke()V

    goto :goto_a8

    .line 651
    :pswitch_5e  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    if-eqz v1, :cond_a8

    .line 663
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 p2, 0x0

    :goto_6d
    if-eqz p2, :cond_a8

    .line 669
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRestore()V

    goto :goto_a8

    .line 567
    :pswitch_73  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_79

    const/4 v1, 0x1

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    :goto_7a
    if-eqz v1, :cond_a8

    .line 579
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_81

    goto :goto_82

    :cond_81
    const/4 p2, 0x0

    :goto_82
    if-eqz p2, :cond_a8

    .line 585
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRevoke()V

    goto :goto_a8

    .line 707
    :pswitch_88  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    if-eqz p1, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 p2, 0x0

    :goto_8e
    if-eqz p2, :cond_a8

    .line 715
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->clickRunOrStop()V

    goto :goto_a8

    .line 595
    :pswitch_94  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_9a

    const/4 v1, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v1, 0x0

    :goto_9b
    if-eqz v1, :cond_a8

    .line 607
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_a2

    goto :goto_a3

    :cond_a2
    const/4 p2, 0x0

    :goto_a3
    if-eqz p2, :cond_a8

    .line 613
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickScreen()V

    :cond_a8
    :goto_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_94  #00000001
        :pswitch_88  #00000002
        :pswitch_73  #00000003
        :pswitch_5e  #00000004
        :pswitch_49  #00000005
        :pswitch_33  #00000006
        :pswitch_1d  #00000007
        :pswitch_7  #00000008
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 36

    move-object/from16 v1, p0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 211
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 212
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_293

    .line 218
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const-wide/16 v6, 0x17f

    and-long/2addr v6, v2

    const-wide/16 v11, 0x148

    const-wide/16 v15, 0x144

    const-wide/16 v17, 0x142

    const-wide/32 v19, 0x400000

    const/4 v13, 0x2

    const-wide/16 v23, 0x145

    const/4 v14, 0x1

    const/4 v8, 0x0

    const/16 v26, 0x0

    cmp-long v27, v6, v4

    if-eqz v27, :cond_1ad

    and-long v6, v2, v23

    cmp-long v27, v6, v4

    if-eqz v27, :cond_50

    if-eqz v0, :cond_2e

    .line 253
    iget-object v6, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    goto :goto_30

    :cond_2e
    move-object/from16 v6, v26

    .line 255
    :goto_30
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_3c

    .line 260
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_3e

    :cond_3c
    move-object/from16 v6, v26

    .line 265
    :goto_3e
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    xor-int/2addr v6, v14

    if-eqz v27, :cond_51

    if-eqz v6, :cond_4a

    or-long v2, v2, v19

    goto :goto_51

    :cond_4a
    const-wide/32 v27, 0x200000

    or-long v2, v2, v27

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :cond_51
    :goto_51
    and-long v27, v2, v17

    cmp-long v7, v27, v4

    if-eqz v7, :cond_99

    if-eqz v0, :cond_5c

    .line 283
    iget-object v8, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanRedo:Landroidx/databinding/ObservableField;

    goto :goto_5e

    :cond_5c
    move-object/from16 v8, v26

    .line 285
    :goto_5e
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_6a

    .line 290
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_6c

    :cond_6a
    move-object/from16 v8, v26

    .line 295
    :goto_6c
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v7, :cond_87

    if-eqz v8, :cond_7d

    const-wide/32 v28, 0x100000

    or-long v2, v2, v28

    const-wide/32 v28, 0x1000000

    goto :goto_85

    :cond_7d
    const-wide/32 v28, 0x80000

    or-long v2, v2, v28

    const-wide/32 v28, 0x800000

    :goto_85
    or-long v2, v2, v28

    .line 309
    :cond_87
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v8, :cond_92

    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_94

    :cond_92
    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_94
    invoke-static {v7, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_9c

    :cond_99
    move-object/from16 v7, v26

    const/4 v8, 0x0

    :goto_9c
    and-long v29, v2, v15

    cmp-long v14, v29, v4

    if-eqz v14, :cond_d0

    if-eqz v0, :cond_a7

    .line 317
    iget-object v15, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    goto :goto_a9

    :cond_a7
    move-object/from16 v15, v26

    .line 319
    :goto_a9
    invoke-virtual {v1, v13, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_b5

    .line 324
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    goto :goto_b7

    :cond_b5
    move-object/from16 v16, v26

    .line 329
    :goto_b7
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v9

    if-ne v9, v13, :cond_bf

    const/4 v9, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v9, 0x0

    :goto_c0
    if-eqz v14, :cond_cb

    if-eqz v9, :cond_c7

    const-wide/16 v31, 0x400

    goto :goto_c9

    :cond_c7
    const-wide/16 v31, 0x200

    :goto_c9
    or-long v2, v2, v31

    :cond_cb
    if-eqz v9, :cond_d4

    const/16 v9, 0x8

    goto :goto_d5

    :cond_d0
    move-object/from16 v15, v26

    move-object/from16 v16, v15

    :cond_d4
    const/4 v9, 0x0

    :goto_d5
    and-long v31, v2, v11

    cmp-long v10, v31, v4

    if-eqz v10, :cond_114

    if-eqz v0, :cond_e0

    .line 351
    iget-object v14, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRedo:Landroidx/databinding/ObservableField;

    goto :goto_e2

    :cond_e0
    move-object/from16 v14, v26

    :goto_e2
    const/4 v11, 0x3

    .line 353
    invoke-virtual {v1, v11, v14}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_ef

    .line 358
    invoke-virtual {v14}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_f1

    :cond_ef
    move-object/from16 v11, v26

    .line 363
    :goto_f1
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v10, :cond_102

    if-eqz v11, :cond_fd

    const-wide/32 v33, 0x40000

    goto :goto_100

    :cond_fd
    const-wide/32 v33, 0x20000

    :goto_100
    or-long v2, v2, v33

    .line 375
    :cond_102
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v11, :cond_10d

    sget v11, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_10f

    :cond_10d
    sget v11, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_10f
    invoke-static {v10, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_116

    :cond_114
    move-object/from16 v10, v26

    :goto_116
    const-wide/16 v11, 0x150

    and-long v33, v2, v11

    cmp-long v11, v33, v4

    if-eqz v11, :cond_15f

    if-eqz v0, :cond_123

    .line 381
    iget-object v12, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanUndo:Landroidx/databinding/ObservableField;

    goto :goto_125

    :cond_123
    move-object/from16 v12, v26

    :goto_125
    const/4 v14, 0x4

    .line 383
    invoke-virtual {v1, v14, v12}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_132

    .line 388
    invoke-virtual {v12}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_134

    :cond_132
    move-object/from16 v12, v26

    .line 393
    :goto_134
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v11, :cond_14d

    if-eqz v12, :cond_144

    const-wide/16 v33, 0x1000

    or-long v2, v2, v33

    const-wide/32 v33, 0x4000000

    goto :goto_14b

    :cond_144
    const-wide/16 v33, 0x800

    or-long v2, v2, v33

    const-wide/32 v33, 0x2000000

    :goto_14b
    or-long v2, v2, v33

    .line 409
    :cond_14d
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v12, :cond_158

    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_15a

    :cond_158
    sget v14, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_15a
    invoke-static {v11, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_162

    :cond_15f
    move-object/from16 v11, v26

    const/4 v12, 0x0

    :goto_162
    const-wide/16 v21, 0x160

    and-long v33, v2, v21

    cmp-long v14, v33, v4

    if-eqz v14, :cond_1a8

    if-eqz v0, :cond_16f

    .line 415
    iget-object v13, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRevert:Landroidx/databinding/ObservableField;

    goto :goto_171

    :cond_16f
    move-object/from16 v13, v26

    :goto_171
    const/4 v4, 0x5

    .line 417
    invoke-virtual {v1, v4, v13}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_17f

    .line 422
    invoke-virtual {v13}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Ljava/lang/Boolean;

    .line 427
    :cond_17f
    invoke-static/range {v26 .. v26}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v14, :cond_18f

    if-eqz v4, :cond_18b

    const-wide/32 v13, 0x10000

    goto :goto_18e

    :cond_18b
    const-wide/32 v13, 0x8000

    :goto_18e
    or-long/2addr v2, v13

    :cond_18f
    if-eqz v4, :cond_19a

    .line 439
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_1a2

    :cond_19a
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_1a2
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v26, v4

    :cond_1a8
    move-object/from16 v4, v26

    move-object/from16 v26, v15

    goto :goto_1b8

    :cond_1ad
    move-object/from16 v4, v26

    move-object v7, v4

    move-object v10, v7

    move-object v11, v10

    move-object/from16 v16, v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_1b8
    and-long v13, v2, v19

    const-wide/16 v19, 0x0

    cmp-long v5, v13, v19

    if-eqz v5, :cond_1dd

    if-eqz v0, :cond_1c5

    .line 448
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    goto :goto_1c7

    :cond_1c5
    move-object/from16 v0, v26

    :goto_1c7
    const/4 v5, 0x2

    .line 450
    invoke-virtual {v1, v5, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_1d5

    .line 455
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    .line 460
    :cond_1d5
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_1dd

    const/4 v14, 0x1

    goto :goto_1de

    :cond_1dd
    const/4 v14, 0x0

    :goto_1de
    and-long v15, v2, v23

    const-wide/16 v19, 0x0

    cmp-long v0, v15, v19

    if-eqz v0, :cond_1fe

    if-eqz v6, :cond_1e9

    goto :goto_1ea

    :cond_1e9
    const/4 v14, 0x0

    :goto_1ea
    if-eqz v0, :cond_1f4

    if-eqz v14, :cond_1f1

    const-wide/16 v5, 0x4000

    goto :goto_1f3

    :cond_1f1
    const-wide/16 v5, 0x2000

    :goto_1f3
    or-long/2addr v2, v5

    :cond_1f4
    if-eqz v14, :cond_1f9

    const/16 v25, 0x0

    goto :goto_1fb

    :cond_1f9
    const/16 v25, 0x4

    :goto_1fb
    move/from16 v0, v25

    goto :goto_1ff

    :cond_1fe
    const/4 v0, 0x0

    :goto_1ff
    const-wide/16 v5, 0x100

    and-long/2addr v5, v2

    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-eqz v15, :cond_240

    .line 488
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->back:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockBack:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback32:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockRestore:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback33:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->flCurrentActor:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback34:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivCurrentActor:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback35:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivScreen:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->restore:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->run:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_240
    const-wide/16 v5, 0x160

    and-long/2addr v5, v2

    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-eqz v15, :cond_24e

    .line 500
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->back:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_24e
    const-wide/16 v4, 0x150

    and-long/2addr v4, v2

    cmp-long v6, v4, v13

    if-eqz v6, :cond_25f

    .line 505
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 506
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockBack:Landroid/widget/ImageView;

    invoke-static {v4, v11}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_25f
    and-long v4, v2, v17

    cmp-long v6, v4, v13

    if-eqz v6, :cond_26f

    .line 511
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 512
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_26f
    and-long v4, v2, v23

    cmp-long v6, v4, v13

    if-eqz v6, :cond_27a

    .line 517
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_27a
    const-wide/16 v4, 0x148

    and-long/2addr v4, v2

    cmp-long v0, v4, v13

    if-eqz v0, :cond_286

    .line 522
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->restore:Landroid/widget/ImageView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_286
    const-wide/16 v4, 0x144

    and-long/2addr v2, v4

    cmp-long v0, v2, v13

    if-eqz v0, :cond_292

    .line 527
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_292
    return-void

    :catchall_293
    move-exception v0

    .line 212
    :try_start_294
    monitor-exit p0
    :try_end_295
    .catchall {:try_start_294 .. :try_end_295} :catchall_293

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 95
    monitor-exit p0

    return v0

    .line 97
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

    .line 85
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 86
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 88
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 87
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 5

    if-eqz p1, :cond_36

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_13

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_13
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmCanRevert(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 145
    :cond_1a
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmBlockCanUndo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 143
    :cond_21
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmCanRedo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 141
    :cond_28
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmCurrentStatus(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 139
    :cond_2f
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmBlockCanRedo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 137
    :cond_36
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->onChangeVmIsLandscapeMode(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V
    .registers 6

    .line 125
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 129
    sget p1, Lcom/codemao/creativecenter/BR;->sidebar:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 130
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 128
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 104
    sget v0, Lcom/codemao/creativecenter/BR;->vm:I

    if-ne v0, p1, :cond_a

    .line 105
    check-cast p2, Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    goto :goto_13

    .line 107
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->sidebar:I

    if-ne v0, p1, :cond_15

    .line 108
    check-cast p2, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V
    .registers 6

    .line 117
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 118
    monitor-enter p0

    .line 119
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentPadBindingImpl;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 121
    sget p1, Lcom/codemao/creativecenter/BR;->vm:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 122
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 120
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
