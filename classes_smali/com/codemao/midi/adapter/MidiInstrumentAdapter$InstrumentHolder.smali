.class Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MidiInstrumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/adapter/MidiInstrumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstrumentHolder"
.end annotation


# instance fields
.field imageView:Lcom/airbnb/lottie/LottieAnimationView;

.field root:Landroid/view/View;

.field tvName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    sget v0, Lcom/codemao/midi/R$id;->root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->root:Landroid/view/View;

    .line 124
    sget v0, Lcom/codemao/midi/R$id;->tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->tvName:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/codemao/midi/R$id;->iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiInstrumentAdapter$InstrumentHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method
