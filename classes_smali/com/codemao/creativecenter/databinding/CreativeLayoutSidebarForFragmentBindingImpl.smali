.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;
.source "CreativeLayoutSidebarForFragmentBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback24:Landroid/view/View$OnClickListener;

.field private final mCallback25:Landroid/view/View$OnClickListener;

.field private final mCallback26:Landroid/view/View$OnClickListener;

.field private final mCallback27:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->topview:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->bottom:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/creativecenter/R$id;->sw:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 36
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 21

    move-object/from16 v12, p0

    const/4 v0, 0x6

    .line 39
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v13, 0x3

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v14, 0x4

    aget-object v0, p3, v14

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v15, 0x2

    aget-object v0, p3, v15

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v11, 0x1

    aget-object v0, p3, v11

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/codemao/creativecenter/customview/CmSwitchView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmSwitchView;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    .line 400
    iput-wide v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 49
    iget-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->flCurrentActor:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sideRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 54
    invoke-virtual {v12, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 56
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v14}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v15}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    .line 58
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {v0, v12, v13}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v12, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->invalidateAll()V

    return-void
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

    .line 133
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 134
    monitor-enter p0

    .line 135
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 136
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

    .line 124
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    if-ne p2, p1, :cond_12

    .line 125
    monitor-enter p0

    .line 126
    :try_start_5
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 127
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

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_36

    const/4 v1, 0x3

    if-eq p1, v1, :cond_22

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    goto :goto_54

    .line 301
    :cond_e
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_54

    .line 313
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_1c

    const/4 p2, 0x1

    :cond_1c
    if-eqz p2, :cond_54

    .line 319
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto :goto_54

    .line 357
    :cond_22
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_54

    .line 369
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_30

    const/4 p2, 0x1

    :cond_30
    if-eqz p2, :cond_54

    .line 375
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickHead()V

    goto :goto_54

    .line 329
    :cond_36
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    if-eqz p1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_54

    .line 341
    iget-object p1, p1, Lcom/codemao/creativecenter/vm/SidebarVM;->mCallback:Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;

    if-eqz p1, :cond_44

    const/4 p2, 0x1

    :cond_44
    if-eqz p2, :cond_54

    .line 347
    invoke-interface {p1}, Lcom/codemao/creativecenter/vm/SidebarVM$CallBack;->clickScreen()V

    goto :goto_54

    .line 385
    :cond_4a
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    if-eqz p1, :cond_4f

    const/4 p2, 0x1

    :cond_4f
    if-eqz p2, :cond_54

    .line 393
    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->clickRunOrStop()V

    :cond_54
    :goto_54
    return-void
.end method

.method protected executeBindings()V
    .registers 22

    move-object/from16 v1, p0

    .line 145
    monitor-enter p0

    .line 146
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 147
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 148
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_ed

    .line 154
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    const-wide/16 v6, 0x17

    and-long v8, v2, v6

    const-wide/16 v11, 0x16

    const-wide/16 v13, 0x100

    const/4 v10, 0x1

    const/4 v15, 0x0

    cmp-long v17, v8, v4

    if-eqz v17, :cond_72

    if-eqz v0, :cond_1f

    .line 170
    iget-object v8, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->isLandscapeMode:Landroidx/databinding/ObservableField;

    goto :goto_20

    :cond_1f
    const/4 v8, 0x0

    .line 172
    :goto_20
    invoke-virtual {v1, v15, v8}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_2c

    .line 177
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_2d

    :cond_2c
    const/4 v8, 0x0

    .line 182
    :goto_2d
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    xor-int/2addr v8, v10

    if-eqz v17, :cond_3c

    if-eqz v8, :cond_38

    or-long/2addr v2, v13

    goto :goto_3c

    :cond_38
    const-wide/16 v17, 0x80

    or-long v2, v2, v17

    :cond_3c
    :goto_3c
    and-long v17, v2, v11

    cmp-long v9, v17, v4

    if-eqz v9, :cond_73

    if-eqz v0, :cond_47

    .line 199
    iget-object v15, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    goto :goto_48

    :cond_47
    const/4 v15, 0x0

    .line 201
    :goto_48
    invoke-virtual {v1, v10, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_54

    .line 206
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    goto :goto_56

    :cond_54
    const/16 v16, 0x0

    .line 211
    :goto_56
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5f

    const/4 v11, 0x1

    goto :goto_60

    :cond_5f
    const/4 v11, 0x0

    :goto_60
    if-eqz v9, :cond_6b

    if-eqz v11, :cond_67

    const-wide/16 v19, 0x400

    goto :goto_69

    :cond_67
    const-wide/16 v19, 0x200

    :goto_69
    or-long v2, v2, v19

    :cond_6b
    if-eqz v11, :cond_70

    const/16 v9, 0x8

    goto :goto_77

    :cond_70
    const/4 v9, 0x0

    goto :goto_77

    :cond_72
    const/4 v8, 0x0

    :cond_73
    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_77
    and-long v11, v2, v13

    cmp-long v13, v11, v4

    if-eqz v13, :cond_95

    if-eqz v0, :cond_81

    .line 236
    iget-object v15, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    .line 238
    :cond_81
    invoke-virtual {v1, v10, v15}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_8e

    .line 243
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Integer;

    .line 248
    :cond_8e
    invoke-static/range {v16 .. v16}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_95

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    :goto_96
    and-long v11, v2, v6

    cmp-long v0, v11, v4

    if-eqz v0, :cond_b2

    if-eqz v8, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v10, 0x0

    :goto_a0
    if-eqz v0, :cond_aa

    if-eqz v10, :cond_a7

    const-wide/16 v11, 0x40

    goto :goto_a9

    :cond_a7
    const-wide/16 v11, 0x20

    :goto_a9
    or-long/2addr v2, v11

    :cond_aa
    if-eqz v10, :cond_ae

    const/4 v10, 0x0

    goto :goto_b0

    :cond_ae
    const/16 v10, 0x8

    :goto_b0
    move v15, v10

    goto :goto_b3

    :cond_b2
    const/4 v15, 0x0

    :goto_b3
    const-wide/16 v10, 0x10

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_d6

    .line 276
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->flCurrentActor:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivScreen:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d6
    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_e0

    .line 284
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e0
    const-wide/16 v6, 0x16

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_ec

    .line 289
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_ec
    return-void

    :catchall_ed
    move-exception v0

    .line 148
    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 75
    monitor-exit p0

    return v0

    .line 77
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

    .line 65
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 66
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 67
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 68
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 67
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 5

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_7
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->onChangeVmCurrentStatus(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 117
    :cond_e
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->onChangeVmIsLandscapeMode(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V
    .registers 6

    .line 105
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mSidebar:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 109
    sget p1, Lcom/codemao/creativecenter/BR;->sidebar:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 108
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 84
    sget v0, Lcom/codemao/creativecenter/BR;->vm:I

    if-ne v0, p1, :cond_a

    .line 85
    check-cast p2, Lcom/codemao/creativecenter/vm/SidebarVM;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V

    goto :goto_13

    .line 87
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->sidebar:I

    if-ne v0, p1, :cond_15

    .line 88
    check-cast p2, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V

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

    .line 97
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 101
    sget p1, Lcom/codemao/creativecenter/BR;->vm:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 100
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
