.class public Lcom/codemao/midi/adapter/MidiAccompanyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MidiAccompanyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentPosition:I

.field private doAnimate:Z

.field private isInit:Z

.field private final isPad:Z

.field private mdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/bean/MidiAccompanyInfo;",
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
            "Lcom/codemao/midi/bean/MidiAccompanyInfo;",
            ">;",
            "Lcom/codemao/midi/lisenter/RecyclerItemListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->currentPosition:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->isInit:Z

    .line 35
    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->doAnimate:Z

    .line 48
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->isPad:Z

    .line 38
    iput-object p3, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->onItemClickListener:Lcom/codemao/midi/lisenter/RecyclerItemListener;

    .line 39
    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->mdatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->doAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;)Lcom/codemao/midi/lisenter/RecyclerItemListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->onItemClickListener:Lcom/codemao/midi/lisenter/RecyclerItemListener;

    return-object p0
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->currentPosition:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->onBindViewHolder(Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;I)V
    .registers 8

    .line 66
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/bean/MidiAccompanyInfo;

    .line 67
    iget-object v1, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getNameResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_36

    .line 70
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 72
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 73
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->viewNone:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    .line 75
    :cond_36
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->viewNone:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v4, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :goto_40
    iget v4, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->currentPosition:I

    if-ne p2, v4, :cond_a8

    .line 79
    iget-boolean p2, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->isInit:Z

    if-nez p2, :cond_80

    iget-boolean p2, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->doAnimate:Z

    if-eqz p2, :cond_80

    .line 80
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 81
    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getAnimationName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7a

    .line 82
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 83
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getAnimationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 84
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 85
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 86
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_95

    .line 89
    :cond_7a
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_95

    .line 92
    :cond_80
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 93
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 94
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getPreviewResId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 95
    iput-boolean v3, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->isInit:Z

    .line 97
    :goto_95
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->root:Landroid/view/View;

    sget v0, Lcom/codemao/midi/R$drawable;->midi_bg_4_5d27a1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->tvName:Landroid/widget/TextView;

    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_cd

    .line 101
    :cond_a8
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 102
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 103
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/codemao/midi/bean/MidiAccompanyInfo;->getPreviewResId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 104
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->root:Landroid/view/View;

    sget v0, Lcom/codemao/midi/R$drawable;->midi_bg_4_665d27a1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->tvName:Landroid/widget/TextView;

    const-string v0, "#FF7D6DB0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_cd
    iget-object p2, p1, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$1;-><init>(Lcom/codemao/midi/adapter/MidiAccompanyAdapter;Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;
    .registers 5

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->isPad:Z

    if-eqz v0, :cond_f

    sget v0, Lcom/codemao/midi/R$layout;->midi_item_accompany_pad:I

    goto :goto_11

    :cond_f
    sget v0, Lcom/codemao/midi/R$layout;->midi_item_accompany:I

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;

    invoke-direct {p2, p1}, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->currentPosition:I

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDoAnimate(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter;->doAnimate:Z

    return-void
.end method
