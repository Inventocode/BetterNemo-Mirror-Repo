.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;
.source "CreativeLayoutSidebarBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private final mCallback10:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private final mCallback5:Landroid/view/View$OnClickListener;

.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private final mCallback7:Landroid/view/View$OnClickListener;

.field private final mCallback8:Landroid/view/View$OnClickListener;

.field private final mCallback9:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 45
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 22

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x7

    .line 48
    aget-object v4, p3, v15

    check-cast v4, Landroid/widget/ImageView;

    const/16 v14, 0x9

    aget-object v5, p3, v14

    check-cast v5, Landroid/widget/ImageView;

    const/16 v13, 0xa

    aget-object v6, p3, v13

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0xb

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v8, 0xc

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v12, 0x6

    aget-object v9, p3, v12

    check-cast v9, Landroid/widget/ImageView;

    const/4 v11, 0x2

    aget-object v10, p3, v11

    check-cast v10, Landroid/view/View;

    const/4 v3, 0x1

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v11, v16

    const/16 v3, 0x8

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v12, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v13, v16

    const/16 v16, 0x0

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v14, v16

    const/4 v3, 0x5

    aget-object v16, p3, v3

    check-cast v16, Lcom/codemao/creativecenter/customview/CmSwitchView;

    move-object/from16 v15, v16

    const/4 v3, 0x3

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/ImageView;

    const/16 v17, 0x6

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmSwitchView;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 940
    iput-wide v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 63
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->flCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 76
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 78
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x9

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 81
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    .line 87
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->invalidateAll()V

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

    .line 160
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 161
    monitor-enter p0

    .line 162
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 163
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

    .line 196
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 197
    monitor-enter p0

    .line 198
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 199
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

    .line 178
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 179
    monitor-enter p0

    .line 180
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 181
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

    .line 205
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 206
    monitor-enter p0

    .line 207
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 208
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

    .line 169
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 170
    monitor-enter p0

    .line 171
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 172
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

    .line 187
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 188
    monitor-enter p0

    .line 189
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 190
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
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_d6

    goto/16 :goto_d4

    .line 897
    :pswitch_7  #0xa
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    if-eqz p2, :cond_d4

    .line 909
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_d4

    .line 915
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto/16 :goto_d4

    .line 701
    :pswitch_1d  #0x9
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_23

    const/4 p2, 0x1

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    if-eqz p2, :cond_d4

    .line 713
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_d4

    .line 719
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto/16 :goto_d4

    .line 757
    :pswitch_33  #0x8
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_39

    const/4 p2, 0x1

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    if-eqz p2, :cond_d4

    .line 769
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_d4

    .line 775
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickBlcokRestore()V

    goto/16 :goto_d4

    .line 785
    :pswitch_49  #0x7
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_4f

    const/4 p2, 0x1

    goto :goto_50

    :cond_4f
    const/4 p2, 0x0

    :goto_50
    if-eqz p2, :cond_d4

    .line 797
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    if-eqz v0, :cond_d4

    .line 803
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickBlockRevoke()V

    goto/16 :goto_d4

    .line 813
    :pswitch_5f  #0x6
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_65

    const/4 p2, 0x1

    goto :goto_66

    :cond_65
    const/4 p2, 0x0

    :goto_66
    if-eqz p2, :cond_d4

    .line 825
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    if-eqz v0, :cond_d4

    .line 831
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRestore()V

    goto/16 :goto_d4

    .line 841
    :pswitch_75  #0x5
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_7b

    const/4 p2, 0x1

    goto :goto_7c

    :cond_7b
    const/4 p2, 0x0

    :goto_7c
    if-eqz p2, :cond_d4

    .line 853
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_83

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    if-eqz v0, :cond_d4

    .line 859
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickRevoke()V

    goto :goto_d4

    .line 869
    :pswitch_8a  #0x4
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_90

    const/4 p2, 0x1

    goto :goto_91

    :cond_90
    const/4 p2, 0x0

    :goto_91
    if-eqz p2, :cond_d4

    .line 881
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_98

    goto :goto_99

    :cond_98
    const/4 v0, 0x0

    :goto_99
    if-eqz v0, :cond_d4

    .line 887
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickScreen()V

    goto :goto_d4

    .line 925
    :pswitch_9f  #0x3
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBar;

    if-eqz p1, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    if-eqz v0, :cond_d4

    .line 933
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->clickRunOrStop()V

    goto :goto_d4

    .line 672
    :pswitch_ab  #0x2
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_b1

    const/4 v2, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v2, 0x0

    :goto_b2
    if-eqz v2, :cond_d4

    .line 684
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    if-eqz v0, :cond_d4

    .line 691
    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickUpload(Landroid/view/View;)V

    goto :goto_d4

    .line 729
    :pswitch_c0  #0x1
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_c6

    const/4 p2, 0x1

    goto :goto_c7

    :cond_c6
    const/4 p2, 0x0

    :goto_c7
    if-eqz p2, :cond_d4

    .line 741
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x0

    :goto_cf
    if-eqz v0, :cond_d4

    .line 747
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickMenu()V

    :cond_d4
    :goto_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c0  #00000001
        :pswitch_ab  #00000002
        :pswitch_9f  #00000003
        :pswitch_8a  #00000004
        :pswitch_75  #00000005
        :pswitch_5f  #00000006
        :pswitch_49  #00000007
        :pswitch_33  #00000008
        :pswitch_1d  #00000009
        :pswitch_7  #0000000a
    .end packed-switch
