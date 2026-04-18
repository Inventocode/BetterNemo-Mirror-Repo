.class public Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectSoundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BottomHolder;,
        Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private isPad:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation
.end field

.field private martrialNames:Ljava/lang/String;

.field private musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

.field private seleteIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 67
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->isPad:Z

    .line 134
    new-instance v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    const-string v0, "layout_inflater"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 54
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->martrialNames:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getSounds()Ljava/util/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    .line 57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    if-eqz p1, :cond_56

    const/4 p1, 0x0

    .line 58
    :goto_36
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_56

    .line 59
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 60
    iput p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    goto :goto_56

    :cond_53
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    :cond_56
    :goto_56
    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Landroid/content/Context;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->isPad:Z

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->martrialNames:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->updateStatus(I)V

    return-void
.end method

.method private updateStatus(I)V
    .registers 3

    .line 296
    iget v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    if-ne p1, v0, :cond_5

    return-void

    .line 298
    :cond_5
    iput p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    const/4 p1, -0x1

    if-eq v0, p1, :cond_d

    .line 300
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 301
    :cond_d
    iget p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->seleteIndex:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getSounds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 41
    check-cast p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;I)V
    .registers 4

    .line 95
    instance-of v0, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    if-eqz v0, :cond_12

    .line 96
    check-cast p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mSounds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->bindData(Lcom/codemao/creativestore/bean/SoundVO;I)V

    goto :goto_25

    .line 98
    :cond_12
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;

    .line 99
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :goto_25
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_13

    .line 75
    new-instance p2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BottomHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_change_sound_footer:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BottomHolder;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;)V

    return-object p2

    .line 73
    :cond_13
    new-instance p2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_layout_material_sound_pop:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;)V

    return-object p2
.end method

.method public setCurrentIndex(I)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->updateStatus(I)V

    return-void
.end method

.method public stopMusic()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->musicPlayListener:Lcom/codemao/creativecenter/utils/Mp3PlayController;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->destroy()V

    return-void
.end method
