.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;
.super Ljava/lang/Object;
.source "EditListElementsActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter$ItemFocusListener;


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

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFocusListener(Landroid/view/View;Landroid/widget/EditText;IZ)V
    .registers 6

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "editText"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_4e

    .line 338
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 339
    :goto_1e
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    move-result-object p2

    if-nez p2, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    .line 340
    :goto_2a
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getKeyboardHeight$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)I

    move-result p2

    if-lez p2, :cond_3c

    .line 341
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$notifyToScrollRecyclerViewWhenFocusEdit(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    .line 342
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$showAddDeleteBtn(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)V

    :cond_3c
    if-eqz p1, :cond_6d

    .line 345
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    move-result-object p2

    if-eqz p2, :cond_6d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_6d

    .line 348
    :cond_4e
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->getCurrentFocusPosition()I

    move-result p1

    if-ne p1, p3, :cond_5e

    const/4 p2, 0x1

    :cond_5e
    if-eqz p2, :cond_6d

    .line 349
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initNumbersEditText$2;->this$0:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->access$getItemEditAdapter$p(Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;)Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;

    move-result-object p1

    if-nez p1, :cond_69

    goto :goto_6d

    :cond_69
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/activity/edit_list_elements/adapter/ItemEditAdapter;->setCurrentFocusPosition(I)V

    :cond_6d
    :goto_6d
    return-void
.end method