.end method

.method protected executeBindings()V
    .registers 54

    move-object/from16 v1, p0

    .line 217
    monitor-enter p0

    .line 218
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 219
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 220
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4e1

    .line 226
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const-wide/16 v6, 0x17f

    and-long/2addr v6, v2

    const-wide/16 v10, 0x144

    const-wide/16 v14, 0x142

    const-wide/16 v16, 0x141

    const-wide/16 v18, 0x140

    const-wide/32 v20, 0x10000

    const/16 v22, 0x8

    const-wide/16 v23, 0x14a

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmp-long v28, v6, v4

    if-eqz v28, :cond_306

    and-long v6, v2, v18

    cmp-long v28, v6, v4

    if-eqz v28, :cond_126

    if-eqz v0, :cond_2f

    .line 276
    iget-boolean v6, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isPad:Z

    goto :goto_30

    :cond_2f
    const/4 v6, 0x0

    :goto_30
    if-eqz v28, :cond_c2

    if-eqz v6, :cond_79

    const-wide/16 v28, 0x400

    or-long v2, v2, v28

    const-wide/16 v28, 0x1000

    or-long v2, v2, v28

    const-wide/16 v28, 0x4000

    or-long v2, v2, v28

    const-wide/32 v28, 0x40000

    or-long v2, v2, v28

    const-wide/32 v28, 0x400000

    or-long v2, v2, v28

    const-wide/32 v28, 0x1000000

    or-long v2, v2, v28

    const-wide/32 v28, 0x4000000

    or-long v2, v2, v28

    const-wide/32 v28, 0x40000000

    or-long v2, v2, v28

    const-wide v28, 0x100000000L

    or-long v2, v2, v28

    const-wide v28, 0x1000000000L

    or-long v2, v2, v28

    const-wide v28, 0x400000000000L

    or-long v2, v2, v28

    const-wide/high16 v28, 0x1000000000000L

    or-long v2, v2, v28

    const-wide/high16 v28, 0x4000000000000L

    or-long v2, v2, v28

    const-wide/high16 v28, 0x10000000000000L

    goto :goto_c0

    :cond_79
    const-wide/16 v28, 0x200

    or-long v2, v2, v28

    const-wide/16 v28, 0x800

    or-long v2, v2, v28

    const-wide/16 v28, 0x2000

    or-long v2, v2, v28

    const-wide/32 v28, 0x20000

    or-long v2, v2, v28

    const-wide/32 v28, 0x200000

    or-long v2, v2, v28

    const-wide/32 v28, 0x800000

    or-long v2, v2, v28

    const-wide/32 v28, 0x2000000

    or-long v2, v2, v28

    const-wide/32 v28, 0x20000000

    or-long v2, v2, v28

    const-wide v28, 0x80000000L

    or-long v2, v2, v28

    const-wide v28, 0x800000000L

    or-long v2, v2, v28

    const-wide v28, 0x200000000000L

    or-long v2, v2, v28

    const-wide v28, 0x800000000000L

    or-long v2, v2, v28

    const-wide/high16 v28, 0x2000000000000L

    or-long v2, v2, v28

    const-wide/high16 v28, 0x8000000000000L

    :goto_c0
    or-long v2, v2, v28

    :cond_c2
    const/16 v7, 0x28

    const/16 v28, 0x24

    if-eqz v6, :cond_cb

    const/16 v29, 0x28

    goto :goto_cd

    :cond_cb
    const/16 v29, 0x24

    :goto_cd
    if-eqz v6, :cond_d2

    const/16 v30, 0xa

    goto :goto_d4

    :cond_d2
    const/16 v30, 0x8

    :goto_d4
    const/16 v31, 0xc

    if-eqz v6, :cond_db

    const/16 v32, 0xc

    goto :goto_dd

    :cond_db
    const/16 v32, 0x9

    :goto_dd
    if-eqz v6, :cond_e2

    const/16 v33, 0x62

    goto :goto_e4

    :cond_e2
    const/16 v33, 0x43

    :goto_e4
    const/16 v34, 0x10

    if-eqz v6, :cond_eb

    const/16 v35, 0x14

    goto :goto_ed

    :cond_eb
    const/16 v35, 0x10

    :goto_ed
    if-eqz v6, :cond_f1

    const/16 v7, 0x32

    :cond_f1
    const/16 v36, 0x20

    if-eqz v6, :cond_f8

    const/16 v37, 0x20

    goto :goto_fa

    :cond_f8
    const/16 v37, 0x12

    :goto_fa
    if-eqz v6, :cond_ff

    const/16 v38, 0x1f

    goto :goto_101

    :cond_ff
    const/16 v38, 0x17

    :goto_101
    if-eqz v6, :cond_106

    const/16 v39, 0x48

    goto :goto_108

    :cond_106
    const/16 v39, 0x40

    :goto_108
    if-eqz v6, :cond_10d

    const/16 v40, 0x2c

    goto :goto_10f

    :cond_10d
    const/16 v40, 0x24

    :goto_10f
    if-eqz v6, :cond_114

    const/16 v41, 0x1c

    goto :goto_116

    :cond_114
    const/16 v41, 0x15

    :goto_116
    if-eqz v6, :cond_119

    goto :goto_11b

    :cond_119
    const/16 v28, 0x20

    :goto_11b
    if-eqz v6, :cond_11e

    goto :goto_120

    :cond_11e
    const/16 v34, 0xc

    :goto_120
    if-eqz v6, :cond_123

    goto :goto_141

    :cond_123
    const/16 v31, 0x7

    goto :goto_141

    :cond_126
    const/4 v7, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    :goto_141
    and-long v42, v2, v16

    cmp-long v6, v42, v4

    if-eqz v6, :cond_18b

    if-eqz v0, :cond_14c

    .line 347
    iget-object v8, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanRedo:Landroidx/databinding/ObservableField;

    goto :goto_14d

    :cond_14c
    const/4 v8, 0x0

    .line 349
    :goto_14d
    invoke-virtual {v1, v13, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_159

    .line 354
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_15a

    :cond_159
    const/4 v8, 0x0

    .line 359
    :goto_15a
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v6, :cond_179

    if-eqz v8, :cond_16d

    const-wide/32 v44, 0x100000

    or-long v2, v2, v44

    const-wide v44, 0x100000000000L

    goto :goto_177

    :cond_16d
    const-wide/32 v44, 0x80000

    or-long v2, v2, v44

    const-wide v44, 0x80000000000L

    :goto_177
    or-long v2, v2, v44

    .line 375
    :cond_179
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v8, :cond_184

    sget v9, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_186

    :cond_184
    sget v9, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_186
    invoke-static {v6, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_18d

    :cond_18b
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_18d
    and-long v44, v2, v14

    const/4 v9, 0x2

    cmp-long v36, v44, v4

    if-eqz v36, :cond_1c5

    if-eqz v0, :cond_199

    .line 381
    iget-object v13, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    goto :goto_19a

    :cond_199
    const/4 v13, 0x0

    .line 383
    :goto_19a
    invoke-virtual {v1, v12, v13}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1a6

    .line 388
    invoke-virtual {v13}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Integer;

    goto :goto_1a8

    :cond_1a6
    const/16 v45, 0x0

    .line 393
    :goto_1a8
    invoke-static/range {v45 .. v45}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v14

    if-ne v14, v9, :cond_1b0

    const/4 v14, 0x1

    goto :goto_1b1

    :cond_1b0
    const/4 v14, 0x0

    :goto_1b1
    if-eqz v36, :cond_1be

    if-eqz v14, :cond_1b9

    const-wide/32 v46, 0x10000000

    goto :goto_1bc

    :cond_1b9
    const-wide/32 v46, 0x8000000

    :goto_1bc
    or-long v2, v2, v46

    :cond_1be
    if-eqz v14, :cond_1c3

    const/16 v14, 0x8

    goto :goto_1c9

    :cond_1c3
    const/4 v14, 0x0

    goto :goto_1c9

    :cond_1c5
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v45, 0x0

    :goto_1c9
    and-long v46, v2, v10

    cmp-long v15, v46, v4

    if-eqz v15, :cond_20e

    if-eqz v0, :cond_1d4

    .line 415
    iget-object v10, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRedo:Landroidx/databinding/ObservableField;

    goto :goto_1d5

    :cond_1d4
    const/4 v10, 0x0

    .line 417
    :goto_1d5
    invoke-virtual {v1, v9, v10}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_1e1

    .line 422
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_1e2

    :cond_1e1
    const/4 v9, 0x0

    .line 427
    :goto_1e2
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v15, :cond_1f6

    if-eqz v9, :cond_1f0

    const-wide v10, 0x10000000000L

    goto :goto_1f5

    :cond_1f0
    const-wide v10, 0x8000000000L

    :goto_1f5
    or-long/2addr v2, v10

    :cond_1f6
    if-eqz v9, :cond_201

    .line 439
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert:I

    goto :goto_209

    :cond_201
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_revert_unable:I

    :goto_209
    invoke-static {v9, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_20f

    :cond_20e
    const/4 v9, 0x0

    :goto_20f
    and-long v10, v2, v23

    cmp-long v15, v10, v4

    if-eqz v15, :cond_23b

    if-eqz v0, :cond_21a

    .line 445
    iget-object v10, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    goto :goto_21b

    :cond_21a
    const/4 v10, 0x0

    :goto_21b
    const/4 v11, 0x3

    .line 447
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_228

    .line 452
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_229

    :cond_228
    const/4 v10, 0x0

    .line 457
    :goto_229
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    xor-int/2addr v10, v12

    if-eqz v15, :cond_23c

    if-eqz v10, :cond_235

    or-long v2, v2, v20

    goto :goto_23c

    :cond_235
    const-wide/32 v48, 0x8000

    or-long v2, v2, v48

    goto :goto_23c

    :cond_23b
    const/4 v10, 0x0

    :cond_23c
    :goto_23c
    const-wide/16 v42, 0x150

    and-long v48, v2, v42

    cmp-long v11, v48, v4

    if-eqz v11, :cond_287

    if-eqz v0, :cond_249

    .line 475
    iget-object v15, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->blockCanUndo:Landroidx/databinding/ObservableField;

    goto :goto_24a

    :cond_249
    const/4 v15, 0x0

    :goto_24a
    const/4 v12, 0x4

    .line 477
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_257

    .line 482
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_258

    :cond_257
    const/4 v12, 0x0

    .line 487
    :goto_258
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v11, :cond_275

    if-eqz v12, :cond_26a

    const-wide v48, 0x400000000L

    or-long v2, v2, v48

    const-wide/high16 v48, 0x40000000000000L

    goto :goto_273

    :cond_26a
    const-wide v48, 0x200000000L

    or-long v2, v2, v48

    const-wide/high16 v48, 0x20000000000000L

    :goto_273
    or-long v2, v2, v48

    .line 503
    :cond_275
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v12, :cond_280

    sget v15, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_282

    :cond_280
    sget v15, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_282
    invoke-static {v11, v15}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_289

    :cond_287
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_289
    const-wide/16 v25, 0x160

    and-long v48, v2, v25

    cmp-long v15, v48, v4

    if-eqz v15, :cond_2dc

    if-eqz v0, :cond_296

    .line 509
    iget-object v4, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->canRevert:Landroidx/databinding/ObservableField;

    goto :goto_297

    :cond_296
    const/4 v4, 0x0

    :goto_297
    const/4 v5, 0x5

    .line 511
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_2a4

    .line 516
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_2a5

    :cond_2a4
    const/4 v4, 0x0

    .line 521
    :goto_2a5
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v15, :cond_2ba

    if-eqz v4, :cond_2b3

    const-wide v50, 0x4000000000L

    goto :goto_2b8

    :cond_2b3
    const-wide v50, 0x2000000000L

    :goto_2b8
    or-long v2, v2, v50

    :cond_2ba
    if-eqz v4, :cond_2c5

    .line 533
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back:I

    goto :goto_2cd

    :cond_2c5
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$drawable;->creative_icon_create_back_unable:I

    :goto_2cd
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v27, v13

    move/from16 v5, v28

    move/from16 v15, v29

    move/from16 v13, v30

    move/from16 v52, v40

    goto :goto_2e7

    :cond_2dc
    move-object/from16 v27, v13

    move/from16 v5, v28

    move/from16 v15, v29

    move/from16 v13, v30

    move/from16 v52, v40

    const/4 v4, 0x0

    :goto_2e7
    move-object/from16 v30, v6

    move-object/from16 v29, v9

    move/from16 v28, v14

    move/from16 v14, v31

    move/from16 v9, v32

    move/from16 v6, v41

    move/from16 v31, v8

    move-object/from16 v32, v11

    move/from16 v8, v34

    move/from16 v34, v35

    move/from16 v11, v38

    move/from16 v35, v33

    move/from16 v33, v12

    move/from16 v12, v37

    move/from16 v37, v39

    goto :goto_32a

    :cond_306
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v45, 0x0

    const/16 v52, 0x0

    :goto_32a
    and-long v20, v2, v20

    const-wide/16 v38, 0x0

    cmp-long v40, v20, v38

    if-eqz v40, :cond_352

    if-eqz v0, :cond_339

    .line 542
    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    move/from16 v20, v13

    goto :goto_33d

    :cond_339
    move/from16 v20, v13

    move-object/from16 v0, v27

    :goto_33d
    const/4 v13, 0x1

    .line 544
    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_34b

    .line 549
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/Integer;

    .line 554
    :cond_34b
    invoke-static/range {v45 .. v45}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_354

    goto :goto_355

    :cond_352
    move/from16 v20, v13

    :cond_354
    const/4 v13, 0x0

    :goto_355
    and-long v38, v2, v23

    const-wide/16 v40, 0x0

    cmp-long v0, v38, v40

    if-eqz v0, :cond_379

    if-eqz v10, :cond_360

    goto :goto_361

    :cond_360
    const/4 v13, 0x0

    :goto_361
    if-eqz v0, :cond_372

    if-eqz v13, :cond_36b

    const-wide v38, 0x40000000000L

    goto :goto_370

    :cond_36b
    const-wide v38, 0x20000000000L

    :goto_370
    or-long v2, v2, v38

    :cond_372
    if-eqz v13, :cond_376

    const/16 v22, 0x0

    :cond_376
    move/from16 v13, v22

    goto :goto_37a

    :cond_379
    const/4 v13, 0x0

    :goto_37a
    const-wide/16 v21, 0x100

    and-long v21, v2, v21

    const-wide/16 v38, 0x0

    cmp-long v0, v21, v38

    if-eqz v0, :cond_3ca

    .line 582
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->flCurrentActor:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3ca
    const-wide/16 v21, 0x160

    and-long v21, v2, v21

    const-wide/16 v25, 0x0

    cmp-long v0, v21, v25

    if-eqz v0, :cond_3d9

    .line 596
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_3d9
    and-long v18, v2, v18

    cmp-long v0, v18, v25

    if-eqz v0, :cond_48e

    .line 601
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 602
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 603
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 604
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 605
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 606
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 607
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 608
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 609
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 610
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 611
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 612
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-static {v0, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 613
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 614
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 615
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 616
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-static {v0, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 617
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 618
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-static {v0, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 619
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 620
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 621
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 622
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 623
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 624
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    invoke-static {v0, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottomDp(Landroid/view/View;I)V

    .line 625
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 626
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    move/from16 v4, v20

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingDp(Landroid/view/View;I)V

    .line 627
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v5, v37

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 628
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    move/from16 v5, v35

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginBottomDp(Landroid/view/View;I)V

    .line 629
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    move/from16 v5, v52

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 630
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeightDp(Landroid/view/View;I)V

    .line 631
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    move/from16 v5, v34

    invoke-static {v0, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginTopDp(Landroid/view/View;I)V

    .line 632
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdhDp(Landroid/view/View;I)V

    .line 633
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingDp(Landroid/view/View;I)V

    :cond_48e
    const-wide/16 v4, 0x150

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4a5

    .line 638
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    move/from16 v12, v33

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 639
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    move-object/from16 v11, v32

    invoke-static {v0, v11}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4a5
    and-long v4, v2, v16

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4b9

    .line 644
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    move/from16 v8, v31

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 645
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    move-object/from16 v4, v30

    invoke-static {v0, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4b9
    and-long v4, v2, v23

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4c4

    .line 650
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4c4
    const-wide/16 v4, 0x144

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4d2

    .line 655
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    move-object/from16 v9, v29

    invoke-static {v0, v9}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4d2
    const-wide/16 v4, 0x142

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4e0

    .line 660
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    move/from16 v14, v28

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4e0
    return-void

    :catchall_4e1
    move-exception v0

    .line 220
    :try_start_4e2
    monitor-exit p0
    :try_end_4e3
    .catchall {:try_start_4e2 .. :try_end_4e3} :catchall_4e1

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 101
    monitor-enter p0

    .line 102
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 103
    monitor-exit p0

    return v0

    .line 105
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

    .line 93
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 94
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 96
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 95
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

    .line 155
    :cond_13
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmCanRevert(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 153
    :cond_1a
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmBlockCanUndo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 151
    :cond_21
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmIsLandscapeMode(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 149
    :cond_28
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmCanRedo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 147
    :cond_2f
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmCurrentStatus(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 145
    :cond_36
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->onChangeVmBlockCanRedo(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setSidebar(Lcom/codemao/creativecenter/customview/CmSideBar;)V
    .registers 6

    .line 133
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBar;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 137
    sget p1, Lcom/codemao/creativecenter/BR;->sidebar:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 138
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 136
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 112
    sget v0, Lcom/codemao/creativecenter/BR;->vm:I

    if-ne v0, p1, :cond_a

    .line 113
    check-cast p2, Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    goto :goto_13

    .line 115
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->sidebar:I

    if-ne v0, p1, :cond_15

    .line 116
    check-cast p2, Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBar;)V

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

    .line 125
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 129
    sget p1, Lcom/codemao/creativecenter/BR;->vm:I

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
