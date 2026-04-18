.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$3;
.super Ljava/lang/Object;
.source "EditListElementsActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initNumbersEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$3;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemKeyEventListener(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_e

    .line 360
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const/16 v0, 0x42

    if-ne p3, v0, :cond_e

    const/4 p3, 0x1

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    :goto_f
    if-eqz p3, :cond_25

    .line 361
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$3;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;

    move-result-object p2

    if-nez p2, :cond_1f

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1f
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityEditListElementsBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->performClick()Z

    return p1

    :cond_25
    return p2
.end method
