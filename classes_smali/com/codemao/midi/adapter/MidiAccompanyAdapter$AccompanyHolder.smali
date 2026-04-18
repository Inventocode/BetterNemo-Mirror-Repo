.class Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MidiAccompanyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/adapter/MidiAccompanyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccompanyHolder"
.end annotation


# instance fields
.field imageView:Lcom/airbnb/lottie/LottieAnimationView;

.field root:Landroid/view/View;

.field tvName:Landroid/widget/TextView;

.field viewNone:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 139
    sget v0, Lcom/codemao/midi/R$id;->root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->root:Landroid/view/View;

    .line 140
    sget v0, Lcom/codemao/midi/R$id;->tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->tvName:Landroid/widget/TextView;

    .line 141
    sget v0, Lcom/codemao/midi/R$id;->iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->imageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 142
    sget v0, Lcom/codemao/midi/R$id;->v_none:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiAccompanyAdapter$AccompanyHolder;->viewNone:Landroid/view/View;

    return-void
.end method
