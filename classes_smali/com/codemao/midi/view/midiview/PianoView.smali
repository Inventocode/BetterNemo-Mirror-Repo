.class public final Lcom/codemao/midi/view/midiview/PianoView;
.super Landroid/widget/FrameLayout;
.source "PianoView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;
    }
.end annotation


# instance fields
.field private final emptyNoteView:Landroid/view/View;

.field private final isPad:Z

.field private onPianoItemClick:Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object p1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p1}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/PianoView;->isPad:Z

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    if-eqz p1, :cond_1d

    .line 40
    sget p1, Lcom/codemao/midi/R$layout;->midi_view_piano_pad:I

    goto :goto_1f

    :cond_1d
    sget p1, Lcom/codemao/midi/R$layout;->midi_view_piano:I

    .line 39
    :goto_1f
    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget p1, Lcom/codemao/midi/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const-string p2, "background"

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3f

    invoke-static {p2}, Lcom/codemao/midi/MidiPlayerActivityKt;->getPianoHeight(Landroid/content/Context;)I

    move-result p2

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    sget p1, Lcom/codemao/midi/R$id;->rv_piano:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.rv_piano)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    sget p2, Lcom/codemao/midi/R$id;->empty_note:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "findViewById(R.id.empty_note)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/codemao/midi/view/midiview/PianoView;->emptyNoteView:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/codemao/midi/adapter/MidiPianoAdapter;

    invoke-direct {v1}, Lcom/codemao/midi/adapter/MidiPianoAdapter;-><init>()V

    .line 48
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance v0, Lcom/codemao/midi/view/midiview/PianoView$1;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/midiview/PianoView$1;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 67
    new-instance v0, Lcom/codemao/midi/view/midiview/PianoView$2;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/midiview/PianoView$2;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {v1, v0}, Lcom/codemao/midi/adapter/MidiPianoAdapter;->setItemClickListener(Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;)V

    .line 73
    new-instance v0, Lcom/codemao/midi/view/midiview/PianoView$3;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/midiview/PianoView$3;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x5

    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 78
    new-instance p2, Lcom/codemao/midi/view/midiview/PianoView$4;

    invoke-direct {p2, v1}, Lcom/codemao/midi/view/midiview/PianoView$4;-><init>(Lcom/codemao/midi/adapter/MidiPianoAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object p1, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p1}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/PianoView;->isPad:Z

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    if-eqz p1, :cond_1d

    .line 40
    sget p1, Lcom/codemao/midi/R$layout;->midi_view_piano_pad:I

    goto :goto_1f

    :cond_1d
    sget p1, Lcom/codemao/midi/R$layout;->midi_view_piano:I

    .line 39
    :goto_1f
    invoke-virtual {p2, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget p1, Lcom/codemao/midi/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const-string p2, "background"

    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3f

    invoke-static {p2}, Lcom/codemao/midi/MidiPlayerActivityKt;->getPianoHeight(Landroid/content/Context;)I

    move-result p2

    goto :goto_40

    :cond_3f
    const/4 p2, 0x0

    :goto_40
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    sget p1, Lcom/codemao/midi/R$id;->rv_piano:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.rv_piano)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    sget p2, Lcom/codemao/midi/R$id;->empty_note:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(R.id.empty_note)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/codemao/midi/view/midiview/PianoView;->emptyNoteView:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/codemao/midi/adapter/MidiPianoAdapter;

    invoke-direct {v0}, Lcom/codemao/midi/adapter/MidiPianoAdapter;-><init>()V

    .line 48
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    new-instance p3, Lcom/codemao/midi/view/midiview/PianoView$1;

    invoke-direct {p3, p0}, Lcom/codemao/midi/view/midiview/PianoView$1;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 67
    new-instance p3, Lcom/codemao/midi/view/midiview/PianoView$2;

    invoke-direct {p3, p0}, Lcom/codemao/midi/view/midiview/PianoView$2;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {v0, p3}, Lcom/codemao/midi/adapter/MidiPianoAdapter;->setItemClickListener(Lcom/codemao/midi/adapter/MidiPianoAdapter$OnItemClickListener;)V

    .line 73
    new-instance p3, Lcom/codemao/midi/view/midiview/PianoView$3;

    invoke-direct {p3, p0}, Lcom/codemao/midi/view/midiview/PianoView$3;-><init>(Lcom/codemao/midi/view/midiview/PianoView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x5

    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 78
    new-instance p2, Lcom/codemao/midi/view/midiview/PianoView$4;

    invoke-direct {p2, v0}, Lcom/codemao/midi/view/midiview/PianoView$4;-><init>(Lcom/codemao/midi/adapter/MidiPianoAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic access$isPad$p(Lcom/codemao/midi/view/midiview/PianoView;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/codemao/midi/view/midiview/PianoView;->isPad:Z

    return p0
.end method


# virtual methods
.method public final getOnPianoItemClick()Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/PianoView;->onPianoItemClick:Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;

    return-object v0
.end method

.method public final setOnPianoItemClick(Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView;->onPianoItemClick:Lcom/codemao/midi/view/midiview/PianoView$OnPianoItemClick;

    return-void
.end method
