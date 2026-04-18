.class public Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;
.super Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;
.source "CreativeLayoutMaterialRecorderBindingImpl.java"

# interfaces
.implements Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback65:Landroid/view/View$OnClickListener;

.field private final mCallback66:Landroid/view/View$OnClickListener;

.field private final mCallback67:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;

.field private final mboundView3:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_upload:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_upload:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_record:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_record:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_midi:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/codemao/creativecenter/R$id;->tv_midi:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .registers 6

    .line 45
    sget-object v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .registers 15

    const/16 v0, 0x8

    .line 48
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 239
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 56
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 58
    aget-object v1, p3, p1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 60
    aget-object v2, p3, v1

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 62
    aget-object p3, p3, v2

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 66
    new-instance p2, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p2, p0, v2}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback67:Landroid/view/View$OnClickListener;

    .line 67
    new-instance p2, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback65:Landroid/view/View$OnClickListener;

    .line 68
    new-instance p1, Lcom/codemao/creativecenter/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener;-><init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback66:Landroid/view/View$OnClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_2b

    .line 190
    :cond_b
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_10

    const/4 p2, 0x1

    :cond_10
    if-eqz p2, :cond_2b

    .line 198
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickMidi()V

    goto :goto_2b

    .line 224
    :cond_16
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    :cond_1b
    if-eqz p2, :cond_2b

    .line 232
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickRecorder()V

    goto :goto_2b

    .line 207
    :cond_21
    iget-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    if-eqz p1, :cond_26

    const/4 p2, 0x1

    :cond_26
    if-eqz p2, :cond_2b

    .line 215
    invoke-interface {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickUpload()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected executeBindings()V
    .registers 13

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 134
    iput-wide v2, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_86

    .line 137
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mIsPad:Ljava/lang/Boolean;

    const-wide/16 v5, 0x5

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_54

    .line 147
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v10, :cond_27

    if-eqz v4, :cond_21

    const-wide/16 v7, 0x10

    or-long/2addr v0, v7

    const-wide/16 v7, 0x40

    goto :goto_26

    :cond_21
    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    :goto_26
    or-long/2addr v0, v7

    .line 161
    :cond_27
    iget-object v7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v4, :cond_32

    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_8dp:I

    goto :goto_34

    :cond_32
    sget v8, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_4dp:I

    :goto_34
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move v9, v7

    if-eqz v4, :cond_44

    .line 163
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_60dp:I

    goto :goto_4c

    :cond_44
    iget-object v4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/codemao/creativecenter/R$dimen;->creative_dimen_48dp:I

    :goto_4c
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v11, v9

    move v9, v4

    move v4, v11

    goto :goto_55

    :cond_54
    const/4 v4, 0x0

    :goto_55
    and-long/2addr v5, v0

    cmp-long v7, v5, v2

    if-eqz v7, :cond_69

    .line 169
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-static {v5, v9}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    .line 170
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-static {v5, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginStart(Landroid/view/View;F)V

    .line 171
    iget-object v5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-static {v5, v4}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutMarginEnd(Landroid/view/View;F)V

    :cond_69
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_85

    .line 176
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback65:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback66:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mCallback67:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_85
    return-void

    :catchall_86
    move-exception v0

    .line 135
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public hasPendingBindings()Z
    .registers 6

    .line 82
    monitor-enter p0

    .line 83
    :try_start_1
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 75
    :try_start_3
    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

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

    const/4 p1, 0x0

    return p1
.end method

.method public setIsPad(Ljava/lang/Boolean;)V
    .registers 6

    .line 106
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mIsPad:Ljava/lang/Boolean;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 110
    sget p1, Lcom/codemao/creativecenter/BR;->isPad:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 109
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V
    .registers 6

    .line 114
    iput-object p1, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->mListener:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_3
    iget-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    .line 118
    sget p1, Lcom/codemao/creativecenter/BR;->listener:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_14
    move-exception p1

    .line 117
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .registers 4

    .line 93
    sget v0, Lcom/codemao/creativecenter/BR;->isPad:I

    if-ne v0, p1, :cond_a

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->setIsPad(Ljava/lang/Boolean;)V

    goto :goto_13

    .line 96
    :cond_a
    sget v0, Lcom/codemao/creativecenter/BR;->listener:I

    if-ne v0, p1, :cond_15

    .line 97
    check-cast p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBindingImpl;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    :goto_13
    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
