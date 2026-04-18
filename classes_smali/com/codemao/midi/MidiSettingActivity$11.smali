.class Lcom/codemao/midi/MidiSettingActivity$11;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MidiSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p56:I

.field final synthetic val$p8:I


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiSettingActivity;II)V
    .registers 4

    .line 365
    iput p2, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p56:I

    iput p3, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p8:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 369
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1a

    .line 371
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p56:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 372
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_31

    .line 373
    :cond_1a
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2b

    .line 374
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p56:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 375
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p8:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_31

    .line 377
    :cond_2b
    iget p2, p0, Lcom/codemao/midi/MidiSettingActivity$11;->val$p8:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 378
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :goto_31
    return-void
.end method
