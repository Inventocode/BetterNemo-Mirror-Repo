.class final Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;
.super Ljava/lang/Object;
.source "MidiPlayerActivity.kt"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $decorView:Landroid/view/View;

.field final synthetic $flag:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;->$decorView:Landroid/view/View;

    iput p2, p0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;->$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_b

    .line 126
    iget-object p1, p0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;->$decorView:Landroid/view/View;

    iget v0, p0, Lcom/codemao/midi/MidiPlayerActivity$onCreate$1;->$flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_b
    return-void
.end method
