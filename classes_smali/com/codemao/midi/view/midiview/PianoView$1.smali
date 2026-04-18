.class public final Lcom/codemao/midi/view/midiview/PianoView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PianoView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/view/midiview/PianoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/view/midiview/PianoView;


# direct methods
.method constructor <init>(Lcom/codemao/midi/view/midiview/PianoView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/PianoView$1;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_47

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_43

    .line 61
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/PianoView$1;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3e

    iget-object p4, p0, Lcom/codemao/midi/view/midiview/PianoView$1;->this$0:Lcom/codemao/midi/view/midiview/PianoView;

    invoke-static {p4}, Lcom/codemao/midi/view/midiview/PianoView;->access$isPad$p(Lcom/codemao/midi/view/midiview/PianoView;)Z

    move-result p4

    if-eqz p4, :cond_36

    const/high16 p4, 0x40c00000  # 6.0f

    goto :goto_38

    :cond_36
    const/high16 p4, 0x3f800000  # 1.0f

    :goto_38
    invoke-static {p2, p4}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    goto :goto_3f

    :cond_3e
    const/4 p2, 0x0

    :goto_3f
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_46

    .line 63
    :cond_43
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_46
    return-void

    .line 59
    :cond_47
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
