.class public final Lcom/codemao/midi/adapter/MidiPianoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MidiPianoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/midi/adapter/MidiPianoViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiPianoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiPianoAdapter.kt\ncom/codemao/midi/adapter/MidiPianoAdapter\n*L\n1#1,87:1\n*E\n"
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/adapter/PianoItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter;->data:Ljava/util/List;

    .line 21
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low1:I

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low2:I

    const/16 v3, 0x32

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low3:I

    const/16 v3, 0x34

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low4:I

    const/16 v3, 0x35

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low5:I

    const/16 v3, 0x37

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low6:I

    const/16 v3, 0x39

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_low7:I

    const/16 v3, 0x3b

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle1:I

    const/16 v3, 0x3c

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle2:I

    const/16 v3, 0x3e

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle3:I

    const/16 v3, 0x40

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle4:I

    const/16 v3, 0x41

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle5:I

    const/16 v3, 0x43

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle6:I

    const/16 v3, 0x45

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_middle7:I

    const/16 v3, 0x47

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high1:I

    const/16 v3, 0x48

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high2:I

    const/16 v3, 0x4a

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high3:I

    const/16 v3, 0x4c

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high4:I

    const/16 v3, 0x4d

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high5:I

    const/16 v3, 0x4f

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high6:I

    const/16 v3, 0x51

    invoke-direct {v1, v3, v2, v5, v5}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high7:I

    const/16 v3, 0x53

    invoke-direct {v1, v3, v2, v5, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/codemao/midi/adapter/PianoItem;

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_piano_high11:I

    const/16 v3, 0x54

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/codemao/midi/adapter/PianoItem;-><init>(IIZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getItemClickListener()Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter;->itemClickListener:Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 11
    check-cast p1, Lcom/codemao/midi/adapter/MidiPianoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiPianoAdapter;->onBindViewHolder(Lcom/codemao/midi/adapter/MidiPianoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/midi/adapter/MidiPianoViewHolder;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/midi/adapter/PianoItem;

    .line 73
    invoke-virtual {p1}, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/midi/adapter/PianoItem;->getImgRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {p1}, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->getLeftView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/midi/adapter/PianoItem;->getShowLeft()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    goto :goto_29

    :cond_27
    const/16 v1, 0x8

    :goto_29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lcom/codemao/midi/adapter/MidiPianoViewHolder;->getRightView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/midi/adapter/PianoItem;->getShowRight()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_39

    :cond_37
    const/16 v2, 0x8

    :goto_39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/adapter/MidiPianoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiPianoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/midi/adapter/MidiPianoViewHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 53
    sget-object v0, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v0}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Lcom/codemao/midi/R$layout;->midi_item_piano_pad:I

    goto :goto_1a

    :cond_18
    sget v0, Lcom/codemao/midi/R$layout;->midi_item_piano:I

    :goto_1a
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/codemao/midi/adapter/MidiPianoViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/codemao/midi/adapter/MidiPianoViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/midi/adapter/MidiPianoAdapter$onCreateViewHolder$1;-><init>(Lcom/codemao/midi/adapter/MidiPianoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public final setItemClickListener(Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/midi/adapter/MidiPianoAdapter;->itemClickListener:Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;

    return-void
.end method
