.class public Lcom/codemao/midi/adapter/MidiInstrumentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MidiInstrumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentPosition:I

.field private doAnimate:Z

.field private isInit:Z

.field private final isPad:Z

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/bean/MidiInstrumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lcom/codemao/midi/lisenter/RecyclerItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/midi/lisenter/RecyclerItemListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/midi/bean/MidiInstrumentInfo;",
            ">;",
            "Lcom/codemao/midi/lisenter/RecyclerItemListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->currentPosition:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->isInit:Z

    .line 36
    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->doAnimate:Z

    .line 49
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->isPad:Z

    .line 39
    iput-object p3, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->onItemClickListener:Lcom/codemao/midi/lisenter/RecyclerItemListener;

    .line 40
    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->mDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->doAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->onItemClickListener:Lcom/codemao/midi/lisenter/RecyclerItemListener;

    return-object p0
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->currentPosition:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 29
    check-cast p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->onBindViewHolder(Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;I)V
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/bean/MidiInstrumentInfo;

    .line 73
    iget-object v1, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getNameResourseId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget v1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->currentPosition:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_6a

    .line 75
    iget-boolean p2, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->isInit:Z

    const/4 v1, 0x0

    if-nez p2, :cond_42

    iget-boolean p2, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->doAnimate:Z

    if-eqz p2, :cond_42

    .line 76
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 77
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getAnimationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 78
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 79
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_57

    .line 81
    :cond_42
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 82
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 83
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getPreviewResId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 84
    iput-boolean v1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->isInit:Z

    .line 86
    :goto_57
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->root:Landroid/view/View;

    sget v0, Lcom/codemao/midi/R$drawable;->midi_bg_4_5d27a1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->tvName:Landroid/widget/TextView;

    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8f

    .line 90
    :cond_6a
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 91
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 92
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiInstrumentInfo;->getPreviewResId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 94
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->root:Landroid/view/View;

    sget v0, Lcom/codemao/midi/R$drawable;->midi_bg_4_665d27a1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->tvName:Landroid/widget/TextView;

    const-string v0, "#FF7D6DB0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :goto_8f
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$1;-><init>(Lcom/codemao/midi/adapter/MidiInstrumentAdapter;Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;
    .registers 5

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->isPad:Z

    if-eqz v0, :cond_f

    sget v0, Lcom/codemao/midi/R$layout;->midi_item_instrument_pad:I

    goto :goto_11

    :cond_f
    sget v0, Lcom/codemao/midi/R$layout;->midi_item_instrument:I

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;

    invoke-direct {p2, p1}, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->currentPosition:I

    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDoAnimate(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter;->doAnimate:Z

    return-void
.end method
