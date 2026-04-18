.class public final Lcom/codemao/midi/adapter/MidiPianoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MidiPianoAdapter.kt"


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final leftView:Landroid/view/View;

.field private final rightView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    sget v0, Lcom/codemao/midi/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.img)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/codemao/midi/R$id;->left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.left)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->leftView:Landroid/view/View;

    .line 84
    sget v0, Lcom/codemao/midi/R$id;->right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.right)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->rightView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLeftView()Landroid/view/View;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->leftView:Landroid/view/View;

    return-object v0
.end method

.method public final getRightView()Landroid/view/View;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->rightView:Landroid/view/View;

    return-object v0
.end method
