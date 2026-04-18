.class public final Lcom/codemao/midi/MidiPlayerActivity$initListener$9;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/midi/MidiPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiPlayerActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$9;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollListener(FF)V
    .registers 5

    .line 354
    iget-object p2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$9;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v0, Lcom/codemao/midi/R$id;->iv_start:I

    invoke-virtual {p2, v0}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v0, "iv_start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_18

    const/4 p2, 0x0

    :cond_18
    check-cast p2, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    if-nez p2, :cond_3d

    .line 356
    iget-object p2, p0, Lcom/codemao/midi/MidiPlayerActivity$initListener$9;->this$0:Lcom/codemao/midi/MidiPlayerActivity;

    sget v1, Lcom/codemao/midi/R$id;->iv_goto_first:I

    invoke-virtual {p2, v1}, Lcom/codemao/midi/MidiPlayerActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v1, "iv_goto_first"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3d
    return-void
.end method
