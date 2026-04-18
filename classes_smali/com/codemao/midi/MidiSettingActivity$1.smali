.class Lcom/codemao/midi/MidiSettingActivity$1;
.super Ljava/lang/Object;
.source "MidiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/MidiSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/midi/MidiSettingActivity;Landroid/view/View;)V
    .registers 3

    .line 126
    iput-object p2, p0, Lcom/codemao/midi/MidiSettingActivity$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_b

    .line 130
    iget-object p1, p0, Lcom/codemao/midi/MidiSettingActivity$1;->val$decorView:Landroid/view/View;

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_b
    return-void
.end method
