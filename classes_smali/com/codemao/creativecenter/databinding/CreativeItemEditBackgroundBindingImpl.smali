.class public Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;
.source "CreativeItemEditBackgroundBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback80:Landroid/view/View$OnClickListener;

.field private final mCallback81:Landroid/view/View$OnClickListener;

.field private final mCallback82:Landroid/view/View$OnClickListener;

.field private final mCallback83:Landroid/view/View$OnClickListener;

.field private final mCallback84:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->move_view_bg:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->group2:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 37
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 25

    move-object/from16 v15, p0

    const/4 v0, 0x0

    .line 40
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v14, 0x5

    aget-object v0, p3, v14

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v13, 0x4

    aget-object v0, p3, v13

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ProgressBar;

    const/4 v12, 0x2

    aget-object v0, p3, v12

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v11, 0x1

    aget-object v0, p3, v11

    move-object/from16 v16, v0

    check-cast v16, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/View;

    const/4 v3, 0x3

    aget-object v0, p3, v3

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 588
    iput-wide v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 53
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 62
    invoke-virtual {v15, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 64
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback82:Landroid/view/View$OnClickListener;

    .line 65
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback83:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback84:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback80:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v15, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback81:Landroid/view/View$OnClickListener;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z
    .registers 6

    .line 143
    sget p1, Lcom/codemao/creativecenter/BR;->_all:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_12

    .line 144
    monitor-enter p0

    .line 145
    :try_start_6
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 146
    monitor-exit p0

    return v0

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p1

    .line 149
    :cond_12
    sget p1, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, p1, :cond_23

    .line 150
    monitor-enter p0

    .line 151
    :try_start_17
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 152
    monitor-exit p0

    return v0

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p1

    .line 155
    :cond_23
    sget p1, Lcom/codemao/creativecenter/BR;->name:I

    if-ne p2, p1, :cond_34

    .line 156
    monitor-enter p0

    .line 157
    :try_start_28
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 158
    monitor-exit p0

    return v0

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw p1

    .line 161
    :cond_34
    sget p1, Lcom/codemao/creativecenter/BR;->editStatus:I

    if-ne p2, p1, :cond_45

    .line 162
    monitor-enter p0

    .line 163
    :try_start_39
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0

    return v0

    :catchall_42
    move-exception p1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw p1

    .line 167
    :cond_45
    sget p1, Lcom/codemao/creativecenter/BR;->uploading:I

    if-ne p2, p1, :cond_56

    .line 168
    monitor-enter p0

    .line 169
    :try_start_4a
    iget-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 170
    monitor-exit p0

    return v0

    :catchall_53
    move-exception p1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw p1

    :cond_56
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_46

    const/4 v1, 0x2

    if-eq p1, v1, :cond_39

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x5

    if-eq p1, v1, :cond_11

    goto :goto_52

    .line 527
    :cond_11
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 529
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_52

    .line 541
    invoke-interface {v1, p1, p2}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDisplay(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_52

    .line 507
    :cond_1f
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 509
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_26

    const/4 p2, 0x1

    :cond_26
    if-eqz p2, :cond_52

    .line 520
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickCollect(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_52

    .line 487
    :cond_2c
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 489
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_33

    const/4 p2, 0x1

    :cond_33
    if-eqz p2, :cond_52

    .line 500
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickDel(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_52

    .line 568
    :cond_39
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 570
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_40

    const/4 p2, 0x1

    :cond_40
    if-eqz p2, :cond_52

    .line 581
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickMore(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_52

    .line 548
    :cond_46
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 550
    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v1, :cond_4d

    const/4 p2, 0x1

    :cond_4d
    if-eqz p2, :cond_52

    .line 561
    invoke-interface {v1, p1}, Lcom/codemao/creativecenter/callback/ObserverAction;->clickActorStyle(Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_52
    :goto_52
    return-void
.end method

.method protected executeBindings()V
    .registers 51

    move-object/from16 v1, p0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_3
    iget-wide v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 181
    iput-wide v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 182
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_412

    .line 185
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mIsLogin:Ljava/lang/Boolean;

    .line 192
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 194
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    const/4 v8, 0x0

    const-wide/16 v9, 0xe3

    and-long v11, v2, v9

    const-wide/16 v13, 0x400

    cmp-long v16, v11, v4

    if-eqz v16, :cond_2b

    .line 217
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v16, :cond_2c

    if-eqz v0, :cond_29

    const-wide/16 v11, 0x800

    or-long/2addr v2, v11

    goto :goto_2c

    :cond_29
    or-long/2addr v2, v13

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :cond_2c
    :goto_2c
    const-wide/16 v11, 0xf9

    and-long/2addr v11, v2

    const-wide/16 v16, 0x1000

    const-wide/16 v18, 0xa1

    const-wide/16 v20, 0x91

    const-wide/16 v22, 0x89

    const/16 v24, 0x8

    const-wide/16 v25, 0x4e1

    const-wide/16 v27, 0x2000

    const-wide/16 v29, 0xe1

    cmp-long v31, v11, v4

    if-eqz v31, :cond_9c

    and-long v11, v2, v29

    cmp-long v31, v11, v4

    if-eqz v31, :cond_67

    if-eqz v6, :cond_50

    .line 238
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus()Z

    move-result v11

    goto :goto_51

    :cond_50
    const/4 v11, 0x0

    :goto_51
    and-long v31, v2, v25

    cmp-long v12, v31, v4

    if-eqz v12, :cond_5e

    if-eqz v11, :cond_5c

    or-long v2, v2, v27

    goto :goto_5e

    :cond_5c
    or-long v2, v2, v16

    :cond_5e
    :goto_5e
    and-long v31, v2, v18

    cmp-long v12, v31, v4

    if-eqz v12, :cond_68

    xor-int/lit8 v12, v11, 0x1

    goto :goto_69

    :cond_67
    const/4 v11, 0x0

    :cond_68
    const/4 v12, 0x0

    :goto_69
    and-long v31, v2, v22

    cmp-long v33, v31, v4

    if-eqz v33, :cond_8b

    if-eqz v6, :cond_76

    .line 259
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isSelected()Z

    move-result v31

    goto :goto_78

    :cond_76
    const/16 v31, 0x0

    :goto_78
    if-eqz v33, :cond_85

    if-eqz v31, :cond_80

    const-wide/32 v32, 0x200000

    goto :goto_83

    :cond_80
    const-wide/32 v32, 0x100000

    :goto_83
    or-long v2, v2, v32

    :cond_85
    if-eqz v31, :cond_88

    goto :goto_8b

    :cond_88
    const/16 v31, 0x8

    goto :goto_8d

    :cond_8b
    :goto_8b
    const/16 v31, 0x0

    :goto_8d
    and-long v32, v2, v20

    cmp-long v34, v32, v4

    if-eqz v34, :cond_99

    if-eqz v6, :cond_99

    .line 278
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_99
    move/from16 v15, v31

    goto :goto_9f

    :cond_9c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_9f
    const-wide/16 v32, 0x84

    and-long v34, v2, v32

    const/16 v36, 0x0

    cmp-long v37, v34, v4

    if-eqz v37, :cond_26d

    if-eqz v7, :cond_b0

    .line 288
    invoke-interface {v7}, Lcom/codemao/creativecenter/callback/ObserverAction;->isPad()Z

    move-result v7

    goto :goto_b1

    :cond_b0
    const/4 v7, 0x0

    :goto_b1
    if-eqz v37, :cond_13b

    if-eqz v7, :cond_f9

    const-wide/16 v34, 0x200

    or-long v2, v2, v34

    const-wide/32 v34, 0x8000

    or-long v2, v2, v34

    const-wide/32 v34, 0x20000

    or-long v2, v2, v34

    const-wide/32 v34, 0x800000

    or-long v2, v2, v34

    const-wide/32 v34, 0x2000000

    or-long v2, v2, v34

    const-wide/32 v34, 0x8000000

    or-long v2, v2, v34

    const-wide/32 v34, 0x20000000

    or-long v2, v2, v34

    const-wide v34, 0x80000000L

    or-long v2, v2, v34

    const-wide v34, 0x200000000L

    or-long v2, v2, v34

    const-wide v34, 0x800000000L

    or-long v2, v2, v34

    const-wide v34, 0x2000000000L

    or-long v2, v2, v34

    const-wide v34, 0x20000000000L

    goto :goto_139

    :cond_f9
    const-wide/16 v34, 0x100

    or-long v2, v2, v34

    const-wide/16 v34, 0x4000

    or-long v2, v2, v34

    const-wide/32 v34, 0x10000

    or-long v2, v2, v34

    const-wide/32 v34, 0x400000

    or-long v2, v2, v34

    const-wide/32 v34, 0x1000000

    or-long v2, v2, v34

    const-wide/32 v34, 0x4000000

    or-long v2, v2, v34

    const-wide/32 v34, 0x10000000

    or-long v2, v2, v34

    const-wide/32 v34, 0x40000000

    or-long v2, v2, v34

    const-wide v34, 0x100000000L

    or-long v2, v2, v34

    const-wide v34, 0x400000000L

    or-long v2, v2, v34

    const-wide v34, 0x1000000000L

    or-long v2, v2, v34

    const-wide v34, 0x10000000000L

    :goto_139
    or-long v2, v2, v34

    .line 323
    :cond_13b
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v7, :cond_146

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    goto :goto_148

    :cond_146
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    :goto_148
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    move/from16 v36, v9

    .line 325
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v7, :cond_159

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    goto :goto_15b

    :cond_159
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    :goto_15b
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    if-eqz v7, :cond_16e

    .line 327
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v4, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_76dp:I

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_17a

    :cond_16e
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_73dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 329
    :goto_17a
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v7, :cond_185

    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    goto :goto_187

    :cond_185
    sget v10, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_14dp:I

    :goto_187
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 331
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v7, :cond_196

    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_56dp:I

    goto :goto_198

    :cond_196
    sget v13, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_44dp:I

    :goto_198
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 333
    iget-object v13, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    if-eqz v7, :cond_1a7

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    goto :goto_1a9

    :cond_1a7
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    :goto_1a9
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    if-eqz v7, :cond_1be

    .line 335
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-wide/from16 v41, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_10dp:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1cc

    :cond_1be
    move-wide/from16 v41, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_7dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 337
    :goto_1cc
    iget-object v3, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v7, :cond_1d7

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    goto :goto_1d9

    :cond_1d7
    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    :goto_1d9
    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    if-eqz v7, :cond_1ee

    .line 339
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v43, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_72dp:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_1fc

    :cond_1ee
    move/from16 v43, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_65dp:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1fc
    if-eqz v7, :cond_20d

    .line 341
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v44, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_16dp:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_21b

    :cond_20d
    move/from16 v44, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_12dp:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_21b
    if-eqz v7, :cond_22c

    .line 343
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v45, v2

    sget v2, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_23a

    :cond_22c
    move/from16 v45, v2

    iget-object v2, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_23a
    if-eqz v7, :cond_245

    .line 345
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_36dp:I

    goto :goto_24d

    :cond_245
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v14, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_28dp:I

    :goto_24d
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move/from16 v14, v43

    const-wide/16 v39, 0x400

    move/from16 v43, v12

    move v12, v2

    move/from16 v49, v11

    move v11, v3

    move-wide/from16 v2, v41

    move-object/from16 v41, v8

    move/from16 v42, v15

    move/from16 v8, v44

    move/from16 v15, v45

    move/from16 v44, v5

    move v5, v4

    move/from16 v4, v36

    move/from16 v36, v49

    goto :goto_284

    :cond_26d
    move-object/from16 v41, v8

    move/from16 v36, v11

    move/from16 v43, v12

    move-wide/from16 v39, v13

    move/from16 v42, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v44, 0x0

    :goto_284
    and-long v45, v2, v39

    const-wide/16 v37, 0x0

    cmp-long v47, v45, v37

    if-eqz v47, :cond_29f

    if-eqz v6, :cond_292

    .line 355
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus()Z

    move-result v36

    :cond_292
    and-long v45, v2, v25

    cmp-long v47, v45, v37

    if-eqz v47, :cond_29f

    if-eqz v36, :cond_29d

    or-long v2, v2, v27

    goto :goto_29f

    :cond_29d
    or-long v2, v2, v16

    :cond_29f
    :goto_29f
    move/from16 v16, v5

    move/from16 v5, v36

    and-long v27, v2, v27

    cmp-long v17, v27, v37

    if-eqz v17, :cond_2b0

    if-eqz v6, :cond_2b0

    .line 372
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v17

    goto :goto_2b2

    :cond_2b0
    const/16 v17, 0x0

    :goto_2b2
    and-long v25, v2, v25

    cmp-long v27, v25, v37

    if-eqz v27, :cond_30c

    if-eqz v5, :cond_2bb

    goto :goto_2bd

    :cond_2bb
    const/16 v17, 0x0

    :goto_2bd
    and-long v25, v2, v29

    cmp-long v27, v25, v37

    if-eqz v27, :cond_2ce

    if-eqz v17, :cond_2c9

    const-wide/32 v25, 0x80000

    goto :goto_2cc

    :cond_2c9
    const-wide/32 v25, 0x40000

    :goto_2cc
    or-long v2, v2, v25

    :cond_2ce
    const-wide/16 v25, 0x400

    and-long v27, v2, v25

    cmp-long v25, v27, v37

    if-eqz v25, :cond_2e5

    if-eqz v17, :cond_2de

    const-wide v25, 0x8000000000L

    goto :goto_2e3

    :cond_2de
    const-wide v25, 0x4000000000L

    :goto_2e3
    or-long v2, v2, v25

    :cond_2e5
    and-long v25, v2, v29

    cmp-long v27, v25, v37

    if-eqz v27, :cond_2f1

    if-eqz v17, :cond_2ee

    goto :goto_2f1

    :cond_2ee
    const/16 v25, 0x8

    goto :goto_2f3

    :cond_2f1
    :goto_2f1
    const/16 v25, 0x0

    :goto_2f3
    const-wide/16 v26, 0x400

    and-long v26, v2, v26

    cmp-long v28, v26, v37

    if-eqz v28, :cond_305

    if-eqz v17, :cond_300

    const/16 v17, 0x4

    goto :goto_302

    :cond_300
    const/16 v17, 0x0

    :goto_302
    move/from16 v48, v25

    goto :goto_309

    :cond_305
    move/from16 v48, v25

    const/16 v17, 0x0

    :goto_309
    const-wide/16 v25, 0xe3

    goto :goto_312

    :cond_30c
    const/16 v17, 0x0

    const-wide/16 v25, 0xe3

    const/16 v48, 0x0

    :goto_312
    and-long v25, v2, v25

    cmp-long v27, v25, v37

    if-eqz v27, :cond_31f

    if-eqz v0, :cond_31c

    const/16 v17, 0x8

    :cond_31c
    move/from16 v0, v17

    goto :goto_320

    :cond_31f
    const/4 v0, 0x0

    :goto_320
    and-long v24, v2, v32

    cmp-long v17, v24, v37

    if-eqz v17, :cond_387

    move/from16 v17, v5

    .line 418
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v5, v8}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 419
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v5, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 420
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v5, v13}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 421
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v5, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 422
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v5, v11}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 423
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v5, v15}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 424
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 425
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    .line 426
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 427
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-static {v4, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 428
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-static {v4, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 429
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v4, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 430
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v4, v14}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 431
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v4, v10}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 432
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-static {v4, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 433
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-static {v4, v12}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutWitdh(Landroid/view/View;F)V

    .line 434
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    move/from16 v5, v16

    invoke-static {v4, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 435
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    move/from16 v5, v44

    invoke-static {v4, v5}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setTextSize(Landroid/widget/TextView;F)V

    goto :goto_389

    :cond_387
    move/from16 v17, v5

    :goto_389
    const-wide/16 v4, 0x81

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_3ab

    .line 440
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v4, v6}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 441
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 442
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindSelect(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 443
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindDisplay(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 444
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_3ab
    if-eqz v27, :cond_3b2

    .line 449
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3b2
    and-long v4, v2, v18

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3d3

    .line 454
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback83:Landroid/view/View$OnClickListener;

    move/from16 v5, v17

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 455
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback82:Landroid/view/View$OnClickListener;

    invoke-static {v0, v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 456
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback84:Landroid/view/View$OnClickListener;

    move/from16 v12, v43

    invoke-static {v0, v4, v12}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_3d3
    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3ea

    .line 461
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback81:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mCallback80:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3ea
    and-long v4, v2, v29

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3f7

    .line 467
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    move/from16 v4, v48

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3f7
    and-long v4, v2, v22

    cmp-long v0, v4, v6

    if-eqz v0, :cond_404

    .line 472
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    move/from16 v15, v42

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_404
    and-long v2, v2, v20

    cmp-long v0, v2, v6

    if-eqz v0, :cond_411

    .line 477
    iget-object v0, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v8, v41

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_411
    return-void

    :catchall_412
    move-exception v0

    .line 182
    :try_start_413
    monitor-exit p0
    :try_end_414
    .catchall {:try_start_413 .. :try_end_414} :catchall_412

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    .line 84
    monitor-exit p0

    return v0

    .line 86
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

    .line 74
    monitor-enter p0

    const-wide/16 v0, 0x80

    .line 75
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 76
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 77
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_a
    move-exception v0

    .line 76
    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .registers 4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_4
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, p2, p3}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->onChangeActor(Lcom/codemao/creativestore/bean/ActorVO;I)Z

    move-result p1

    return p1
.end method

.method public setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 6

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 118
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_7
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 122
    sget p1, Lcom/codemao/creativecenter/BR;->actor:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 123
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_18
    move-exception p1

    .line 121
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setIsLogin(Ljava/lang/Boolean;)V
    .registers 6

    .line 109
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mIsLogin:Ljava/lang/Boolean;

    .line 110
    monitor-enter p0

    .line 111
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 112
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 113
    sget p1, Lcom/codemao/creativecenter/BR;->isLogin:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 114
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 112
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
    .registers 6

    .line 126
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 130
    sget p1, Lcom/codemao/creativecenter/BR;->observer:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 131
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 129
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 93
    sget v0, Lcom/codemao/creativecenter/BR;->isLogin:I

    if-ne v0, p1, :cond_a

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->setIsLogin(Ljava/lang/Boolean;)V

    goto :goto_1d

    .line 96
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->actor:I

    if-ne v0, p1, :cond_14

    .line 97
    check-cast p2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_1d

    .line 99
    :cond_14
    sget v0, Lcom/codemao/creativecenter/BR;->observer:I

    if-ne v0, p1, :cond_1f

    .line 100
    check-cast p2, Lcom/codemao/creativecenter/callback/ObserverAction;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBindingImpl;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    :goto_1d
    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1
.end method
